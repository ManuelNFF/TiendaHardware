<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarCat.aspx.cs" Inherits="Vistas.EliminarCat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 369px;
            width: 1525px;
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
            width: 546px;
            font-size: small;
        }
        .auto-style31 {
            width: 546px;
            height: 26px;
        }
        .auto-style32 {
            width: 546px;
        }
        .auto-style33 {
            width: 546px;
            height: 23px;
        }
        .auto-style37 {
            width: 25%;
            height: 30px;
        }
        .auto-style38 {
            width: 285px;
            font-size: small;
        }
        .auto-style39 {
            width: 285px;
            height: 26px;
        }
        .auto-style41 {
            width: 285px;
            height: 30px;
        }
        .auto-style43 {
            height: 26px;
        }
        .auto-style44 {
            height: 23px;
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
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style37">
                    <h1>Eliminar Categorias</h1>
                </td>
                <td class="auto-style30">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td aria-atomic="False" class="auto-style38">
                    <br />
                    Ingrese el ID de la Categoria que desea ELIMINAR:</td>
                <td aria-atomic="False" class="auto-style31">
                    <br />
                    <asp:TextBox ID="txtID" runat="server" ValidationGroup="1"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="txtID" ForeColor="Red" ValidationGroup="1">*Campo Obligatorio</asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="lblNoExiste" runat="server" EnableViewState="False" ForeColor="Red" Text="* El ID no existe" Visible="False"></asp:Label>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9]+$">*Debe ingresar un número</asp:RegularExpressionValidator>
&nbsp;<asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" Width="90px" ValidationGroup="1" />
                &nbsp;&nbsp;
                </td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td class="auto-style44"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style39">
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                    <asp:Label ID="lblID" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblNombre" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblEstado" runat="server"></asp:Label>
                </td>
                <td class="auto-style31">
                    </td>
                <td class="auto-style43">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style15">
                    </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style41">
                    <asp:Label ID="lblCorroborar" runat="server" Text="¿Está segur@ que desea eliminar esta categoria? Consecuentemente se eliminarán los productos asociados a la misma." Visible="False"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:Button ID="btnSeguro" runat="server" OnClick="btnSeguro_Click" Text="Estoy segur@" Visible="False" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
