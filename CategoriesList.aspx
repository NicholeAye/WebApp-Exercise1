<%@ Page Title="Categories List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategoriesList.aspx.cs" Inherits="WebApp_Exercise1.CategoriesList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%:Title %></h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="CategoriesID" DataSourceID="odsCategories" GridLines="Horizontal" Height="124px" Width="447px">
        <Columns>
            <asp:BoundField DataField="CategoriesID" HeaderText="CategoriesID" InsertVisible="False" ReadOnly="True" SortExpression="CategoriesID" Visible="False" />
            <asp:BoundField DataField="CategoriesCode" HeaderText="CategoriesCode" SortExpression="CategoriesCode" />
            <asp:BoundField DataField="CategoriesName" HeaderText="CategoriesName" SortExpression="CategoriesName" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" Visible="False" />
            <asp:HyperLinkField DataNavigateUrlFields="CategoriesID,CategoriesCode,CategoriesName" HeaderText="Active" DataNavigateUrlFormatString="Categories.aspx?CategoriesID={0}&CategoriesCode={1}&CategoriesName={2}" NavigateUrl="~/Categories.aspx" Text="Edit" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>

    <asp:ObjectDataSource ID="odsCategories" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApp_Exercise1.App_Code.CategoriesTableAdapters.CategoriesTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_CategoriesID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CategoriesCode" Type="String" />
            <asp:Parameter Name="CategoriesName" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CategoriesCode" Type="String" />
            <asp:Parameter Name="CategoriesName" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="Original_CategoriesID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

</asp:Content>
