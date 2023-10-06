<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones.aspx.cs" Inherits="GesPresta.Prestaciones" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="style.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
        <div class="txtEmp">
            <asp:Label ID="Label1" runat="server" Text="DATOS DE LAS PRESTACIONES" ></asp:Label>
            <br />
        </div>

              <asp:Table ID="Table1" runat="server" Width="100%">
            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Código Prestación"> </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtCodPre" runat="server" CssClass="txtBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdTxtCodPre" runat="server" ErrorMessage="El código Prestacion es obligatorio" ControlToValidate="txtCodPre" CssClass="obligacion"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Descripción"> </asp:TableCell>               
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtDesPre" runat="server" CssClass="txtBox" Width="650"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rqdTxtDesPre" runat="server" ErrorMessage="La Descripcion es obligatoria" ControlToValidate="txtDesPre" CssClass="obligacion"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Importe Fijo"> </asp:TableCell>              
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtImpPre" runat="server" CssClass="txtBox"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rqdTxtImpPre" runat="server" ErrorMessage="El Importe es obligatorio" ControlToValidate="txtImpPre" CssClass="obligacion"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Porcentaje del Importe"> </asp:TableCell>       
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtPorPre" runat="server" CssClass="txtBox"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rqdTxtPorPre" runat="server" ErrorMessage="El Porcentaje es obligatorio" ControlToValidate="txtPorPre" CssClass="obligacion"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>       

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Tipo de Prestación"> </asp:TableCell>                
                <asp:TableCell runat="server">
                    <asp:DropDownList ID="ddlTipPre" runat="server" CssClass="drpDown">
                        <asp:ListItem Selected="false" Value="Dentaria"> Dentaria </asp:ListItem>
                        <asp:ListItem Selected="false" Value="Familiar"> Familiar </asp:ListItem>
                        <asp:ListItem Selected="true" Value="Ocular"> Ocular</asp:ListItem>
                        <asp:ListItem Selected="false" Value="Otras"> Otras </asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <div class="send" >
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" CssClass="btnSend" />
        </div>
    </form>
</body>
</html>
