<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Vistas.Carrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 65px;
            width: 1019px;
        }
        .auto-style12 {
            width: 10%;
        }
        .auto-style25 {
            width: 21%;
        }
        .auto-style30 {
            font-size: small;
            height: 40px;
        }
        .auto-style32 {
            width: 340px;
        }
        .auto-style38 {
            width: 285px;
            font-size: small;
            height: 40px;
        }
        .auto-style42 {
            width: 285px;
        }
        .auto-style43 {
            width: 10%;
            height: 40px;
        }
        .auto-style45 {
            width: 16%;
            height: 40px;
        }
        .auto-style46 {
            width: 16%;
        }
        .auto-style47 {
            width: 5%;
        }
        .auto-style48 {
            width: 5%;
            height: 40px;
        }
        .auto-style49 {
            width: 10%;
            height: 23px;
        }
        .auto-style50 {
            width: 285px;
            height: 23px;
        }
        .auto-style51 {
            width: 340px;
            height: 23px;
        }
        .auto-style52 {
            width: 21%;
            height: 23px;
        }
        .auto-style53 {
            width: 16%;
            height: 23px;
        }
        .auto-style54 {
            width: 5%;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="5">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43"></td>
                <td class="auto-style38">
                    <h1>Mi Carrito</h1>
                </td>
                <td class="auto-style30" colspan="2">
                    <asp:HyperLink ID="hlSeguirComprando" runat="server" ForeColor="#000066" NavigateUrl="~/InicioComprador.aspx">Seguir Comprando</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="hlInicio" runat="server" ForeColor="#000066" NavigateUrl="~/Inicio.aspx">Cerrar Sesión</asp:HyperLink>
                </td>
                <td class="auto-style45"></td>
                <td class="auto-style48">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style42">
                    <asp:GridView ID="grdCarrito" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style42">
                    <asp:LinkButton ID="lbIngresarCup" runat="server" Font-Bold="True" ForeColor="Black" OnClick="LbIngresarCup_Click">Ingresar código de cupón</asp:LinkButton>
                </td>
                <td colspan="3">
                    Cada compra puede tener un solo cupón aplicado.</td>
                <td class="auto-style47">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style42">
                    &nbsp;</td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtCupon" runat="server" Width="140px" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style25">
                    <asp:Button ID="btnAgregarCupon" runat="server" OnClick="btnAplicar_Click" Text="Aplicar" Visible="False" />
                </td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style50"></td>
                <td class="auto-style51">
                    <asp:Label ID="lblError" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style52"></td>
                <td class="auto-style53"></td>
                <td class="auto-style54"></td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnEliminarTodos" runat="server" Text="Eliminar Todos" OnClick="btnEliminarTodos_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnComprar" runat="server" Text="Comprar" Width="130px" OnClick="btnComprar_Click" />
                </td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
