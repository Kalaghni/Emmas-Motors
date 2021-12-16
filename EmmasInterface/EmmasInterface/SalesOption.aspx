<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesOption.aspx.cs" Inherits="EmmasInterface.SalesOption" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Sales"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="btnNewCust" runat="server" OnClick="btnNewCust_Click" Text="New Customer" />
            <br />
            <br />
            <br />
            <asp:Button ID="btnExistingCust" runat="server" OnClick="btnExistingCust_Click" Text="Existing Customer" />
            <br />
        </div>
    </form>
</body>
</html>
