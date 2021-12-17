<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="EmmasInterface.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
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
        <br />
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
        <asp:ObjectDataSource ID="ProductCrudds" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.InventoryDataSetTableAdapters.inventoryTableAdapter" UpdateMethod="Update">
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
        <asp:Panel ID="Panel1" runat="server" Height="740px">
            <br />
            <asp:TextBox ID="productSearch" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Submit" runat="server" Height="28px" OnClick="Submit_Click" Text="Submit" />
            <br />
            <br />
            <br />
            <asp:ListBox ID="Productlb" runat="server" AutoPostBack="True" DataSourceID="ProductDDL" DataTextField="Product" DataValueField="id" OnSelectedIndexChanged="Productlb_SelectedIndexChanged"></asp:ListBox>
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
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    invQuantity:
                    <asp:Label ID="invQuantityLabel" runat="server" Text='<%# Bind("invQuantity") %>' />
                    <br />
                    invSize:
                    <asp:Label ID="invSizeLabel" runat="server" Text='<%# Bind("invSize") %>' />
                    <br />
                    invMeasure:
                    <asp:Label ID="invMeasureLabel" runat="server" Text='<%# Bind("invMeasure") %>' />
                    <br />
                    invPrice:
                    <asp:Label ID="invPriceLabel" runat="server" Text='<%# Bind("invPrice") %>' />
                    <br />
                    productID:
                    <asp:Label ID="productIDLabel" runat="server" Text='<%# Bind("productID") %>' />
                    <br />
                    <asp:LinkButton ID="SelectButton" runat="server" CausesValidation="False" CommandName="Select" OnClick="SelectButton_Click" Text="Select" />
                    &nbsp;&nbsp;
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:GridView ID="OnOrdergv" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="OnOrderds">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="onordInvoiceNum" HeaderText="InvoiceNum" SortExpression="onordInvoiceNum" />
                    <asp:BoundField DataField="onordArriveDate" DataFormatString="{0:d}" HeaderText="ArriveDate" SortExpression="onordArriveDate" />
                    <asp:BoundField DataField="onordNumInOrder" HeaderText="Number In Order" SortExpression="onordNumInOrder" />
                    <asp:BoundField DataField="onordPrice" DataFormatString="{0:c}" HeaderText="Order Price" SortExpression="onordPrice" />
                    <asp:BoundField DataField="pordNumber" HeaderText="Product Order Number" SortExpression="pordNumber" />
                    <asp:BoundField DataField="pordDateOrdered" DataFormatString="{0:d}" HeaderText="Product Date Ordered" SortExpression="pordDateOrdered" />
                    <asp:CheckBoxField DataField="pordPaid" HeaderText="Paid?" SortExpression="pordPaid" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:GridView ID="OrderLinegv" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="OrderLineds">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="orlPrice" HeaderText="orlPrice" SortExpression="orlPrice" />
                    <asp:BoundField DataField="orlQuantity" HeaderText="orlQuantity" SortExpression="orlQuantity" />
                    <asp:CheckBoxField DataField="orlOrderReq" HeaderText="orlOrderReq" SortExpression="orlOrderReq" />
                    <asp:BoundField DataField="orlNote" HeaderText="orlNote" SortExpression="orlNote" />
                    <asp:BoundField DataField="inventoryID" HeaderText="inventoryID" SortExpression="inventoryID" />
                    <asp:BoundField DataField="receiptID" HeaderText="receiptID" SortExpression="receiptID" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="ProductCrudPanel" runat="server" Height="303px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ProductCrudds">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="invQuantity" HeaderText="invQuantity" SortExpression="invQuantity" />
                    <asp:BoundField DataField="invSize" HeaderText="invSize" SortExpression="invSize" />
                    <asp:BoundField DataField="invMeasure" HeaderText="invMeasure" SortExpression="invMeasure" />
                    <asp:BoundField DataField="invPrice" HeaderText="invPrice" SortExpression="invPrice" />
                    <asp:BoundField DataField="productID" HeaderText="productID" SortExpression="productID" />
                </Columns>
            </asp:GridView>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            <asp:Panel ID="pntest" runat="server" Height="241px">
                <asp:Label ID="Label3" runat="server" Text="Naviagte to another page:"></asp:Label>
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
