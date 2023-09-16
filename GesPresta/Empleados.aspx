<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
        <asp:Panel ID="Panel1" runat="server" style="text-align: center">
            <asp:Label ID="Label1" runat="server" Text="DATOS DE LOS EMPLEADOS" Font-Size="X-Large"></asp:Label>
            <br /><br />
        </asp:Panel>
   
        <asp:Table ID="Table1" runat="server" Width="100%">
            <asp:TableRow runat="server" height="40px">
                <asp:TableCell runat="server" style="width: 330px ; text-align:right" Text="Código Empleado"> </asp:TableCell>
                <asp:TableCell runat="server" style="width: 30px" Text=" "></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtCodEmp" runat="server" Width="250"  Height= "25px" BorderColor="#3366CC" BorderStyle="Solid"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" height="40px">
                <asp:TableCell runat="server" style="width: 330px ; text-align:right" Text="NIF"> </asp:TableCell>
                <asp:TableCell runat="server" style="width: 30px" Text=" "></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtNifEmp" runat="server" Width="250" Height= "25px" BorderColor="#3366CC" BorderStyle="Solid"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

              <asp:TableRow runat="server" height="40px">
                <asp:TableCell runat="server" style="width: 330px ; text-align:right" Text="Apellidos y Nombre"> </asp:TableCell>
                <asp:TableCell runat="server" style="width: 30px" Text=" "></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtNomEmp" runat="server" Width="250" Height= "25px" BorderColor="#3366CC" BorderStyle="Solid"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
              <asp:TableRow runat="server" height="40px">
                <asp:TableCell runat="server" style="width: 330px ; text-align:right" Text="Dirección"> </asp:TableCell>
                <asp:TableCell runat="server" style="width: 30px" Text=" "></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtDirEmp" runat="server" Width="250" Height= "25px" BorderColor="#3366CC" BorderStyle="Solid"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

              <asp:TableRow runat="server" height="40px">
                <asp:TableCell runat="server" style="width: 330px ; text-align:right" Text="Ciudad"> </asp:TableCell>
                <asp:TableCell runat="server" style="width: 30px" Text=" "></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtCiuEmp" runat="server" Width="250" Height= "25px" BorderColor="#3366CC" BorderStyle="Solid"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

              <asp:TableRow runat="server" height="40px">
                <asp:TableCell runat="server" style="width: 330px ; text-align:right" Text="Teléfonos"> </asp:TableCell>
                <asp:TableCell runat="server" style="width: 30px" Text=" "></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtTelEmp" runat="server" Width="250" Height= "25px" BorderColor="#3366CC" BorderStyle="Solid"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

              <asp:TableRow runat="server" height="40px">
                <asp:TableCell runat="server" style="width: 330px ; text-align:right" Text="Fecha de Nacimiento"> </asp:TableCell>
                <asp:TableCell runat="server" style="width: 30px" Text=" "></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtFnaEmp" runat="server" Width="250" Height= "25px" BorderColor="#3366CC" BorderStyle="Solid"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

              <asp:TableRow runat="server" height="40px">
                <asp:TableCell runat="server" style="width: 330px ; text-align:right" Text="Fecha de Ingreso"> </asp:TableCell>
                <asp:TableCell runat="server" style="width: 30px" Text=" "></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtFinEmp" runat="server" Width="250" Height= "25px" BorderColor="#3366CC" BorderStyle="Solid"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" height="40px">
                <asp:TableCell runat="server" style="width: 330px ; text-align:right" Text="Sexo"> </asp:TableCell>
                <asp:TableCell runat="server" style="width: 30px" Text=" "></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="horizontal">
                         <asp:ListItem Value="H" Selected="true">Hombre</asp:ListItem>
                        <asp:ListItem Value="M">Mujer</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>

             <asp:TableRow runat="server" height="40px">
                <asp:TableCell runat="server" style="width: 330px ; text-align:right" Text="Departamento"> </asp:TableCell>
                <asp:TableCell runat="server" style="width: 30px" Text=" "></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:DropDownList ID="ddlDepEmp" runat="server">
                        <asp:ListItem selected= "true" value= "Investigación"> Investigación</asp:ListItem>
                        <asp:ListItem selected= "false" value= "Desarrollo"> Desarrollo </asp:ListItem>
                        <asp:ListItem selected= "false" value= "Innovación"> Innovación </asp:ListItem>
                        <asp:ListItem selected= "false" value= "Administración"> Administración </asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
            <div style="text-align: center">
                 <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" style=" " />
            </div>
       
  
    </form>

</body>
</html>
