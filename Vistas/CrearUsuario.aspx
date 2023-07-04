<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="Vistas.CrearUsuario2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            height: 65px;
        }
        .auto-style12 {
            width: 10%;
        }
        .auto-style4 {
            width: 480px;
            font-size: small;
        }
        .auto-style30 {
            width: 217px;
            font-size: small;
        }
        .auto-style25 {
            width: 40%;
        }
        .auto-style15 {
            width: 10%;
            height: 26px;
        }
        .auto-style26 {
            width: 480px;
            height: 26px;
        }
        .auto-style31 {
            width: 217px;
            height: 26px;
        }
        .auto-style27 {
            height: 26px;
            width: 40%;
        }
        .auto-style9 {
            width: 10%;
            height: 23px;
        }
        .auto-style10 {
            width: 480px;
            height: 23px;
        }
        .auto-style33 {
            width: 217px;
            height: 23px;
        }
        .auto-style20 {
            height: 23px;
            width: 40%;
        }
        .auto-style34 {
            width: 10%;
            height: 30px;
        }
        .auto-style35 {
            width: 480px;
            height: 30px;
        }
        .auto-style36 {
            width: 217px;
            height: 30px;
        }
        .auto-style37 {
            width: 40%;
            height: 30px;
        }
        .auto-style28 {
            width: 480px;
        }
        .auto-style32 {
            width: 217px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style4">
                        <h1>Crear Usuario</h1>
                    </td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td aria-atomic="False" class="auto-style26">Nombre:</td>
                    <td aria-atomic="False" class="auto-style31">
                        <asp:TextBox ID="txtNombre" runat="server" Width="180px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">Apellido:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txtApellido" runat="server" Width="180px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">DNI:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txtDNI" runat="server" TextMode="Number" Width="180px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style20"><asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNI" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                        <asp:Label ID="lblErrorDNI" runat="server" ForeColor="Red" Text="*Ya existe una cuenta con este DNI" Visible="False"></asp:Label>
                        &nbsp; </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style26">Correo Electrónico:</td>
                    <td class="auto-style31">
                        <asp:TextBox ID="txtCorreo" runat="server" TextMode="Email" Width="180px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style34"></td>
                    <td class="auto-style35">Teléfono:</td>
                    <td class="auto-style36">
                        <asp:TextBox ID="txtTel" runat="server" Width="180px" Height="22px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style37">
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTel" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style34"></td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">Usuario:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txtUsuario" runat="server" Width="179px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                        <asp:Label ID="lblErrorUsuario" runat="server" ForeColor="Red" Text="*El USUARIO ya está en uso" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">Contraseña:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txtContra1" runat="server" TextMode="Password" Width="179px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvContra1" runat="server" ControlToValidate="txtContra1" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">Repetir Contraseña:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txtContra2" runat="server" TextMode="Password" Width="179px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvContra2" runat="server" ControlToValidate="txtContra2" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvContraseñas" runat="server" ControlToCompare="txtContra1" ControlToValidate="txtContra2" ForeColor="Red" ValidationGroup="1">* Las CONTRASEÑAS no coinciden</asp:CompareValidator>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style32">
                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrarme" ValidationGroup="1" OnClick="btnRegistrar_Click" />
                    </td>
                    <td class="auto-style25">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
