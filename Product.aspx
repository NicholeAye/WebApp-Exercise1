<%@ Page Title="Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApp_Exercise1.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
        <table style="width:100%;">
            <tr>
                <td style="width: 270px">Categories Code</td>
                <td>
                    <asp:DropDownList ID="ddlCategoriesCode" runat="server" Width="287px" DataSourceID="odsProduct" DataTextField="CategoriesName" DataValueField="CategoriesID">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="odsProduct" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="CategoriesTableAdapters.CategoriesTableAdapter" UpdateMethod="Update">
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
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 270px">Product Code</td>
                <td>
                    <asp:TextBox ID="txtProductCode" runat="server" Width="276px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 270px">Product Name</td>
                <td>
                    <asp:TextBox ID="txtProductName" runat="server" Width="276px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 270px">Price</td>
                <td>
                    <asp:TextBox ID="txtProductPrice" runat="server" Width="276px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 270px">Description</td>
                <td>
                    <asp:TextBox ID="txtProductDes" runat="server" TextMode="MultiLine" Width="281px" Height="54px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td style="width: 186px">&nbsp;</td>
                <td>

                    <asp:Button ID="btnSave" runat="server" Text="Save" Width="79px" OnClick="btnSave_Click" />&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="79px" OnClick="btnUpdate_Click" />&nbsp;
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="79px" OnClick="btnDelete_Click" />
                </td>
                <td> &nbsp;</td>
                
            </tr>
            
        </table>
    
</asp:Content>
