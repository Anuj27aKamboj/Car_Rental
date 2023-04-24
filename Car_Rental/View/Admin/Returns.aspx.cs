using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental.View.Admin
{
    public partial class Returns : System.Web.UI.Page
    {

        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowReturn();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        private void ShowReturn()
        {
            string Query = "Select * from ReturnTb1";
            ReturnList.DataSource = Conn.GetData(Query);
            ReturnList.DataBind();
        }
    }
}