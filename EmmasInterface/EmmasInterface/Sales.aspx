﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="EmmasInterface.Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="Order" runat="server">
        <asp:Label ID="lbCustomerInfo" runat="server" Text="Customer Information"></asp:Label>    
        <br />
        <div id="Names">
            <asp:Label ID="lbFirstName" runat="server" Text="First Name"></asp:Label>    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:Label ID="lbLastName" runat="server" Text="Last Name"></asp:Label>
        </div>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        <div>
            <asp:Label ID="lbPhone" runat="server" Text="Phone Number"></asp:Label>
        </div>
        <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblEmpInf" runat="server" Text="Employee Information"></asp:Label>    
        <br />
        <div id="Employees">
            <asp:Label ID="lblEmpFName" runat="server" Text="First Name"></asp:Label>    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:Label ID="lblEmpLName" runat="server" Text="Last Name"></asp:Label>
        </div>
        <asp:TextBox ID="txtEmpFName" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtEmpLName" runat="server"></asp:TextBox>
        
        <br />
        <asp:Label ID="ProductInformationDiv" runat="server" Text="Product Information"></asp:Label>    
        <br />
        <div id="Products">
            
            <asp:DropDownList ID="ddlProducts" runat="server" Height="16px" Width="128px" AutoPostBack="True" DataSourceID="odsProducts" DataTextField="prodName" DataValueField="id">
            </asp:DropDownList>
            <asp:TextBox ID="txtProdQuant"  type="number" runat="server" Width="28px"></asp:TextBox>
            
            <br />
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True"></asp:ListBox>
            <br />
            Subtotal : <asp:Label ID="lblSubtotal" runat="server" Text="$0.00"></asp:Label>
            <br />
            Tax : <asp:Label ID="lblTax" runat="server" Text="$0.00"></asp:Label>
            <br />
            Total : <asp:Label ID="lblTotal" runat="server" Text="$0.00"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="pntest" runat="server" Height="123px">
                <asp:Label ID="Label1" runat="server" Text="Naviagte to another page:"></asp:Label>
                <br />
                <br />
                <div style="height: 28px">
                    <asp:Button ID="btnSale" runat="server" OnClick="btnSale_Click" Text="Sales" />
                </div>
                <div style="height: 28px">
                    <asp:Button ID="btnInvoice" runat="server" OnClick="btnInvoice_Click" Text="Invoice" />
                </div>
                <div style="height: 28px">
                    <asp:Button ID="btnEmployee" runat="server" OnClick="btnEmployee_Click" Text="Employee" />
                </div>
                <br />
                <br />
            </asp:Panel>
            <br />
            <br />
            <br />
            <br />
            
        </div>
        
        
        <asp:ObjectDataSource ID="odsProducts" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.EmmasDataSetTableAdapters.productTableAdapter"></asp:ObjectDataSource>
        
        
        <br />
        
        
    </form>
</body>
</html>
