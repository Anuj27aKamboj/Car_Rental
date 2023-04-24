using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental.View.Customer
{
    public partial class Cars : System.Web.UI.Page
    {
        //Customer Module
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
            CustName.InnerText = Login.CName;
            Customer = Login.CustId;
        }
        string LNumber, RentDate, RetDate;
        int DPrice, Customer;

        private void UpdateCar()
        {
            try
            {
                string Status = "Booked";
                string Query = "update CarTb1 set Status = '{0}' where CplateNum = '{1}'";
                Query = String.Format(Query,Status, CarList.SelectedRow.Cells[4].Text);
                Conn.SetData(Query);
                ShowCars();

            }
            catch (Exception Ex)
            {
                InfoMsg.InnerText = Ex.Message;
            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        private void ShowCars()
        {
            string St = "Available";
            string Query = "Select * from CarTb1 where Status ='"+St+"' ";
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();
        }

        protected void BookBtn_Click(object sender, EventArgs e)
        {

            TimeSpan DDays = Convert.ToDateTime(ReturnDate.Value) - System.DateTime.Today.Date;
            int Days = DDays.Days;
            int DPrice;
            DPrice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);
            int Fees = DPrice * Days;
            try
            {
                if (CarList.SelectedRow.Cells[1].Text == "")
                {
                    InfoMsg.InnerText = "Missing Information";
                }
                else
                {
                    string Query = "insert into RentTb1 values('{0}',{1},'{2}','{3}',{4})";
                    Query = String.Format(Query, CarList.SelectedRow.Cells[1].Text, Login.CustId, System.DateTime.Today.Date.ToString(), ReturnDate.Value, Fees);
                    Conn.SetData(Query);
                    UpdateCar();
                    ShowCars();
                    InfoMsg.InnerText = "Car Rented";
                }

            }
            catch (Exception Ex)
            {
                InfoMsg.InnerText = Ex.Message;
            }
        }
        
        protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LNumber = CarList.SelectedRow.Cells[1].Text;
            RentDate = System.DateTime.Today.Date.ToString();
            RetDate = ReturnDate.Value;
            DPrice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);
        }
    }
}