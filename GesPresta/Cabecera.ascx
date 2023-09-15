<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.WebUserControl1" %>
<link href="style.css" rel="stylesheet" type="text/css" /> 

<asp:Panel ID="Panel1" runat="server">
<div runat="server" style="text-align: center">
<ul style="margin-left: 0px" runat="server">
<li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.microsoft.com">Inicio</asp:HyperLink></li>
<li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.microsoft.com">Empleados</asp:HyperLink></li>
<li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="http://www.microsoft.com"> Prestaciones</asp:HyperLink></li>
</ul>
</div>

<div runat="server" style="text-align: center; padding-bottom:10px">
<asp:Label  runat="server" Text="ACME INNOVACIÓN, S. FIG" style="font-size: 45px"></asp:Label>
<br />
<asp:Label runat="server" Text="Gestión de Prestaciones Sociales" style="font-size: 25px;letter-spacing:-2px;"></asp:Label>
<hr>
</div>

  </asp:Panel>


















