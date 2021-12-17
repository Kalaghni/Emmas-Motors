<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="EmmasInterface.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><asp:Label ID="lblMain" runat="server" style=" background-color: #03dffc; color: #ffffff;">Customer</asp:Label></h1>
            <hr />
            <asp:GridView GridLines="None" CellPadding="10" ID="gvCustomer" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="odsCustomer" CssClass="cssgridview" OnSelectedIndexChanged="gvCustomer_SelectedIndexChanged">
                <HeaderStyle BackColor="#03dffc" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="custFirst" HeaderText="custFirst" SortExpression="custFirst" />
                    <asp:BoundField DataField="custLast" HeaderText="custLast" SortExpression="custLast" />
                    <asp:BoundField DataField="custPhone" HeaderText="custPhone" SortExpression="custPhone" />
                    <asp:BoundField DataField="custAddress" HeaderText="custAddress" SortExpression="custAddress" />
                    <asp:BoundField DataField="custCity" HeaderText="custCity" SortExpression="custCity" />
                    <asp:BoundField DataField="custPostal" HeaderText="custPostal" SortExpression="custPostal" />
                    <asp:BoundField DataField="custEmail" HeaderText="custEmail" SortExpression="custEmail" />
                    <asp:BoundField DataField="custFullName" HeaderText="custFullName" ReadOnly="True" SortExpression="custFullName" />
                </Columns>
                <FooterStyle HorizontalAlign="Left" />
            </asp:GridView>
            <asp:DetailsView GridLines="None" CssClass="cssgridview" CellPadding="10"
                ID="dvCustomer" 
                runat="server" 
                AutoGenerateRows="False" 
                DataKeyNames="id" 
                DataSourceID="odsCustomer" 
                Height="50px" 
                Width="300px" 
                Visible="False" 
                DefaultMode="Insert" 
                OnItemCommand="dvCustomer_ItemCommand">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="custFirst" HeaderText="custFirst" SortExpression="custFirst" />
                    <asp:BoundField DataField="custLast" HeaderText="custLast" SortExpression="custLast" />
                    <asp:BoundField DataField="custPhone" HeaderText="custPhone" SortExpression="custPhone" />
                    <asp:BoundField DataField="custAddress" HeaderText="custAddress" SortExpression="custAddress" />
                    <asp:BoundField DataField="custCity" HeaderText="custCity" SortExpression="custCity" />
                    <asp:BoundField DataField="custPostal" HeaderText="custPostal" SortExpression="custPostal" />
                    <asp:BoundField DataField="custEmail" HeaderText="custEmail" SortExpression="custEmail" />
                    <asp:BoundField DataField="custFullName" HeaderText="custFullName" ReadOnly="True" SortExpression="custFullName" />
                </Fields>
            </asp:DetailsView>
            <asp:Panel ID="pntest" runat="server" Height="241px">
                <asp:Label ID="Label2" runat="server" Text="Naviagte to another page:"></asp:Label>
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
            <asp:ObjectDataSource ID="odsCustomer" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.CustomerDataSetTableAdapters.CustomerTableAdapter" DeleteMethod="Delete" UpdateMethod="Update">
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
        </div>
    </form>
</body>
</html>
