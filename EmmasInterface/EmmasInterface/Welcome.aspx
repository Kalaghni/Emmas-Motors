<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="EmmasInterface.Login_Pages.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Emma's Small Engines"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Select a page to navigate to below:"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="pntest" runat="server" Height="136px">
                <div style="height: 28px">
                    <asp:Button ID="btnSale" runat="server" OnClick="btnSale_Click" Text="Sales" Width="100px" />
                </div>
                <div style="height: 28px">
                    <asp:Button ID="btnInvoice" runat="server" OnClick="btnInvoice_Click" Text="Invoice" Width="120px" />
                </div>
                <div style="height: 28px">
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
            <br />
            <br />
            <br />
            <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" Width="100px" />
            <br />
        </div>
    </form>
</body>
</html>
