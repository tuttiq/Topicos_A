<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Produtos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

       <table border="1">

    <%
        foreach (Cap03.Models.Product Obj in
                       (IQueryable<Cap03.Models.Product>)ViewData["Produtos"])
        {%>
          
          <tr>
          
             <td><%= Obj.ProductID.ToString() %></td>
             <td><%= Obj.Name %></td>
             <td><%= Obj.ListPrice.ToString("R$ ###,###,##0.00") %></td>
          
          </tr>
             
        <%}
        
         %>

   </table>

</asp:Content>
