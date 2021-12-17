<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerOrders.aspx.cs" Inherits="EmmasInterface.CustomerOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Order</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><asp:Label ID="lblTitle" runat="server" style=" background-color: #03dffc; color: #ffffff;"></asp:Label></h1>
            <hr />
            <asp:DetailsView ID="dvCustomerDetails" runat="server" AutoGenerateRows="False" CellPadding="10" CssClass="cssgridview" DataKeyNames="id" DataSourceID="odsCustomer" GridLines="None" Height="50px" Width="300px">
                <FooterStyle HorizontalAlign="Left" />
                <Fields>
                    <asp:BoundField DataField="custFirst" HeaderText="First" SortExpression="custFirst" />
                    <asp:BoundField DataField="custLast" HeaderText="Last" SortExpression="custLast" />
                    <asp:BoundField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
                    <asp:BoundField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                    <asp:BoundField DataField="custCity" HeaderText="City" SortExpression="custCity" />
                    <asp:BoundField DataField="custPostal" HeaderText="Postal" SortExpression="custPostal" />
                    <asp:BoundField DataField="custEmail" HeaderText="Email" SortExpression="custEmail" />
                </Fields>
            </asp:DetailsView>
            <asp:GridView ID="gvReceipt" runat="server" GridLines="None" CellPadding="10" AutoGenerateColumns="False" CssClass="cssgridview" DataKeyNames="id" DataSourceID="odsReceipt">
                <HeaderStyle BackColor="#03dffc" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                <FooterStyle HorizontalAlign="Left" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="ordNumber" HeaderText="Order Number" SortExpression="ordNumber" />
                    <asp:BoundField DataField="ordDate" HeaderText="Date" SortExpression="ordDate" DataFormatString="{0:d}" />
                    <asp:CheckBoxField DataField="ordPaid" HeaderText="Paid" SortExpression="ordPaid" />
                    <asp:TemplateField HeaderText="Payment" SortExpression="paymentID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("paymentID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="ddlPayment" runat="server" DataSourceID="odsPayment" DataTextField="payType" DataValueField="id">
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Employee" SortExpression="empID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("empID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="ddlEmployee" runat="server" DataSourceID="odsEmployee" DataTextField="empFirst" DataValueField="id">
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <a href="Customer.aspx">Return to customer table</a><br />
            <br />
            <br />
            <asp:ObjectDataSource ID="odsOrderDetails" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.CustomerDataSetTableAdapters.OrderDetailsTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
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
                    <asp:ControlParameter ControlID="dvCustomerDetails" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
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
            <asp:ObjectDataSource ID="odsCustomer" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.CustomerDataSetTableAdapters.CustomerTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_custFirst" Type="String" />
                    <asp:Parameter Name="Original_custLast" Type="String" />
                    <asp:Parameter Name="Original_custPhone" Type="String" />
                    <asp:Parameter Name="Original_custAddress" Type="String" />
                    <asp:Parameter Name="Original_custCity" Type="String" />
                    <asp:Parameter Name="Original_custPostal" Type="String" />
                    <asp:Parameter Name="Original_custEmail" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="custFirst" Type="String" />
                    <asp:Parameter Name="custLast" Type="String" />
                    <asp:Parameter Name="custPhone" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="custCity" Type="String" />
                    <asp:Parameter Name="custPostal" Type="String" />
                    <asp:Parameter Name="custEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="custFirst" Type="String" />
                    <asp:Parameter Name="custLast" Type="String" />
                    <asp:Parameter Name="custPhone" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="custCity" Type="String" />
                    <asp:Parameter Name="custPostal" Type="String" />
                    <asp:Parameter Name="custEmail" Type="String" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_custFirst" Type="String" />
                    <asp:Parameter Name="Original_custLast" Type="String" />
                    <asp:Parameter Name="Original_custPhone" Type="String" />
                    <asp:Parameter Name="Original_custAddress" Type="String" />
                    <asp:Parameter Name="Original_custCity" Type="String" />
                    <asp:Parameter Name="Original_custPostal" Type="String" />
                    <asp:Parameter Name="Original_custEmail" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="odsReceipt" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.CustomerDataSetTableAdapters.ReceiptTableAdapter" DeleteMethod="Delete" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_ordNumber" Type="String" />
                    <asp:Parameter Name="Original_ordDate" Type="DateTime" />
                    <asp:Parameter Name="Original_ordPaid" Type="Boolean" />
                    <asp:Parameter Name="Original_paymentID" Type="Int32" />
                    <asp:Parameter Name="Original_custID" Type="Int32" />
                    <asp:Parameter Name="Original_empID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ordNumber" Type="String" />
                    <asp:Parameter Name="ordDate" Type="DateTime" />
                    <asp:Parameter Name="ordPaid" Type="Boolean" />
                    <asp:Parameter Name="paymentID" Type="Int32" />
                    <asp:Parameter Name="custID" Type="Int32" />
                    <asp:Parameter Name="empID" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="dvCustomerDetails" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ordNumber" Type="String" />
                    <asp:Parameter Name="ordDate" Type="DateTime" />
                    <asp:Parameter Name="ordPaid" Type="Boolean" />
                    <asp:Parameter Name="paymentID" Type="Int32" />
                    <asp:Parameter Name="custID" Type="Int32" />
                    <asp:Parameter Name="empID" Type="Int32" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_ordNumber" Type="String" />
                    <asp:Parameter Name="Original_ordDate" Type="DateTime" />
                    <asp:Parameter Name="Original_ordPaid" Type="Boolean" />
                    <asp:Parameter Name="Original_paymentID" Type="Int32" />
                    <asp:Parameter Name="Original_custID" Type="Int32" />
                    <asp:Parameter Name="Original_empID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="odsPayment" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.CustomerDataSetTableAdapters.PaymentTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_payType" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="payType" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="payType" Type="String" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_payType" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="odsEmployee" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.CustomerDataSetTableAdapters.EmployeeTableAdapter">
            </asp:ObjectDataSource>
            <br />
        </div>
    </form>
</body>
</html>
