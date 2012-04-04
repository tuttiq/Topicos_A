<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Pedidos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <% Html.BeginForm(); %>

    <%: Html.TextBox("Codigo") %>
    <%: Html.TextBox("Nome") %>
    <%: Html.TextBox("Endereco") %>

    <input type="submit" value="Gravar" />
    
    <% Html.EndForm(); %>

    <% if (TempData["Valor"] != null)
           Response.Write((string)TempData["Valor"]); %>

</asp:Content>
