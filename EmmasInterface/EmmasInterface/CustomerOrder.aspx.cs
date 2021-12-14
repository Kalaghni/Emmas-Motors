using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasInterface
{
    public partial class CustomerOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Class1.customerIndex != -1)
                lblTitle.Text = "Details: " + Class1.customerValue;

            dvCustomerDetails.PageIndex = Class1.customerIndex;
        }
    }
}