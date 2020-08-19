<%@ Page Title="Categories" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="WebApp_Exercise1.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <h2><%: Title %></h2>
        <table style="width:100%;">
            <tr>
                <td style="width: 186px">Categories Code</td>
                <td>
                    <asp:TextBox ID="txtCategoriesCode" runat="server" Width="255px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 186px">Categories Name</td>
                <td>
                    <asp:TextBox ID="txtCategoriesName" runat="server" Width="255px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 186px">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save" Width="85px" OnClick="btnSave_Click" />&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="85px" OnClick="btnUpdate_Click" />&nbsp;
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="85px" OnClick="btnDelete_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="lblinfoMsg" runat="server" Text="Label"></asp:Label></td>
                <td style="color:red">&nbsp;</td>
            </tr>
        </table>
    
  
</asp:Content>
