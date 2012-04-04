<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SalvaCliente
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Salvar o Cliente</h2>

    <%= Request.QueryString["Codigo"].ToString() + " - " +
        Request.QueryString["Nome"].ToString() %>

</asp:Content>
