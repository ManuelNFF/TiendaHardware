<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarUsuario.aspx.cs" Inherits="Vistas.ModificarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 65px;
        }
        .auto-style20 {
            height: 23px;
            width: 25%;
        }
        .auto-style33 {
            width: 340px;
            height: 23px;
        }
        .auto-style44 {
            width: 462px;
        }
        .auto-style45 {
            width: 462px;
            height: 26px;
        }
        .auto-style46 {
            width: 429px;
            height: 26px;
        }
        .auto-style47 {
            width: 429px;
        }
        .auto-style49 {
            width: 400px;
            height: 23px;
        }
        .auto-style58 {
            width: 260px;
        }
        .auto-style59 {
            width: 260px;
            height: 26px;
        }
        .auto-style60 {
            width: 260px;
            height: 23px;
        }
        .auto-style61 {
            width: 400px;
            height: 26px;
        }
        .auto-style62 {
            width: 400px;
        }
        .auto-style63 {
            width: 260px;
            height: 27px;
        }
        .auto-style64 {
            width: 400px;
            height: 27px;
        }
        .auto-style65 {
            width: 340px;
            height: 27px;
        }
        .auto-style66 {
            height: 27px;
            width: 25%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="hlInicio" runat="server" NavigateUrl="~/Inicio.aspx">Volver a Inicio</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style58">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        &nbsp;</td>
                    <td class="auto-style58">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reestablecer Usuario y Contraseña</h1>
                    </td>
                    <td class="auto-style58">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style59"></td>
                    <td aria-atomic="False" colspan="3">Para reestablecer sus datos de usuario y contraseña, primero debemos corroborar su identidad con su DNI. Si lo encomtramos en la base de datos, podrá modificar el nombre de usuario y la contraseña y acceder de nuevo.</td>
                    <td aria-atomic="False" class="auto-style58">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style59"></td>
                    <td aria-atomic="False" class="auto-style61">DNI:&nbsp;&nbsp;&nbsp; </td>
                    <td aria-atomic="False" class="auto-style45">
                        <asp:TextBox ID="txtDNI" runat="server" ValidationGroup="1" Width="170px"></asp:TextBox>
                    </td>
                    <td aria-atomic="False" class="auto-style46">
                        <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNI" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                        <asp:Label ID="lblErrorDNI" runat="server" ForeColor="Red" Text="*No existe registros de una cuenta creada a partir del número de DNI ingresado" Visible="False"></asp:Label>
                    </td>
                    <td aria-atomic="False" class="auto-style59">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style59">&nbsp;</td>
                    <td aria-atomic="False" class="auto-style62">&nbsp;</td>
                    <td aria-atomic="False" class="auto-style44">
                        <asp:Button ID="btnBuscarDNI" runat="server" OnClick="btnBuscarDNI_Click" Text="Buscar DNI" ValidationGroup="1" Width="110px" />
                    </td>
                    <td aria-atomic="False" class="auto-style47">&nbsp;</td>
                    <td aria-atomic="False" class="auto-style58">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style59">&nbsp;</td>
                    <td aria-atomic="False" class="auto-style62">
                        <asp:Label ID="lblMensaje" runat="server" Font-Overline="False" Text="Los datos se han reestablecido correctamente" Visible="False"></asp:Label>
                    </td>
                    <td aria-atomic="False" class="auto-style44">&nbsp;</td>
                    <td aria-atomic="False" class="auto-style47">&nbsp;</td>
                    <td aria-atomic="False" class="auto-style58">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style59">&nbsp;</td>
                    <td aria-atomic="False" class="auto-style62">
                        <asp:Label ID="lbl" runat="server" Text="DNI:" Visible="False"></asp:Label>
                    </td>
                    <td aria-atomic="False" class="auto-style44">
                        <asp:Label ID="lblDNI" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td aria-atomic="False" class="auto-style47">&nbsp;</td>
                    <td aria-atomic="False" class="auto-style58">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60"></td>
                    <td class="auto-style49">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre Usuario:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txtUsuario" runat="server" ValidationGroup="2" Visible="False" Width="170px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ForeColor="Red" ValidationGroup="2">*</asp:RequiredFieldValidator>
                        <asp:Label ID="lblErrorUsuario" runat="server" ForeColor="Red" Text="*El usuario ya se encuentra en uso" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style60">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style63"></td>
                    <td class="auto-style64">
                        <asp:Label ID="lblContra1" runat="server" Text="Contraseña Nueva:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style65">
                        <asp:TextBox ID="txtContra1" runat="server" TextMode="Password" ValidationGroup="2" Visible="False" Width="170px"></asp:TextBox>
                    </td>
                    <td class="auto-style66">
                        <asp:RequiredFieldValidator ID="rfvContra1" runat="server" ControlToValidate="txtContra1" ForeColor="Red" ValidationGroup="2">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style63">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style58">&nbsp;</td>
                    <td class="auto-style62">
                        <asp:Label ID="lblContra2" runat="server" Text="Repita la Contraseña:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txtContra2" runat="server" TextMode="Password" ValidationGroup="2" Visible="False" Width="170px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvContra2" runat="server" ControlToValidate="txtContra2" ForeColor="Red" ValidationGroup="2">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvContraseñas" runat="server" ControlToCompare="txtContra1" ControlToValidate="txtContra2" ForeColor="Red" ValidationGroup="2">*Las CONTRASEÑAS no coinciden</asp:CompareValidator>
                    </td>
                    <td class="auto-style60">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style58">&nbsp;</td>
                    <td class="auto-style62">&nbsp;</td>
                    <td class="auto-style33">
                        <asp:Button ID="btnReestablecer" runat="server" OnClick="btnReestablecer_Click" Text="Reestablecer Datos" ValidationGroup="2" Visible="False" Width="170px" />
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                    <td class="auto-style60">
                        &nbsp;</td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
