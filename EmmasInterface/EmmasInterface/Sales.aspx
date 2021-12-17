<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="EmmasInterface.Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="Order" runat="server">
        <asp:Label ID="Label2" runat="server" Text="Search for Customer by First Name" Font-Bold="False" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtSearchCust" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="SearchCust" />
        <br />
        <br />
        <asp:ListBox ID="lbCustNames" runat="server" AutoPostBack="True" DataSourceID="odsCustomerLookup" DataTextField="custFullname" DataValueField="id" Height="111px" Width="183px"></asp:ListBox>
        <br />
        <br />
        <asp:Label ID="lblEmpInf" runat="server" Text="Employee Name"></asp:Label>    
        <br />
        <div id="Employees">
            <asp:DropDownList ID="ddlEmployee" runat="server" DataSourceID="odsEmployee" DataTextField="empFull" DataValueField="id" Height="26px" Width="183px">
            </asp:DropDownList>
        </div>
        <br />
        Payment Type<br />
        <asp:DropDownList ID="ddlPayment" runat="server" DataSourceID="odsPayment" DataTextField="payType" DataValueField="id" Height="25px" Width="175px">
        </asp:DropDownList>
        <asp:CheckBox ID="chkPaid" runat="server" Text="Paid" />
        <br />
        Notes<br />
        <asp:TextBox ID="txtNote" runat="server"></asp:TextBox>
        <br />
        
        <br />
        <asp:Label ID="ProductInformationDiv" runat="server" Text="Product Information"></asp:Label>    
        <br />
        <div id="Products">
            
            <asp:DropDownList ID="ddlProducts" runat="server" Height="23px" Width="158px" AutoPostBack="True" DataSourceID="odsProducts" DataTextField="prodListing" DataValueField="id">
            </asp:DropDownList>
            <asp:TextBox ID="txtProdQuant"  type="number" runat="server" Width="28px" Height="24px">1</asp:TextBox>
            
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtProdQuant" ErrorMessage="!" Font-Bold="True" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
            <br />
            
            <asp:Button ID="btnItemAdd" runat="server" OnClick="AddToOrder" Text="Add Product" />
            <br />
            <asp:ListBox ID="lbProductOrder" runat="server"></asp:ListBox>
            
            <br />
            <br />
            Subtotal : <asp:Label ID="lblSubtotal" runat="server" Text="$0.00"></asp:Label>
            <br />
            Tax : <asp:Label ID="lblTax" runat="server" Text="$0.00"></asp:Label>
            <br />
            Total : <asp:Label ID="lblTotal" runat="server" Text="$0.00"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnCompleteSale" runat="server" OnClick="CompleteSale" Text="Complete Sale" />
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
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
                    <asp:Button ID="btnCustomer" runat="server" OnClick="btnSale_Click" Text="Customer" Width="120px" />
                </div>
                <div style="height: 28px">
                    <asp:Button ID="btnProdLookup" runat="server" OnClick="btnProdLookup_Click" Text="Product Lookup" Width="120px" />
                </div>
                <br />
                <br />
            </asp:Panel>
            <br />
            <br />
            <asp:ObjectDataSource ID="odsEmployee" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.CustomerDataSetTableAdapters.EmployeeTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_empFirst" Type="String" />
                    <asp:Parameter Name="Original_empLast" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="empFirst" Type="String" />
                    <asp:Parameter Name="empLast" Type="String" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_empFirst" Type="String" />
                    <asp:Parameter Name="Original_empLast" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="odsPayment" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.CustomerDataSetTableAdapters.PaymentTableAdapter" UpdateMethod="Update">
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
        
        
        <asp:ObjectDataSource ID="odsProducts" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.EmmasDataSetTableAdapters.productLookupTableAdapter">
        </asp:ObjectDataSource>
        
        
            <asp:ObjectDataSource ID="odsCustomerLookup" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.EmmasDataSetTableAdapters.customerLookupTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtSearchCust" Name="Param1" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
            
        </div>
        
        
        <br />
        
        
    </form>
</body>
</html>
