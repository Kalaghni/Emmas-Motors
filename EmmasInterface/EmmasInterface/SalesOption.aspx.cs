using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasInterface
{
    public partial class SalesOption : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {

            }
            
            else
                Response.Redirect("~/Login.aspx");
        }

        protected void btnNewCust_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer.aspx");
        }

        protected void btnExistingCust_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sales.aspx");
        }
    }
}