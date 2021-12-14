<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="EmmasInterface.Login_Pages.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Button ID="btnSale" runat="server" OnClick="btnSale_Click" Text="Sales" />
            <br />
            <br />
            <asp:Button ID="btnInvoice" runat="server" OnClick="btnInvoice_Click" Text="Invoice" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
            <br />
        </div>
    </form>
</body>
</html>
