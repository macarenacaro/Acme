<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.WebUserControl1" %>
<link href="style.css" rel="stylesheet" type="text/css" />

<asp:Panel ID="Panel1" runat="server" CssClass="pnl">
    <div runat="server">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx" CssClass="lnkBtn" CausesValidation="False">Inicio</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Empleados.aspx" CssClass="lnkBtn" CausesValidation="False">Empleados</asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Prestaciones2.aspx" CssClass="lnkBtn" CausesValidation="False"> Prestaciones</asp:LinkButton>
    </div>

    <div runat="server" class="txt" >
        <asp:Label runat="server" Text="ACME INNOVACIÓN, S. FIG" CssClass="title"></asp:Label>
        <br/>
        <asp:Label runat="server" Text="Gestión de Prestaciones Sociales" CssClass="subtitle"></asp:Label>
        <hr>
    </div>

</asp:Panel>


















