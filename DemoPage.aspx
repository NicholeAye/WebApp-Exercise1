<%@ Page Title="Demo Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DemoPage.aspx.cs" Inherits="WebApp_Exercise1.DemoPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <h2><%:Title %></h2>
    <% WebApp_Exercise1.Tutorial tp = new WebApp_Exercise1.Tutorial(); %>

		<%=tp.Name%>
</asp:Content>
