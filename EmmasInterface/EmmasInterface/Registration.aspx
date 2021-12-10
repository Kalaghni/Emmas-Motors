<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="EmmasInterface.Login_Pages.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Register New User"></asp:Label>
            <br />
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Username: "></asp:Label>
&nbsp;
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Password: "></asp:Label>
&nbsp;
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Confirm: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
                <br />
            </div>
            <br />
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <br />
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" ErrorMessage="Password does not match" SetFocusOnError="True"></asp:CompareValidator>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirm" ErrorMessage="Must confirm password" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
    </form>
</body>
</html>
