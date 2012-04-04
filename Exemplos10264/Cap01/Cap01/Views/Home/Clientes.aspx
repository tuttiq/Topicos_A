<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Clientes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Clientes</h2>

    <% Html.BeginForm(); %>

    <%: Html.TextBox("Cliente.Codigo") %>
    <%: Html.TextBox("Cliente.Nome") %>
      <input type="submit" value="Salvar" />
    <% Html.EndForm(); %>
    
</asp:Content>




