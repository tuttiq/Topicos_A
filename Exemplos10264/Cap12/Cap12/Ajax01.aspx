<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajax01.aspx.cs" Inherits="Cap12.Ajax01" %>

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
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Button" />
                &nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
<br />
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
