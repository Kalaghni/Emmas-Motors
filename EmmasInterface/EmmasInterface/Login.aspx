<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmmasInterface.Login_Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" Text="Login"></asp:Label>
            <br />
            <br />
            <div style="width: 502px">
                <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CausesValidation="False" />
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            <br />
        </div>
    </form>
</body>
</html>
