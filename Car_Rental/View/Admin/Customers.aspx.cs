using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCustomers();
        }

        private void ShowCustomers()
        {
            string Query = "Select * from CustomerTb1";
            CustomerList.DataSource = Conn.GetData(Query);
            CustomerList.DataBind();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "" || AddTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustNameTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;
                    string CustPass = PasswordTb.Value;
                    string Query = "insert into CustomerTb1 values('{0}','{1}','{2}','{3}')";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPass);
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Customer Added";
                }

            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void CustomerList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CustNameTb.Value = CustomerList.SelectedRow.Cells[2].Text;
            AddTb.Value = CustomerList.SelectedRow.Cells[3].Text;
            PhoneTb.Value = CustomerList.SelectedRow.Cells[4].Text;
            PasswordTb.Value = CustomerList.SelectedRow.Cells[5].Text;
            if (CustNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(CustomerList.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    Key = Convert.ToInt32(CustomerList.SelectedRow.Cells[1].Text);
                    string Query = "Delete from CustomerTb1 where CustId={0}";
                    Query = String.Format(Query, Key);
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Customer Deleted";
                }

            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "" || AddTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustNameTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;
                    string CustPass = PasswordTb.Value;
                    string Query = "update CustomerTb1 set CustName = '{0}', CustAdd = '{1}', CustPhone = '{2}', CustPassword = '{3}' where CustId = {4}";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPass, Convert.ToInt32(CustomerList.SelectedRow.Cells[1].Text));
                    Conn.SetData(Query);
                    ErrorMsg.InnerText = "Customer Edited";
                    ShowCustomers();
                }

            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }
    }
}