﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPDefault.aspx.cs" Inherits="GesPresta.MPDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
