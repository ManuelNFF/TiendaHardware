<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarProductos.aspx.cs" Inherits="Vistas.EliminarProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 65px;
            width: 1464px;
        }
        .auto-style12 {
            width: 10%;
        }
        .auto-style15 {
            width: 10%;
            height: 26px;
        }
        .auto-style9 {
            width: 10%;
            height: 23px;
        }
        .auto-style30 {
            width: 340px;
            font-size: small;
        }
        .auto-style31 {
            width: 340px;
            height: 26px;
        }
        .auto-style32 {
            width: 340px;
        }
        .auto-style33 {
            width: 340px;
            height: 23px;
        }
        .auto-style37 {
            width: 395px;
            font-size: small;
        }
        .auto-style38 {
            width: 395px;
            height: 26px;
        }
        .auto-style39 {
            width: 395px;
            height: 23px;
        }
        .auto-style41 {
            width: 395px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style8 {
            height: 23px;
            text-align: center;
        }
        .auto-style45 {
            width: 10%;
            height: 23px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="5">
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style8">
                    <asp:HyperLink ID="hlInicio0" runat="server" NavigateUrl="~/Inicio.aspx">Volver a Inicio</asp:HyperLink>
                            </td>
                            <td class="auto-style8">
                    <asp:HyperLink ID="hlAdmin0" runat="server" NavigateUrl="~/ListadoArticulos.aspx">Listado de Artículos</asp:HyperLink>
                            </td>
                            <td class="auto-style8">
                    <asp:HyperLink ID="hlAgregar0" runat="server" NavigateUrl="~/AgregarProductos.aspx">Agregar Productos</asp:HyperLink>
                            </td>
                            <td class="auto-style8">
                    <asp:HyperLink ID="hlModificar0" runat="server" NavigateUrl="~/ModificarProductos.aspx">Modificar Productos</asp:HyperLink>
                            </td>
                            <td class="auto-style8">
                    <asp:HyperLink ID="hlEliminar0" runat="server" NavigateUrl="~/EliminarProductos.aspx">Eliminar Productos</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style45">&nbsp;</td>
                            <td class="auto-style45"><asp:HyperLink ID="hlListCategorias0" runat="server" NavigateUrl="~/ListadoCategorias.aspx">Listado de Categorías</asp:HyperLink>
                            </td>
                            <td class="auto-style45">
                    <asp:HyperLink ID="hlAgregarCategoria0" runat="server" NavigateUrl="~/AgregarCat.aspx">Agregar Categorias</asp:HyperLink>
                            </td>
                            <td class="auto-style45">
                    <asp:HyperLink ID="hlModificarCategoria0" runat="server" NavigateUrl="~/ModificarCat.aspx">Modificar Categorias</asp:HyperLink>
                            </td>
                            <td class="auto-style45">
                    <asp:HyperLink ID="hlEliminarCategoria0" runat="server" NavigateUrl="~/EliminarCat.aspx">Eliminar Categorias</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style37">
                    <h1>Eliminar Producto</h1>
                </td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td aria-atomic="False" class="auto-style38">
                    <br />
                    Ingrese el ID del producto que desea ELIMINAR:</td>
                <td aria-atomic="False" class="auto-style31">
                    <br />
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="txtID" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtID" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9]+$">*Debe ingresar un número</asp:RegularExpressionValidator>
                    &nbsp;
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" Width="90px" />
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style33">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style39">
                    <asp:Label ID="lblMostrarInfoID" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td class="auto-style9">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style41">
                    <asp:Label ID="lblCorroborar" runat="server" Text="¿Está segur@ que desea eliminar este producto?" Visible="False"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:Button ID="btnSeguro" runat="server" OnClick="btnSeguro_Click" Text="Estoy segur@" Visible="False" />
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
