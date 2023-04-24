using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental.View.Admin
{
    public partial class Rents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowRents();
        }

        Models.Functions Conn;
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        private void ReturnCar()
        {
            try
            {
                string Query = "Delete from RentTb1 where RentId={0}";
                Query = String.Format(Query, RentList.SelectedRow.Cells[1].Text);
                Conn.SetData(Query);

            }
            catch (Exception Ex)
            {
                InfoMsg.InnerText = Ex.Message;
            }
        }
    

        private void ShowRents()
        {
            string Query = "Select * from RentTb1";
            RentList.DataSource = Conn.GetData(Query);
            RentList.DataBind();
        }
        string LicensePlate;
        protected void RentList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LicensePlate = RentList.SelectedRow.Cells[1].Text;
        }

        private void UpdateCar()
        {
            try
            {
                string Status = "Available";
                string Query = "update CarTb1 set Status = '{0}' where CPlateNumber = '{1}'";
                Query = String.Format(Query, Status, RentList.SelectedRow.Cells[2].Text);
                Conn.SetData(Query);
                ShowRents();

            }
            catch (Exception Ex)
            {
                InfoMsg.InnerText = Ex.Message;
            }
        } 

        protected void ReturnBtn_Click(object sender, EventArgs e)
        {
            try
            { 
                if (RentList.SelectedRow.Cells[1].Text == "")
                {
                    InfoMsg.InnerText = "Select a Rent";
                }
                else
                {
                    string Query = "insert into ReturnTb1 values('{0}',{1},'{2}',{3},{4})";
                    Query = String.Format(Query, RentList.SelectedRow.Cells[2].Text, RentList.SelectedRow.Cells[3].Text, System.DateTime.Today.Date.ToString(), DelayTb.Value, FineTb.Value);
                    Conn.SetData(Query);
                    UpdateCar();
                    ReturnCar();
                    ShowRents();
                    InfoMsg.InnerText = "Car Returned";
                }

            }
            catch (Exception Ex)
            {
                InfoMsg.InnerText = Ex.Message;
            }
        }
    }
}