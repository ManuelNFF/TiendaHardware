<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Vistas.Inicio" %>

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
        .auto-style15 {
            width: 10%;
            height: 26px;
        }
        .auto-style9 {
            width: 10%;
            height: 23px;
        }
        .auto-style10 {
            width: 480px;
            height: 23px;
        }
        .auto-style20 {
            height: 23px;
            width: 26%;
        }
        .auto-style25 {
            width: 26%;
        }
        .auto-style26 {
            width: 480px;
            height: 26px;
        }
        .auto-style27 {
            height: 26px;
            width: 26%;
        }
        .auto-style28 {
            width: 480px;
        }
        .auto-style29 {
            margin-left: 94px;
        }
        .auto-style30 {
            width: 217px;
            font-size: small;
        }
        .auto-style31 {
            width: 217px;
            height: 26px;
        }
        .auto-style32 {
            width: 217px;
        }
        .auto-style33 {
            width: 217px;
            height: 23px;
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
            width: 26%;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style4">
                    <h1>Iniciar Sesión</h1>
                </td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td aria-atomic="False" class="auto-style26">&nbsp;&nbsp;Ingresar como
                    <asp:LinkButton ID="lbtAdministrador" runat="server" ForeColor="Black" OnClick="lbtAdministrador_Click">Administrador</asp:LinkButton>
                </td>
                <td aria-atomic="False" class="auto-style31">&nbsp;</td>
                <td class="auto-style27">Ingresar como
                    <asp:LinkButton ID="lbtComprador" runat="server" ForeColor="Black" OnClick="lbtComprador_Click">Comprador</asp:LinkButton>
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">&nbsp;&nbsp; </td>
                <td class="auto-style33"></td>
                <td class="auto-style20"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">&nbsp;<asp:Label ID="lblUsuarioAdmin" runat="server" Text="Usuario:" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtUsuarioAdmin" runat="server" ValidationGroup="Grupo1" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style33">
                    <asp:RequiredFieldValidator ID="rfvUsuarioAdmin" runat="server" ControlToValidate="txtUsuarioAdmin" ForeColor="Red" ValidationGroup="Grupo1">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style20">
                    <asp:Label ID="lblUsuarioComp" runat="server" Text="Usuario:" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtUsuarioComp" runat="server" ValidationGroup="Grupo2" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="rfvUsuarioComp" runat="server" ControlToValidate="txtUsuarioComp" ForeColor="Red" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
                    <asp:Label ID="lblErrorUsuarioComp" runat="server" ForeColor="Red" Text="*El nombre de usuario no existe" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style26">
                    <asp:Label ID="lblContraseñaAdmin" runat="server" Text="Contraseña:" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtContraseñaAdmin" runat="server" ValidationGroup="Grupo1" Visible="False" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style31">
                    <asp:RequiredFieldValidator ID="rfvContraseñaAdmin" runat="server" ControlToValidate="txtContraseñaAdmin" ForeColor="Red" ValidationGroup="Grupo1">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="lblContraseñaComp" runat="server" Text="Contraseña:" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtContraseñaComp" runat="server" ValidationGroup="Grupo2" Visible="False" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="rfvContraseñaComp" runat="server" ControlToValidate="txtContraseñaComp" ForeColor="Red" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
                    <asp:Label ID="lblErrorContraseñaComp" runat="server" ForeColor="Red" Visible="False">*La contraseña no coincide con el usuario</asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style35">
                    <asp:Button ID="btnIngresarAdmin" runat="server" CssClass="auto-style29" Text="INGRESAR" ValidationGroup="Grupo1" Visible="False" Width="90px" OnClick="btnIngresarAdmin_Click" />
                </td>
                <td class="auto-style36"></td>
                <td class="auto-style37">
                    <asp:Button ID="btnIngresarComp" runat="server" CssClass="auto-style29" Text="INGRESAR" ValidationGroup="Grupo2" Visible="False" Width="90px" OnClick="btnIngresarComp_Click" />
                </td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style35">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td class="auto-style36"></td>
                <td class="auto-style37">
                    &nbsp;
                    <asp:HyperLink ID="hlModificarUsuario" runat="server" Font-Bold="True" ForeColor="Black" NavigateUrl="~/ModificarUsuario.aspx" Visible="False">¿Olvidó su nombre de usuario o contraseña?</asp:HyperLink>
                </td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                </td>
                <td class="auto-style33"></td>
                <td class="auto-style20">
                    <asp:Label ID="lbl1" runat="server" Text="¿No tienes una cuenta?  " Visible="False"></asp:Label>
                    <asp:HyperLink ID="hlCrearUsuario" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Black" NavigateUrl="~/CrearUsuario.aspx" Visible="False"> Crea una.</asp:HyperLink>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style28">
                    &nbsp;</td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
