<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmarCompra.aspx.cs" Inherits="Vistas.ConfirmarCompra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 87px;
        }
        .auto-style4 {
            width: 87px;
        }
        .auto-style7 {
            width: 87px;
            height: 137px;
        }
        .auto-style8 {
            width: 220px;
            height: 137px;
        }
        .auto-style9 {
            height: 137px;
        }
        .auto-style10 {
            height: 23px;
            width: 91px;
        }
        .auto-style12 {
            width: 91px;
        }
        .auto-style13 {
            height: 23px;
            width: 282px;
        }
        .auto-style14 {
            width: 282px;
            height: 137px;
        }
        .auto-style15 {
            width: 282px;
        }
        .auto-style16 {
            height: 23px;
            width: 220px;
        }
        .auto-style17 {
            width: 220px;
        }
        .auto-style18 {
            height: 23px;
            width: 212px;
        }
        .auto-style19 {
            width: 212px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style2" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="6">
                        <h1>&nbsp;&nbsp;&nbsp; Confirmar Compra</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style2" colspan="3">
                        <h2>Resúmen de Compra:</h2>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <asp:GridView ID="grdResumenCompra" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style9" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style14"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style16">Subtotal:&nbsp; 
                    </td>
                    <td class="auto-style18">
                        <asp:Label ID="lblSubtotal" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style16">Costo de Envío: </td>
                    <td class="auto-style18">
                        <asp:Label ID="lblCostoEnvio" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style16">Precio total:&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style18">
                        <asp:Label ID="lblTotal" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">
                        <h2>Información Personal</h2>
                    </td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td class="auto-style15">
                        <h2>Información sobre la Entrega</h2>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style16">Nombre</td>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="lblNombre" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13">Método de Entrega</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblEntrega" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">Apellido</td>
                    <td colspan="2">
                        <asp:Label ID="lblApellido" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style15">Provincia</td>
                    <td>
                        <asp:Label ID="lblProvincia" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">DNI</td>
                    <td colspan="2">
                        <asp:Label ID="lblDni" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style15">Localidad o Barrio</td>
                    <td>
                        <asp:Label ID="lblLocalidad" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">E-mail</td>
                    <td colspan="2">
                        <asp:Label ID="lblEmail" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style15">Calle/Avenida y Número</td>
                    <td>
                        <asp:Label ID="lblCalle" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style16">Teléfono</td>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="lblTelefono" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">Usuario</td>
                    <td colspan="2">
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style16">
                        <h2>Información sobre el Pago</h2>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td class="auto-style10"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style16">Forma de pago</td>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="lblFormaPago" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style16">
                        <asp:Label ID="lblTitularDeLaTarjeta" runat="server" Text="Titular de la tarjeta"></asp:Label>
                    </td>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="lblTitular" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style16">
                        <asp:Label ID="lvlNumeroDeTarjeta" runat="server" Text="Número de tarjeta"></asp:Label>
                    </td>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="lblNumeroTarjeta" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style16">
                        <asp:Label ID="lblFechaDeVencimiento" runat="server" Text="Fecha de vencimiento"></asp:Label>
                    </td>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="lblVencimiento" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Label ID="lblNumeroDeSeguridad" runat="server" Text="Número de seguridad"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblNumeroSeguridad" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar Compra" />
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblConfirmacion" runat="server" Text="¡Su compra se ha realizado con éxito!" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
