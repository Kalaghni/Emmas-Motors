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
        <asp:ObjectDataSource ID="ProductDDL" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.ProductDDLDatasetTableAdapters.productTableAdapter"></asp:ObjectDataSource>
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
                <asp:ControlParameter ControlID="ProductDDL1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
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
                <asp:ControlParameter ControlID="ProductDDL1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
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
                <asp:ControlParameter ControlID="ProductDDL1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
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
        <br />
        <br />
        <br />
        <br />
        <asp:DropDownList ID="ProductDDL1" runat="server" DataSourceID="ProductDDL" DataTextField="Product" DataValueField="id" Height="16px" Width="169px" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:FormView ID="Inventoryfv" runat="server" DataKeyNames="id" DataSourceID="Inventoryds">
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
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:GridView ID="OnOrdergv" runat="server" AutoGenerateColumns="False" DataSourceID="OnOrderds">
            <Columns>
                <asp:BoundField DataField="onordInvoiceNum" HeaderText="onordInvoiceNum" SortExpression="onordInvoiceNum" />
                <asp:BoundField DataField="onordArriveDate" HeaderText="onordArriveDate" SortExpression="onordArriveDate" />
                <asp:BoundField DataField="onordNumInOrder" HeaderText="onordNumInOrder" SortExpression="onordNumInOrder" />
                <asp:BoundField DataField="onordPrice" HeaderText="onordPrice" SortExpression="onordPrice" />
                <asp:BoundField DataField="inventoryID" HeaderText="inventoryID" SortExpression="inventoryID" />
                <asp:BoundField DataField="prodorderID" HeaderText="prodorderID" SortExpression="prodorderID" />
                <asp:BoundField DataField="pordNumber" HeaderText="pordNumber" SortExpression="pordNumber" />
                <asp:BoundField DataField="pordDateOrdered" HeaderText="pordDateOrdered" SortExpression="pordDateOrdered" />
                <asp:CheckBoxField DataField="pordPaid" HeaderText="pordPaid" SortExpression="pordPaid" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:GridView ID="OrderLinegv" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="OrderLineds">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="orlPrice" HeaderText="orlPrice" SortExpression="orlPrice" />
                <asp:BoundField DataField="orlQuantity" HeaderText="orlQuantity" SortExpression="orlQuantity" />
                <asp:CheckBoxField DataField="orlOrderReq" HeaderText="orlOrderReq" SortExpression="orlOrderReq" />
                <asp:BoundField DataField="orlNote" HeaderText="orlNote" SortExpression="orlNote" />
                <asp:BoundField DataField="inventoryID" HeaderText="inventoryID" SortExpression="inventoryID" />
                <asp:BoundField DataField="receiptID" HeaderText="receiptID" SortExpression="receiptID" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
