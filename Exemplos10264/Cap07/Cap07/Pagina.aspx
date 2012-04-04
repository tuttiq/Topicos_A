<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina.aspx.cs" Inherits="Cap07.Pagina" culture="auto" meta:resourcekey="PageResource1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
&nbsp;<asp:Label ID="Label1" runat="server" meta:resourcekey="Label1Resource1" 
            Text="Customer Code"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" meta:resourcekey="Label2Resource1" 
            Text="Name"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" meta:resourcekey="TextBox2Resource1"></asp:TextBox>
        <br />
        <br />
&nbsp;<asp:Label ID="Label3" runat="server" meta:resourcekey="Label3Resource1" 
            Text="Address"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" meta:resourcekey="TextBox3Resource1"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" meta:resourcekey="Button1Resource1" 
            Text="Save" />
        <br />
    
    </div>
    </form>
</body>
</html>
