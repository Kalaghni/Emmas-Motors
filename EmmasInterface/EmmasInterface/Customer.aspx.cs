using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasInterface
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnCreate_Click(object sender, EventArgs e)
        {
            gvCustomer.Visible = false;
            dvCustomer.Visible = true;
        }

        protected void dvCustomer_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            gvCustomer.Visible = true;
            dvCustomer.Visible = false;
        }

        protected void gvCustomer_SelectedIndexChanged(object sender, EventArgs e)
        {
            Class1.customerIndex = int.Parse(gvCustomer.SelectedRow.Cells[1].Text) - 1;
            Class1.customerValue = gvCustomer.SelectedRow.Cells[2].Text + " "
                                 + gvCustomer.SelectedRow.Cells[3].Text;
            Response.Redirect("CustomerOrder.aspx");
        }
    }
}