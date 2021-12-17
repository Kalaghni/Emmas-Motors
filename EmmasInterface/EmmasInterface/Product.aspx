<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="EmmasInterface.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ObjectDataSource ID="ProductDDL" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.ProductDDLDatasetTableAdapters.productTableAdapter" DeleteMethod="Delete">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="productSearch" Name="Param1" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="Inventoryds" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.InventoryDataSetTableAdapters.inventoryTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
                <asp:Parameter Name="Original_invQuantity" Type="Int32" />
                <asp:Parameter Name="Original_invSize" Type="Decimal" />
                <asp:Parameter Name="Original_invMeasure" Type="String" />
                <asp:Parameter Name="Original_invPrice" Type="Decimal" />
                <asp:Parameter Name="Original_productID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="invQuantity" Type="Int32" />
                <asp:Parameter Name="invSize" Type="Decimal" />
                <asp:Parameter Name="invMeasure" Type="String" />
                <asp:Parameter Name="invPrice" Type="Decimal" />
                <asp:Parameter Name="productID" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Productlb" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="invQuantity" Type="Int32" />
                <asp:Parameter Name="invSize" Type="Decimal" />
                <asp:Parameter Name="invMeasure" Type="String" />
                <asp:Parameter Name="invPrice" Type="Decimal" />
                <asp:Parameter Name="productID" Type="Int32" />
                <asp:Parameter Name="Original_id" Type="Int32" />
                <asp:Parameter Name="Original_invQuantity" Type="Int32" />
                <asp:Parameter Name="Original_invSize" Type="Decimal" />
                <asp:Parameter Name="Original_invMeasure" Type="String" />
                <asp:Parameter Name="Original_invPrice" Type="Decimal" />
                <asp:Parameter Name="Original_productID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="OnOrderds" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.OnOrderDatasetTableAdapters.on_orderTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="Productlb" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="OrderLineds" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.OrderLineDatasetTableAdapters.order_lineTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
                <asp:Parameter Name="Original_orlPrice" Type="Decimal" />
                <asp:Parameter Name="Original_orlQuantity" Type="Int32" />
                <asp:Parameter Name="Original_orlOrderReq" Type="Boolean" />
                <asp:Parameter Name="Original_orlNote" Type="String" />
                <asp:Parameter Name="Original_inventoryID" Type="Int32" />
                <asp:Parameter Name="Original_receiptID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="orlPrice" Type="Decimal" />
                <asp:Parameter Name="orlQuantity" Type="Int32" />
                <asp:Parameter Name="orlOrderReq" Type="Boolean" />
                <asp:Parameter Name="orlNote" Type="String" />
                <asp:Parameter Name="inventoryID" Type="Int32" />
                <asp:Parameter Name="receiptID" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Productlb" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="orlPrice" Type="Decimal" />
                <asp:Parameter Name="orlQuantity" Type="Int32" />
                <asp:Parameter Name="orlOrderReq" Type="Boolean" />
                <asp:Parameter Name="orlNote" Type="String" />
                <asp:Parameter Name="inventoryID" Type="Int32" />
                <asp:Parameter Name="receiptID" Type="Int32" />
                <asp:Parameter Name="Original_id" Type="Int32" />
                <asp:Parameter Name="Original_orlPrice" Type="Decimal" />
                <asp:Parameter Name="Original_orlQuantity" Type="Int32" />
                <asp:Parameter Name="Original_orlOrderReq" Type="Boolean" />
                <asp:Parameter Name="Original_orlNote" Type="String" />
                <asp:Parameter Name="Original_inventoryID" Type="Int32" />
                <asp:Parameter Name="Original_receiptID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ProductCrudds" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.ProductDDLDatasetTableAdapters.ProductCRUDTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
                <asp:Parameter Name="Original_prodName" Type="String" />
                <asp:Parameter Name="Original_prodDescription" Type="String" />
                <asp:Parameter Name="Original_prodBrand" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="prodName" Type="String" />
                <asp:Parameter Name="prodDescription" Type="String" />
                <asp:Parameter Name="prodBrand" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Productlb" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="prodName" Type="String" />
                <asp:Parameter Name="prodDescription" Type="String" />
                <asp:Parameter Name="prodBrand" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
                <asp:Parameter Name="Original_prodName" Type="String" />
                <asp:Parameter Name="Original_prodDescription" Type="String" />
                <asp:Parameter Name="Original_prodBrand" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="OnOrderCRUD" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.ProductLookupDatasetTableAdapters.order_lineTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
                <asp:Parameter Name="Original_orlPrice" Type="Decimal" />
                <asp:Parameter Name="Original_orlQuantity" Type="Int32" />
                <asp:Parameter Name="Original_orlOrderReq" Type="Boolean" />
                <asp:Parameter Name="Original_orlNote" Type="String" />
                <asp:Parameter Name="Original_inventoryID" Type="Int32" />
                <asp:Parameter Name="Original_receiptID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="orlPrice" Type="Decimal" />
                <asp:Parameter Name="orlQuantity" Type="Int32" />
                <asp:Parameter Name="orlOrderReq" Type="Boolean" />
                <asp:Parameter Name="orlNote" Type="String" />
                <asp:Parameter Name="inventoryID" Type="Int32" />
                <asp:Parameter Name="receiptID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="orlPrice" Type="Decimal" />
                <asp:Parameter Name="orlQuantity" Type="Int32" />
                <asp:Parameter Name="orlOrderReq" Type="Boolean" />
                <asp:Parameter Name="orlNote" Type="String" />
                <asp:Parameter Name="inventoryID" Type="Int32" />
                <asp:Parameter Name="receiptID" Type="Int32" />
                <asp:Parameter Name="Original_id" Type="Int32" />
                <asp:Parameter Name="Original_orlPrice" Type="Decimal" />
                <asp:Parameter Name="Original_orlQuantity" Type="Int32" />
                <asp:Parameter Name="Original_orlOrderReq" Type="Boolean" />
                <asp:Parameter Name="Original_orlNote" Type="String" />
                <asp:Parameter Name="Original_inventoryID" Type="Int32" />
                <asp:Parameter Name="Original_receiptID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="768px">
            <asp:Label ID="Label5" runat="server" Text="Search for product:"></asp:Label>
            <br />
            <asp:TextBox ID="productSearch" runat="server" Height="24px" Width="157px"></asp:TextBox>
            <br />
            <asp:Button ID="Submit" runat="server" Height="28px" OnClick="Submit_Click" Text="Submit" />
            <br />
            <br />
            <br />
            <asp:ListBox ID="Productlb" runat="server" AutoPostBack="True" DataSourceID="ProductDDL" DataTextField="Product" DataValueField="id" OnSelectedIndexChanged="Productlb_SelectedIndexChanged" Height="138px" Width="209px"></asp:ListBox>
            <asp:FormView ID="Inventoryfv" runat="server" DataKeyNames="id" DataSourceID="Inventoryds" OnPageIndexChanging="Inventoryfv_PageIndexChanging">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    invQuantity:
                    <asp:TextBox ID="invQuantityTextBox" runat="server" Text='<%# Bind("invQuantity") %>' />
                    <br />
                    invSize:
                    <asp:TextBox ID="invSizeTextBox" runat="server" Text='<%# Bind("invSize") %>' />
                    <br />
                    invMeasure:
                    <asp:TextBox ID="invMeasureTextBox" runat="server" Text='<%# Bind("invMeasure") %>' />
                    <br />
                    invPrice:
                    <asp:TextBox ID="invPriceTextBox" runat="server" Text='<%# Bind("invPrice") %>' />
                    <br />
                    productID:
                    <asp:TextBox ID="productIDTextBox" runat="server" Text='<%# Bind("productID") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    invQuantity:
                    <asp:TextBox ID="invQuantityTextBox" runat="server" Text='<%# Bind("invQuantity") %>' />
                    <br />
                    invSize:
                    <asp:TextBox ID="invSizeTextBox" runat="server" Text='<%# Bind("invSize") %>' />
                    <br />
                    invMeasure:
                    <asp:TextBox ID="invMeasureTextBox" runat="server" Text='<%# Bind("invMeasure") %>' />
                    <br />
                    invPrice:
                    <asp:TextBox ID="invPriceTextBox" runat="server" Text='<%# Bind("invPrice") %>' />
                    <br />
                    productID:
                    <asp:TextBox ID="productIDTextBox" runat="server" Text='<%# Bind("productID") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Quantity:
                    <asp:Label ID="invQuantityLabel" runat="server" Text='<%# Bind("invQuantity") %>' />
                    <br />
                    Size:
                    <asp:Label ID="invSizeLabel" runat="server" Text='<%# Bind("invSize") %>' />
                    <br />
                    Measure:
                    <asp:Label ID="invMeasureLabel" runat="server" Text='<%# Bind("invMeasure") %>' />
                    <br />
                    Price:
                    <asp:Label ID="invPriceLabel" runat="server" Text='<%# Bind("invPrice") %>' />
                    <br />
                    <asp:LinkButton ID="SelectButton" runat="server" CausesValidation="False" CommandName="Select" OnClick="SelectButton_Click" Text="Select" />
                    &nbsp;&nbsp;
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:Label ID="Label6" runat="server" Text=" "></asp:Label>
            <br />
            <asp:GridView ID="OnOrdergv" runat="server" AutoGenerateColumns="False" DataSourceID="OnOrderds">
                <HeaderStyle BackColor="#03dffc" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                <Columns>
                    <asp:BoundField DataField="onordInvoiceNum" HeaderText="InvoiceNum" SortExpression="onordInvoiceNum" />
                    <asp:BoundField DataField="onordArriveDate" DataFormatString="{0:d}" HeaderText="ArriveDate" SortExpression="onordArriveDate" />
                    <asp:BoundField DataField="onordNumInOrder" HeaderText="Number In Order" SortExpression="onordNumInOrder" />
                    <asp:BoundField DataField="onordPrice" DataFormatString="{0:c}" HeaderText="Order Price" SortExpression="onordPrice" />
                    <asp:BoundField DataField="pordNumber" HeaderText="Product Order Number" SortExpression="pordNumber" />
                    <asp:BoundField DataField="pordDateOrdered" DataFormatString="{0:d}" HeaderText="Product Date Ordered" SortExpression="pordDateOrdered" />
                    <asp:CheckBoxField DataField="pordPaid" HeaderText="Paid?" SortExpression="pordPaid" />
                </Columns>
            </asp:GridView>
            <asp:Label ID="orderLabel" runat="server" Text="Item is not on any order" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text=" "></asp:Label>
            <br />
            <asp:GridView ID="OrderLinegv" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="OrderLineds">
                <HeaderStyle BackColor="#03dffc" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="Order Number" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="orlPrice" HeaderText="Price" SortExpression="orlPrice" />
                    <asp:BoundField DataField="orlQuantity" HeaderText="Quantity" SortExpression="orlQuantity" />
                    <asp:CheckBoxField DataField="orlOrderReq" HeaderText="OrderReq" SortExpression="orlOrderReq" />
                    <asp:BoundField DataField="orlNote" HeaderText="Note" SortExpression="orlNote" />
                    <asp:BoundField DataField="receiptID" HeaderText="Receipt Number" SortExpression="receiptID" />
                </Columns>
            </asp:GridView>
            <asp:Label ID="orderLineLabel" runat="server" Text="Order Line is empty" Visible="False"></asp:Label>
            <br />
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="ProductCrudPanel" runat="server" Height="357px" style="margin-top: 56px">
            <asp:Label ID="label" runat="server" Text="Product Crud:"></asp:Label>
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="ProductCrudds" OnPageIndexChanging="FormView1_PageIndexChanging">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    prodName:
                    <asp:TextBox ID="prodNameTextBox" runat="server" Text='<%# Bind("prodName") %>' />
                    <br />
                    prodDescription:
                    <asp:TextBox ID="prodDescriptionTextBox" runat="server" Text='<%# Bind("prodDescription") %>' />
                    <br />
                    prodBrand:
                    <asp:TextBox ID="prodBrandTextBox" runat="server" Text='<%# Bind("prodBrand") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    prodName:
                    <asp:TextBox ID="prodNameTextBox" runat="server" Text='<%# Bind("prodName") %>' />
                    <br />
                    prodDescription:
                    <asp:TextBox ID="prodDescriptionTextBox" runat="server" Text='<%# Bind("prodDescription") %>' />
                    <br />
                    prodBrand:
                    <asp:TextBox ID="prodBrandTextBox" runat="server" Text='<%# Bind("prodBrand") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Name:
                    <asp:Label ID="prodNameLabel" runat="server" Text='<%# Bind("prodName") %>' />
                    <br />
                    Description:
                    <asp:Label ID="prodDescriptionLabel" runat="server" Text='<%# Bind("prodDescription") %>' />
                    <br />
                    Brand:
                    <asp:Label ID="prodBrandLabel" runat="server" Text='<%# Bind("prodBrand") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Manage Inventory"></asp:Label>
            :<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="Inventoryds" style="margin-top: 0px">
                <HeaderStyle BackColor="#03dffc" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="invQuantity" HeaderText="Quantity" SortExpression="invQuantity" />
                    <asp:BoundField DataField="invSize" HeaderText="Size" SortExpression="invSize" />
                    <asp:BoundField DataField="invMeasure" HeaderText="Measure" SortExpression="invMeasure" />
                    <asp:BoundField DataField="invPrice" HeaderText="Price" SortExpression="invPrice" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="BackProd" runat="server" Text="Back" OnClick="BackProd_Click" />
        </asp:Panel>
        <br />
            <asp:Panel ID="pntest" runat="server" Height="241px">
                <asp:Label ID="Label3" runat="server" Text="Navigate to another page:"></asp:Label>
                <br />  
                <br />
                <div style="height: 28px">
                    <asp:Button ID="btnSale" runat="server" OnClick="btnSale_Click" Text="Sales" Width="120px" />
                </div>
                <div style="height: 28px">
                    <asp:Button ID="btnInvoice" runat="server" OnClick="btnInvoice_Click" Text="Invoice" Width="120px" />
                </div>
                <div style="height: 29px">
                    <asp:Button ID="btnEmployee" runat="server" OnClick="btnEmployee_Click" Text="Employee" Width="120px" />
                </div>
                <div style="height: 28px">
                    <asp:Button ID="btnCustomer" runat="server" OnClick="btnCustomer_Click" Text="Customer" Width="120px" />
                </div>
                <div style="height: 28px">
                    <asp:Button ID="btnProdLookup" runat="server" OnClick="btnProdLookup_Click" Text="Product Lookup" Width="120px" />
                </div>
                <br />
                <br />
            </asp:Panel>
            <br />
        <br />
        <br />
    </form>
</body>
</html>
