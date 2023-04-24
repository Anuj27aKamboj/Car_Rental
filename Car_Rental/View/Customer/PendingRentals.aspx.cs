using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental.View.Customer
{
    public partial class PendingRentals : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
        
        private void ShowCars()
        {
            string Query = "Select * from RentTb1 where customer ='" + Login.CustId + "' ";
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();
        }
    }
}