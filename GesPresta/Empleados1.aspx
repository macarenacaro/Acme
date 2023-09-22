<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados1.aspx.cs" Inherits="GesPresta.Empleados1" %>

<%@ Register Src="Cabecera.ascx" TagName="Cabecera" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="style.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
        <div class="txtEmp">
            <asp:Label ID="Label1" runat="server" Text="DATOS DE LOS EMPLEADOS" ></asp:Label>
            <br />
        </div>

        <asp:Table ID="Table1" runat="server" Width="100%">
            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Código Empleado"> </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtCodEmp" runat="server" CssClass="txtBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="NIF"> </asp:TableCell>               
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtNifEmp" runat="server" CssClass="txtBox" ></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Apellidos y Nombre"> </asp:TableCell>              
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtNomEmp" runat="server" CssClass="txtBox"  Width="600"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Dirección" > </asp:TableCell>       
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtDirEmp" runat="server" CssClass="txtBox"  Width="650"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Ciudad"> </asp:TableCell>                
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtCiuEmp" runat="server" CssClass="txtBox" Width="650"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Teléfonos"> </asp:TableCell>               
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtTelEmp" runat="server" CssClass="txtBox" Width="400"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Fecha de Nacimiento"> </asp:TableCell>                 
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtFnaEmp" runat="server" CssClass="txtBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Fecha de Ingreso"> </asp:TableCell>        
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtFinEmp" runat="server" CssClass="txtBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Sexo"> </asp:TableCell>            
                <asp:TableCell runat="server">
                    <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="horizontal" CssClass="rbtBtnLst">
                        <asp:ListItem Value="H" Selected="true">Hombre</asp:ListItem>
                        
                        <asp:ListItem Value="M" >Mujer</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Departamento"> </asp:TableCell>                
                <asp:TableCell runat="server">
                    <asp:DropDownList ID="ddlDepEmp" runat="server" CssClass="drpDown">
                        <asp:ListItem Selected="true" Value="Investigación"> Investigación</asp:ListItem>
                        <asp:ListItem Selected="false" Value="Desarrollo"> Desarrollo </asp:ListItem>
                        <asp:ListItem Selected="false" Value="Innovación"> Innovación </asp:ListItem>
                        <asp:ListItem Selected="false" Value="Administración"> Administración </asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <div class="send" >
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" CssClass="btnSend" OnClick="cmd_Enviar" />
        </div>
        <div class="val">
        <asp:Label ID="lblValores" runat="server" Text="Label" BackColor="#66FFFF" Width="60%" Visible="False" ></asp:Label>
        </div>
    </form>

</body>
</html>
