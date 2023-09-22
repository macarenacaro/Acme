<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones1Respuesta.aspx.cs" Inherits="GesPresta.Prestaciones1Respuesta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="style.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div class="txtEmp">
            <asp:Label ID="Label1" runat="server" Text="VALORES RECIBIDOS DESDE EL FORMULARIO PRESTACIONES1.ASPX" ></asp:Label>
            <br />
        </div>
        <div class="val">
            <asp:Label ID="lblValores" runat="server" Text="Label" Width="70%" BackColor="#C0FFFF"></asp:Label>
        </div>
    </form>
</body>
</html>
