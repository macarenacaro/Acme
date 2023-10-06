<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados" %>

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
                <asp:TableCell runat="server" CssClass="celName" Text="Código Empleado"> 
                <asp:TableCell runat="server">
                  <asp:TextBox ID="txtCodEmp" runat="server" CssClass="txtBox"></asp:TextBox> <asp:RequiredFieldValidator ID="rqdTxtCodEmp" runat="server" ErrorMessage="El código es obligatorio" ControlToValidate="txtCodEmp"  CssClass="obligacion" ></asp:RequiredFieldValidator>
                </asp:TableCell>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="NIF"> </asp:TableCell>               
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtNifEmp" runat="server" CssClass="txtBox" ></asp:TextBox> <asp:RequiredFieldValidator  ID="rqdTxtNifEmp" runat="server" ErrorMessage="El NIF es obligatorio" ControlToValidate="txtNifEmp"  CssClass="obligacion" ></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Apellidos y Nombre"> </asp:TableCell>              
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtNomEmp" runat="server" CssClass="txtBox"  Width="600"></asp:TextBox><asp:RequiredFieldValidator  ID="rqdTxtNomEmp" runat="server" ErrorMessage="El nombre y apellido es obligatorio" ControlToValidate="txtNomEmp"  CssClass="obligacion" ></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Dirección" > </asp:TableCell>       
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtDirEmp" runat="server" CssClass="txtBox"  Width="650"></asp:TextBox> <asp:RequiredFieldValidator  ID="rqdTxtDirEmp" runat="server" ErrorMessage="La dirección es obligatoria" ControlToValidate="txtDirEmp"  CssClass="obligacion" ></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Ciudad"> </asp:TableCell>                
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtCiuEmp" runat="server" CssClass="txtBox" Width="650"></asp:TextBox> <asp:RequiredFieldValidator   ID="rqdTxtCiuEmp" runat="server" ErrorMessage="La ciudad es obligatoria" ControlToValidate="txtCiuEmp"  CssClass="obligacion" ></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Teléfonos"> </asp:TableCell>               
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtTelEmp" runat="server" CssClass="txtBox" Width="400"></asp:TextBox> <asp:RequiredFieldValidator   ID="rqdTxtTelEmp" runat="server" ErrorMessage="El número de telefono es obligatorio" ControlToValidate="txtTelEmp"  CssClass="obligacion" ></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Fecha de Nacimiento"> </asp:TableCell>                 
                <asp:TableCell runat="server">
                   <asp:TextBox ID="txtFnaEmp" runat="server" CssClass="txtBox"></asp:TextBox> <asp:RequiredFieldValidator   ID="rqdTxtFnaEmp" runat="server" ErrorMessage="La fecha de nacimiento es obligatoria" ControlToValidate="txtFnaEmp"  CssClass="obligacion" ></asp:RequiredFieldValidator>
               <br />
                    <asp:CompareValidator ID="cmpTxtFnaEmp" runat="server" ErrorMessage="La Fecha de Ingreso del Empleado debe ser mayor que la Fecha de Nacimiento" ControlToValidate="txtFnaEmp" ControlToCompare="txtFinEmp" CssClass="compare" Type="Date" Operator="LessThan"></asp:CompareValidator>
                    </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Fecha de Ingreso"> </asp:TableCell>        
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtFinEmp" runat="server" CssClass="txtBox"></asp:TextBox> <asp:RequiredFieldValidator   ID="rqdTxtFinEmp" runat="server" ErrorMessage="La fecha de ingreso es obligatoria" ControlToValidate="txtFinEmp"  CssClass="obligacion" ></asp:RequiredFieldValidator>
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
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" CssClass="btnSend" />
        </div>


    </form>

</body>
</html>
