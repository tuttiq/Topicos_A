﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Cap05.Models.Clientes>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Clientes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Clientes</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Codigo) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Codigo) %>
                <%: Html.ValidationMessageFor(model => model.Codigo) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Nome) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nome) %>
                <%: Html.ValidationMessageFor(model => model.Nome) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MalaDireta) %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.MalaDireta, 
                                        ((SelectList)ViewData["Opcoes"])) %>
                <%: Html.ValidationMessageFor(model => model.MalaDireta) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

