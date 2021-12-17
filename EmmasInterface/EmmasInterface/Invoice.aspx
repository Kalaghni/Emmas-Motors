<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="EmmasInterface.Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 299px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            Order Number:
            <asp:TextBox ID="txtOrderNumber" runat="server" Height="20px" Width="128px" OnTextChanged="txtOrderNumber_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOrderNumber" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtOrderNumber" ErrorMessage="!" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            <br />
            Employee:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlEmployee" runat="server" DataSourceID="EmployeeDataSource" DataTextField="empFull" DataValueField="id" Height="30px" Width="128px">
            </asp:DropDownList>
            <br />
            Payment:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlPayment" runat="server" DataSourceID="PaymentDataSource" DataTextField="payType" DataValueField="id" Height="31px" Width="128px">
            </asp:DropDownList>
            <br />
            Customer:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlCustomer" runat="server" DataSourceID="CustomerDataSource" DataTextField="custFullName" DataValueField="id" Height="30px" Width="128px">
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" Width="98px" /> 
            <br />
            <table>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblInvoice" runat="server" Text="Invoice"></asp:Label>
                        <br />
                        <asp:ListBox ID="lbInvoice" runat="server" Height="225px" Width="304px"></asp:ListBox>
                    </td>
                    <td>
                        <asp:Label ID="lblOrder" runat="server" Text="Equipment"></asp:Label>
                        <br />
                        <asp:ListBox ID="lbEquipment" runat="server" Height="225px" Width="349px"></asp:ListBox>
                    </td>
                </tr> 
            </table>
            <br />
            <br />
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
            <asp:ObjectDataSource ID="EmployeeDataSource" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.CustomerDataSetTableAdapters.EmployeeTableAdapter" UpdateMethod="Update">
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
            <asp:ObjectDataSource ID="CustomerDataSource" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.CustomerDataSetTableAdapters.CustomerTableAdapter" UpdateMethod="Update">
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
            <asp:ObjectDataSource ID="PaymentDataSource" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.CustomerDataSetTableAdapters.PaymentTableAdapter" UpdateMethod="Update">
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
            <br />
        </div>
    </form>
</body>
</html>
