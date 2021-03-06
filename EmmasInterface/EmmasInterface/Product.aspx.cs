using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasInterface
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //
            if (!IsPostBack)
            {
                ProductCrudPanel.Visible = false;
            }
            //
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //Productlb.Items.Add(productSearch.Text);
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

        protected void txtOrderNumber_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Inventoryfv_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void SelectButton_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            ProductCrudPanel.Visible = true;
        }

        protected void Productlb_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label6.Text = "Products on order:";
            Label7.Text = "Order Line:";
            /*
            int rowCount = OnOrdergv.Rows.Count;

            if (rowCount == 0)
            {
                orderLabel.Visible = true;
            }
            else
            {
                orderLabel.Visible = false;
            }

            if (OrderLinegv.Rows.Count == 0)
            {
                orderLineLabel.Visible = true;
            }
            else
            {
                orderLineLabel.Visible = false;
            }*/

        }

        protected void BackProd_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            ProductCrudPanel.Visible = false;
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }

}