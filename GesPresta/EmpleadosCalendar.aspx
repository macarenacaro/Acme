<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpleadosCalendar.aspx.cs" Inherits="GesPresta.EmpleadosCalendar" %>

<%@ Register Src="Cabecera.ascx" TagName="Cabecera" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="style.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server"  class="formulario">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
        <div class="txtEmp">
            <asp:Label ID="Label1" runat="server" Text="DATOS DE LOS EMPLEADOS" ></asp:Label>
            <br />
        </div>

        
        <asp:Table ID="Table1" runat="server" Width="90%">
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
                    <asp:TextBox ID="txtFnaEmp" runat="server" CssClass="txtBox" OnTextChanged="TextChanged_txt" AutoPostBack="true"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Fecha de Ingreso"> </asp:TableCell>        
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtFinEmp" runat="server" CssClass="txtBox" OnTextChanged="TextChanged_txt" AutoPostBack="true"></asp:TextBox>
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
        
        

      
            <asp:Table ID="Table2" runat="server"  Width="90%" >
                <asp:TableRow runat="server">

                    <asp:TableCell runat="server" Width="20%">
                        <asp:Label ID="Label2" runat="server" Text="Fecha de Nacimiento" CssClass="lbl"></asp:Label> <br />
                        <asp:TextBox ID="txtNac" runat="server" OnTextChanged="TextChanged_txt" AutoPostBack="true"></asp:TextBox><br />
                         <asp:Label ID="lblError1" runat="server" Text="" CssClass="lblError"></asp:Label> <br /><br />
                         <asp:Label ID="lblError3" runat="server" Text="" CssClass="lblError"></asp:Label> <br /><br />


                    </asp:TableCell>

                    <asp:TableCell runat="server">
                        <asp:Calendar ID="CalendarBorn" runat="server" Width="20%" Font-Size="Small" DayHeaderStyle-BackColor="#99CCFF" SelectedDayStyle-BackColor="#6699FF" WeekendDayStyle-BackColor="#FFFF99" OtherMonthDayStyle-BackColor="#E1E1E1" TitleStyle-BackColor="#000099" TitleStyle-ForeColor="white"  OnSelectionChanged="CalendarBorn_SelectionChanged" ></asp:Calendar>
                    </asp:TableCell>

                    <asp:TableCell runat="server" Text=" ">      </asp:TableCell>

                    <asp:TableCell runat="server" Width="20%">
                         <asp:Label ID="Label3" runat="server" Text="Fecha de Ingreso" CssClass="lbl"></asp:Label> <br />
                        <asp:TextBox ID="cFinEmp" runat="server" OnTextChanged="TextChanged_txt" AutoPostBack="true"></asp:TextBox><br />
                        <asp:Label ID="lblError2" runat="server" Text="" CssClass="lblError"></asp:Label> <br />

                    </asp:TableCell>

                    <asp:TableCell runat="server">
                   <asp:Calendar ID="CalendarIngr" runat="server" Width="20%" Font-Size="Small" DayHeaderStyle-BackColor="#99CCFF" SelectedDayStyle-BackColor="#6699FF" WeekendDayStyle-BackColor="#FFFF99" OtherMonthDayStyle-BackColor="#E1E1E1" TitleStyle-BackColor="#000099" TitleStyle-ForeColor="white"  OnSelectionChanged="CalendarIngr_SelectionChanged"  ValueToCompare="text"></asp:Calendar>
                    </asp:TableCell>


                    <asp:TableCell runat="server">
                        <asp:Label ID="Label4" runat="server" Text="Antiguedad:" CssClass="lbl"></asp:Label> <br />
                        <asp:TextBox ID="txtAños" runat="server" Width="50px" OnTextChanged="TextChanged_txt" AutoPostBack="true"></asp:TextBox>
                         <asp:Label ID="lblAños" runat="server" Text="  Años" CssClass="lbl"></asp:Label> <br />
                         <asp:TextBox ID="TxtMeses" runat="server" Width="50px" OnTextChanged="TextChanged_txt" AutoPostBack="true"></asp:TextBox>
                         <asp:Label ID="lblMeses" runat="server" Text="  Meses" CssClass="lbl"></asp:Label> <br />
                         <asp:TextBox ID="txtDias" runat="server" Width="50px" OnTextChanged="TextChanged_txt" AutoPostBack="true"></asp:TextBox>
                         <asp:Label ID="lblDias" runat="server" Text="  Días" CssClass="lbl"></asp:Label> <br />

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
