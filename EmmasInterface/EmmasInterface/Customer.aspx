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
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="lbtnUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="lbtnCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <HeaderTemplate>
                            <asp:LinkButton ID="lbtnCreate" ForeColor="#ffffff" runat="server" OnClick="lbtnCreate_Click">New Customer</asp:LinkButton>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbtnEdit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="lbtnSelect" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="lbtnDelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick='return confirm("Are you sure you want to delete this item?");'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="custFirst" HeaderText="First Name" SortExpression="custFirst" />
                    <asp:BoundField DataField="custLast" HeaderText="Last Name" SortExpression="custLast" />
                    <asp:BoundField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
                    <asp:BoundField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                    <asp:BoundField DataField="custCity" HeaderText="City" SortExpression="custCity" />
                    <asp:BoundField DataField="custPostal" HeaderText="Postal" SortExpression="custPostal" />
                    <asp:BoundField DataField="custEmail" HeaderText="Email" SortExpression="custEmail" />
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
                    <asp:BoundField DataField="custFirst" HeaderText="First Name" SortExpression="custFirst" />
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="custLast" HeaderText="Last Name" SortExpression="custLast" />
                    <asp:BoundField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
                    <asp:BoundField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                    <asp:BoundField DataField="custCity" HeaderText="City" SortExpression="custCity" />
                    <asp:BoundField DataField="custPostal" HeaderText="Postal" SortExpression="custPostal" />
                    <asp:BoundField DataField="custEmail" HeaderText="Email" SortExpression="custEmail" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
            <asp:ObjectDataSource ID="odsCustomer" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasLibrary.EmmasDataSetTableAdapters.customerTableAdapter">
                <InsertParameters>
                    <asp:Parameter Name="custFirst" Type="String" />
                    <asp:Parameter Name="custLast" Type="String" />
                    <asp:Parameter Name="custPhone" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="custCity" Type="String" />
                    <asp:Parameter Name="custPostal" Type="String" />
                    <asp:Parameter Name="custEmail" Type="String" />
                </InsertParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
