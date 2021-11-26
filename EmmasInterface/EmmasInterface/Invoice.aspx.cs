using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmmasLibrary;
using EmmasLibrary.EmmasDataSetTableAdapters;

namespace EmmasInterface
{
    public partial class Invoice : System.Web.UI.Page
    {
        static EmmasDataSet dsEmma = new EmmasDataSet();
        static InvoiceLookupAdapter laInvoice = new InvoiceLookupAdapter();
        static OrderTableAdapter taOrder = new OrderTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }



        protected void btnSearch_Click(object sender, EventArgs e)
        {
            lbInvoice.Items.Clear();
            lbEquipment.Items.Clear();

            string orderNumber = "0";

            if (!String.IsNullOrEmpty(txtOrderNumber.Text))
                orderNumber = txtOrderNumber.Text;


            try
            {
                var invoice = laInvoice.GetData(Convert.ToInt32(ddlCustomer.SelectedValue),
                                            Convert.ToInt32(ddlPayment.SelectedValue),
                                            Convert.ToInt32(ddlEmployee.SelectedValue),
                                            Convert.ToInt32(orderNumber));

                
                if (invoice.Count > 0)
                {
                    foreach (var i in invoice)
                    {
                        var order = taOrder.GetData(Convert.ToInt32(i.id));
                        lbInvoice.Items.Add("Order Number: " + $"{i.ordNumber.ToString()}");
                        lbInvoice.Items.Add("Order Date: " + $"{i.ordDate.ToString()}");
                        lbInvoice.Items.Add("Order Paid: " + $"{i.ordPaid.ToString()}");
                        lbInvoice.Items.Add("Payment: " + $"{ddlPayment.SelectedItem.Text}");
                        lbInvoice.Items.Add("Customer: " + $"{ddlCustomer.SelectedItem.Text}");
                        lbInvoice.Items.Add("Employee: " + $"{ddlEmployee.SelectedItem.Text}");

                        foreach (var ord in order)
                        {
                            lbEquipment.Items.Add($"Brand: " + $"{ord.prodBrand}");
                            lbEquipment.Items.Add($"Name: " + $"{ord.prodName}");
                            lbEquipment.Items.Add($"Price: " + $"{string.Format("{0:C}",ord.orlPrice)}");
                            lbEquipment.Items.Add($"Quantity: " + $"{ord.orlQuantity}");
                            lbEquipment.Items.Add($"Notes: " + $"{ord.orlNote}");
                            lbEquipment.Items.Add("");
                        }
                        lbInvoice.Items.Add("");
                    }
                }
                else
                {
                    lbInvoice.Items.Add("Invoice not found.");
                }
            }
            catch
            {
                lbInvoice.Items.Add("An error occured getting invoice.");
            }
             

            
        }

    }
}