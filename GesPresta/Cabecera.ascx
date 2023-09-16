<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.WebUserControl1" %>
<link href="style.css" rel="stylesheet" type="text/css" /> 

<asp:Panel ID="Panel1" runat="server">
<div runat="server" style="text-align: center">
<ul style="margin-left: 0px" runat="server">
<li><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Inicio</asp:LinkButton></li>
<li><asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Empleados.aspx">Empleados</asp:LinkButton></li>
<li><asp:LinkButton ID="LinkButton3" runat="server" NavigateUrl="http://www.microsoft.com"> Prestaciones</asp:LinkButton></li>
</ul>
</div>

<div runat="server" style="text-align: center; padding-bottom:10px">
<asp:Label  runat="server" Text="ACME INNOVACIÓN, S. FIG" style="font-size: 45px"></asp:Label>
<br />
<asp:Label runat="server" Text="Gestión de Prestaciones Sociales" style="font-size: 25px;letter-spacing:-2px;"></asp:Label>
<hr>
</div>

  </asp:Panel>


















