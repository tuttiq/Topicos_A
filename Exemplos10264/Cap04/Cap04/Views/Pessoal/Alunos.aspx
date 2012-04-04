<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Alunos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Alunos</h2>

    <br />

    <% Html.BeginForm(); %>

    Digite seu codigo: <%: Html.TextBox("id") %>

    <input type="submit" value="Gravar" />

    <% Html.EndForm(); %>

</asp:Content>
