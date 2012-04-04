<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagEstilo.aspx.cs" Inherits="Cap11WF.PagEstilo" Theme="Tema01" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" SkinID="Bt02" Text="Button" />
&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Button" />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
