<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Ajax
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Ajax</h2>

    <% using (Ajax.BeginForm("PegarTexto",
                     new AjaxOptions { UpdateTargetId = "Ver" }))
       {%>
            
       <%= Html.TextBox("Texto", "Digite...") %>

       <br />

        <span id ="Ver">Vazio</span>

        <input type="submit" value="Enviar" />

     <% } %>

</asp:Content>



