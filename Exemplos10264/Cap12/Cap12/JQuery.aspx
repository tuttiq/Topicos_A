<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JQuery.aspx.cs" Inherits="Cap12.JQuery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    
    <script type="text/javascript">

        function BemVindo() {

            $("#MeuDiv").hide(1);
            $("#MeuDiv").append("<Font Size='14'>Bem Vindo ao Site da Empresa Abc.com.br</Font>");
            $("#MeuDiv").css("background-color", "DarkBlue");
            $("#MeuDiv").css("color", "White");

            $("#MeuDiv").fadeIn(5000);
            //$("#MeuDiv").toggle(5000);

            $("#MeuDiv").animate({ height: 300, width: 300, opacity: 5 },
                                 3000, function () { alert('Animacao Ok'); });

            $("#MeuDiv").fadeOut(5000);
        
        }
    
    </script>

</head>
<body onload="BemVindo();">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>

    <div id="MeuDiv" />

</body>
</html>




