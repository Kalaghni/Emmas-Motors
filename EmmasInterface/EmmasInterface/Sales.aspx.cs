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

    public class SaleObject
    {
        public SaleObject(string ordNum, bool paid, int pay, int cust, int emp)
        {
            OrderNum = ordNum;
            OrderDate = DateTime.Today;
            OrderPaid = paid;
            PaymentID = pay;
            CustomerID = cust;
            EmployeeID = emp;
        }
        public string OrderNum { get; set; }
        public DateTime OrderDate { get; set; }
        public bool OrderPaid { get; set; }
        public int PaymentID { get; set; }
        public int CustomerID { get; set; }
        public int EmployeeID { get; set; }

    }

    public class SaleProduct
    {
        public SaleProduct(int id, int qty, decimal price)
        {
            ID = id;
            Quantity = qty;
            Price = price;
        }
        public int ID { get; set; }
        public int Quantity { get; set; }
        public decimal Price { get; set; }
    }

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
        static ReceiptCreateTableAdapter taReceiptCreate = new ReceiptCreateTableAdapter();
        static OrderCreateTableAdapter taOrderCreate = new OrderCreateTableAdapter();
        static InventoryCreateTableAdapter taInventoryCreate = new InventoryCreateTableAdapter();

        private static decimal subTotal;
        private static decimal tax;
        private static decimal total;

        private static List<SaleProduct> products = new List<SaleProduct>();

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
            //lbCustNames.Items.Add(txtSearchCust.Text);
        }

        protected void AddToOrder(object sender, EventArgs e)
        {
            var ItemToAdd = taSaleItem.GetData(ddlProducts.SelectedIndex + 1);

            try
            {
                if (ItemToAdd.Count >= 0 && ItemToAdd[0].invQuantity >= Convert.ToInt32(txtProdQuant.Text))
                {
                    decimal tempPrice = ItemToAdd[0].invPrice * Convert.ToInt32(txtProdQuant.Text);
                    lbProductOrder.Items.Add(ItemToAdd[0].prodName + ", " + ItemToAdd[0].prodBrand + " Price: $" + tempPrice + " Quantity: " + txtProdQuant.Text);
                    products.Add(new SaleProduct(ItemToAdd[0].id, Convert.ToInt32(txtProdQuant.Text), ItemToAdd[0].invPrice));

                    subTotal += tempPrice;
                    tax += subTotal * 0.13M;
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
            if (products.Any())
            {
                string OrderNumber = (taReceiptCreate.GetData().Count + 1).ToString();

                SaleObject sale = new SaleObject(OrderNumber, chkPaid.Checked, Convert.ToInt32(ddlPayment.SelectedValue), Convert.ToInt32(lbCustNames.SelectedValue), Convert.ToInt32(ddlEmployee.SelectedValue));
                taReceiptCreate.Insert(sale.OrderNum, sale.OrderDate, sale.OrderPaid, sale.PaymentID, sale.CustomerID, sale.EmployeeID);

                for (int a = 0; a < products.Count; a++)
                {
                    taOrderCreate.Insert(products[a].Price, products[a].Quantity, null, txtNote.Text, products[a].ID, Convert.ToInt32(taReceiptCreate.GetData().Where(r => r.ordNumber == OrderNumber).First().id));
                }

                txtSearchCust.Text = "";
                txtProdQuant.Text = "";
                txtNote.Text = "";
                lbCustNames.Items.Clear();
                lbProductOrder.Items.Clear();
                lblSubtotal.Text = "";
                lblTax.Text = "";
                lblTotal.Text = "";
                lblResult.Text = $"Successfully added Sale with Order Number {OrderNumber}";

                products.Clear();
            }
            else
            {
                string text = "Must add products to sale";
                //MessageBox.Show(text);
            }
        }
    }
}