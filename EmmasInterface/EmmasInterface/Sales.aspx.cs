using EmmasLibrary;
using EmmasLibrary.CustomerDataSetTableAdapters;
using EmmasLibrary.EmmasDataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasInterface
{
    /* Zachary Babin
     * Last Edit: 12/16/2021
     * Design by Zachary Babin and Zac Gordon
     */
    public partial class Sales : System.Web.UI.Page
    {
        static EmmasDataSet dsEmma = new EmmasDataSet();
        //static CustomerDataSet dsCustomer = new CustomerDataSet();

        static customerLookupTableAdapter taCustomer = new customerLookupTableAdapter();
        static SaleItemTableAdapter taSaleItem = new SaleItemTableAdapter();

        private decimal subTotal;
        private decimal tax;
        private decimal total;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (User.Identity.IsAuthenticated)
            {
                if (!this.IsPostBack)
                {
                    /*subTotal = 0M;
                    tax = 0M;
                    total = 0M;*/

                }
                pntest.Visible = true;
            }
            else
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

        protected void SearchCust(object sender, EventArgs e)
        {
            lbCustNames.Items.Add(txtSearchCust.Text);
        }

        protected void FillCustomerInformation(object sender, EventArgs e)
        {
            
            try
            {
                var fullName = lbCustNames.SelectedValue;
                var firstName = Regex.Replace(fullName.Split()[0], @"[^0-9a-zA-Z\ ]+", "");
                var customer = taCustomer.GetData(firstName);
                txtFirstName.Text = fullName;
                txtLastName.Text = firstName;
                if (customer.Count > 0)
                {
                    txtFirstName.Text = customer[0].custFirst;
                    txtLastName.Text = customer[0].custLast;
                    txtPhoneNumber.Text = customer[0].custPhone;
                }
                else
                {
                    //txtFirstName.Text = "Error Loading Customer";
                }
            }
            catch
            {

            }
        }

        protected void AddToOrder(object sender, EventArgs e)
        {
            var ItemToAdd = taSaleItem.GetData(ddlProducts.SelectedIndex + 1);

            try
            {
                if (ItemToAdd.Count >= 0 && ItemToAdd[0].invQuantity >= Convert.ToInt32(txtProdQuant.Text))
                {
                    lbProductOrder.Items.Add(ItemToAdd[0].prodName + ", " + ItemToAdd[0].prodBrand + " Price: $" + ItemToAdd[0].invPrice * Convert.ToInt32(txtProdQuant.Text) + " Quantity: " + txtProdQuant.Text);
                    subTotal += ItemToAdd[0].invPrice * Convert.ToDecimal(txtProdQuant.Text);
                    tax += ItemToAdd[0].invPrice * 0.13M;
                    total += subTotal + tax;

                    lblSubtotal.Text = subTotal.ToString();
                    lblTax.Text = tax.ToString();
                    lblTotal.Text = total.ToString();
                }
                    
                else
                    txtSearchCust.Text = "There is not enough stock";
            }
            catch
            {

            }
            
        }

        protected void CompleteSale(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtFirstName.Text + txtLastName.Text + txtPhoneNumber.Text + txtEmpFName.Text + txtEmpLName))
            {

            }
            else
            {
                string text = "All fields must be entered to complete purchase";
                //MessageBox.Show(text);
            }
        }
    }
}