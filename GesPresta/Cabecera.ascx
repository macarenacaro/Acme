<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.WebUserControl1" %>
<link href="estilos.css" rel="stylesheet" type="text/css" /> 

<form id="form1" runat="server">
<nav>
<ul style="margin-left: 0px">
<li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.microsoft.com">Inicio</asp:HyperLink></li>
<li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.microsoft.com">Empleados</asp:HyperLink></li>
<li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="http://www.microsoft.com"> Prestaciones</asp:HyperLink></li>
</ul>
</nav>
<br />

<div id="top">
<asp:Label  runat="server" Text="ACME INNOVACIÓN, S. FIG" CssClass="h1" ></asp:Label>
<br />
<asp:Label runat="server" Text="Gestión de Prestaciones Sociales" CssClass="h2"></asp:Label>
</div>






</form>









