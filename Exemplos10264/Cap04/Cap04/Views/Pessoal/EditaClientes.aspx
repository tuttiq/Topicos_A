<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	EditaClientes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edição de Clientes</h2>

    <br />

    <% Html.BeginForm(); %>

    <%: Html.TextBox("Cliente.Codigo")%>
    <%: Html.TextBox("Cliente.Nome")%>

    <input type="submit" value="Gravar" />

    <% Html.EndForm(); %>

</asp:Content>
