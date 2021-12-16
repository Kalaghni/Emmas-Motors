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
            if (User.Identity.IsAuthenticated)
            {

                pntest.Visible = true;
            }
            else
                Response.Redirect("~/Login.aspx");
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
            //Commented it out because was giving errors - ZachB
            /*Class1.customerIndex = int.Parse(gvCustomer.SelectedRow.Cells[1].Text) - 1;
            Class1.customerValue = gvCustomer.SelectedRow.Cells[2].Text + " "
                                 + gvCustomer.SelectedRow.Cells[3].Text;
            Response.Redirect("CustomerOrder.aspx");*/
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