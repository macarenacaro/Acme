<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GesPresta.Default" %>

<%@ Register Src="Cabecera.ascx" TagName="Cabecera" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="style.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
        <div class="default">
            La corporación ACME está comprometida con sus empleados. Para ello ha establecido una serie de presentaciones que 
        pueden utilizar sus empleados para obtener ayudas sociales asociados a diversos gastos de tipo familiar, médico, etc. 
         <br />
            <br />
            Esta aplicación a través de Web permite realizar todas las tareas de gestión relacionadas con la prestación de ayudas a los empleados. 
         <br />
            <br />
            Para cualquier duda o consulta puede contactar con el Departamento de Ayuda Social:
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="http://www.microsoft.com">ayuda.social@acme.com</asp:HyperLink>
        </div>
    </form>

</body>
</html>
