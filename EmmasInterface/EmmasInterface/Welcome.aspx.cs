using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasInterface.Login_Pages
{
    public partial class Welcome : System.Web.UI.Page
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

        

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }

        protected void btnSale_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SalesOption.aspx");
        }

        protected void btnInvoice_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Invoice.aspx");
        }

        protected void btnEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Employee.aspx");
        }

        protected void btnCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer.aspx");
        }
        protected void btnProdLookup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Product.aspx");
        }
    }
}