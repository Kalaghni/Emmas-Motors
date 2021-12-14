using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasInterface
{
    public partial class Sales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                
                pntest.Visible = true;
            }
            else
                Response.Redirect("~/Login.aspx");
        }

        protected void btnSale_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sales.aspx");
        }

        protected void btnInvoice_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Invoice.aspx");
        }

        protected void btnEmployee_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/Invoice.aspx");
        }
    }
}