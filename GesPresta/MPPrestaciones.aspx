<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPPrestaciones.aspx.cs" Inherits="GesPresta.MPPrestaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="txtEmp">
            <asp:Label ID="Label1" runat="server" Text="DATOS DE LAS PRESTACIONES" ></asp:Label>
            <br />
        </div>

              <asp:Table ID="Table1" runat="server" Width="100%">
            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Código Prestación"> </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtCodPre" runat="server" CssClass="txtBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Descripción"> </asp:TableCell>               
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtDesPre" runat="server" CssClass="txtBox" Width="650"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Importe Fijo"> </asp:TableCell>              
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtImpPre" runat="server" CssClass="txtBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Porcentaje del Importe"> </asp:TableCell>       
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtPorPre" runat="server" CssClass="txtBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>       

            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" CssClass="celName" Text="Tipo de Prestación"> </asp:TableCell>                
                <asp:TableCell runat="server">
                    <asp:DropDownList ID="ddlTipPre" runat="server" CssClass="drpDown">
                        <asp:ListItem Selected="false" Value="Dentaria"> Dentaria </asp:ListItem>
                        <asp:ListItem Selected="false" Value="Familiar"> Familiar </asp:ListItem>
                        <asp:ListItem Selected="true" Value="Ocular"> Ocular</asp:ListItem>
                        <asp:ListItem Selected="false" Value="Otras"> Otras </asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <div class="send" >
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" CssClass="btnSend" />
        </div>
</asp:Content>
