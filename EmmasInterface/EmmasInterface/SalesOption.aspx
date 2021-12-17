<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesOption.aspx.cs" Inherits="EmmasInterface.SalesOption" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 255px; margin-left: 320px">
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="170px" style="margin-left: 233px; margin-top: 0px" Width="162px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Sales"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Button ID="btnExistingCust" runat="server" OnClick="btnExistingCust_Click" Text="Existing Customer" Width="160px" />
                <br />
                <br />
                <asp:Button ID="btnNewCust" runat="server" OnClick="btnNewCust_Click" Text="New Customer" Width="160px" />
            </asp:Panel>
            <br />
            <br />
        </div>
            <asp:Panel ID="pntest" runat="server" Height="241px">
                <asp:Label ID="Label2" runat="server" Text="Navigate to another page:"></asp:Label>
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
    </form>
</body>
</html>
