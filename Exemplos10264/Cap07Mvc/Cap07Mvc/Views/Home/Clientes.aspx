<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Clientes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!--
    <h2><%= (string)ViewData["Titulo"]%></h2> -->
 
  
    <h3><%= GetLocalResourceObject("NomePagina") %>
    </h3>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  

</asp:Content>
