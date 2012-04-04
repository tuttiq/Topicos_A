<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Clientes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <table border="1">

    <%
        foreach (Cap03.Models.Clientes Obj in
                       (List<Cap03.Models.Clientes>)ViewData["Dados"])
        {%>
          
          <tr>
          
             <td><%= Obj.Codigo.ToString() %></td>
             <td><%= Obj.Nome %></td>
          
          </tr>
             
        <%}
        
         %>

   </table>

</asp:Content>
