<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comprar.aspx.cs" Inherits="Vistas.Comprar" %>

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
            width: 116px;
        }
        .auto-style3 {
            width: 116px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
            width: 249px;
        }
        .auto-style8 {
            width: 249px;
        }
        .auto-style9 {
            height: 23px;
            width: 275px;
        }
        .auto-style10 {
            width: 275px;
        }
        .auto-style11 {
            height: 23px;
            width: 143px;
        }
        .auto-style12 {
            width: 143px;
        }
        .auto-style13 {
            height: 23px;
            width: 262px;
        }
        .auto-style14 {
            width: 262px;
        }
        .auto-style15 {
            width: 116px;
            height: 26px;
        }
        .auto-style16 {
            width: 262px;
            height: 26px;
        }
        .auto-style17 {
            width: 249px;
            height: 26px;
        }
        .auto-style18 {
            width: 275px;
            height: 26px;
        }
        .auto-style19 {
            width: 143px;
            height: 26px;
        }
        .auto-style20 {
            height: 26px;
        }
        .auto-style21 {
            width: 116px;
            height: 30px;
        }
        .auto-style22 {
            width: 262px;
            height: 30px;
        }
        .auto-style23 {
            width: 249px;
            height: 30px;
        }
        .auto-style24 {
            width: 275px;
            height: 30px;
        }
        .auto-style25 {
            width: 143px;
            height: 30px;
        }
        .auto-style26 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style13">
                        <h1>Comprar</h1>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style14">
                        <h2>Información Personal</h2>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">
                        <h2>Información para la entrega</h2>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style9">
                        <asp:Label ID="lblErrorEntrega" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style13">Nombre:</td>
                    <td class="auto-style7">
                        <asp:Label ID="lblNombre" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">Seleccione el método de entrega:</td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="ddlEntrega" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEntrega_SelectedIndexChanged">
                            <asp:ListItem>-- Seleccionar --</asp:ListItem>
                            <asp:ListItem Value="Retiro por Local">Retiro por Local</asp:ListItem>
                            <asp:ListItem Value="Entrega a Domicilio">Entrega a Domicilio</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style13">Apellido:</td>
                    <td class="auto-style7">
                        <asp:Label ID="lblApellido" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="lblProvincia" runat="server" Text="Provincia:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtProvincia" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="txtProvincia" Enabled="False" ForeColor="Red">*Completar Campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style13">DNI:</td>
                    <td class="auto-style7">
                        <asp:Label ID="lblDni" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="lblLocalidad" runat="server" Text="Localidad o Barrio:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtLocalidad" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" Enabled="False" ForeColor="Red">*Completar Campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style14">E-Mail:</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblEmail" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="lblCalle" runat="server" Text="Calle/Avenida y Número:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtCalle" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvCalle" runat="server" ControlToValidate="txtCalle" Enabled="False" ForeColor="Red">*Completar Campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style14">Teléfono:</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblTelefono" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style13">Usuario:</td>
                    <td class="auto-style7">
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22">
                        <h2>Información para el pago</h2>
                    </td>
                    <td class="auto-style23"></td>
                    <td class="auto-style24"></td>
                    <td class="auto-style25"></td>
                    <td class="auto-style26"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblErrorPago" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style16">
                        Forma de Pago:</td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="ddlFormaDePago" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlFormaDePago_SelectedIndexChanged">
                            <asp:ListItem>-- Seleccionar --</asp:ListItem>
                            <asp:ListItem>Efectivo</asp:ListItem>
                            <asp:ListItem>Tarjeta de Cr&#233;dito</asp:ListItem>
                            <asp:ListItem>Tarjeta de Débito</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style13">
                        <asp:Label ID="lblTitularTarjeta" runat="server" Text="Titular de la tarjeta:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtTitular" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="rfvTitular" runat="server" ControlToValidate="txtTitular" Enabled="False" ForeColor="Red">*Completar Campo</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style16">
                        <asp:Label ID="lblNumeroTarjeta" runat="server" Text="Número de tarjeta:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtNumeroTarjeta" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="rfvNumTarjeta" runat="server" ControlToValidate="txtNumeroTarjeta" Enabled="False" ForeColor="Red">*Completar Campo</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style13">
                        <asp:Label ID="lblVencimiento" runat="server" Text="Fecha de vencimiento:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtVencimiento" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="rfvVencimiento" runat="server" ControlToValidate="txtVencimiento" Enabled="False" ForeColor="Red">*Completar Campo</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblNumeroSeguridad" runat="server" Text="Número de seguridad:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtNumeroSeguridad" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="rfvNumSeguridad" runat="server" ControlToValidate="txtNumeroSeguridad" Enabled="False" ForeColor="Red">*Completar Campo</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:Button ID="btnSiguiente" runat="server" OnClick="btnSiguiente_Click" Text="Siguiente" />
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style4"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
