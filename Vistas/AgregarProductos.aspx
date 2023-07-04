<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarProductos.aspx.cs" Inherits="Vistas.AgregarProductos" %>

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
        .auto-style15 {
            width: 10%;
            height: 26px;
        }
        .auto-style9 {
            width: 10%;
            height: 23px;
        }
        .auto-style20 {
            height: 23px;
            width: 42%;
        }
        .auto-style25 {
            width: 42%;
        }
        .auto-style27 {
            height: 26px;
            width: 42%;
        }
        .auto-style30 {
            width: 340px;
            font-size: small;
            height: 40px;
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
        .auto-style34 {
            width: 10%;
            height: 30px;
        }
        .auto-style36 {
            width: 340px;
            height: 30px;
        }
        .auto-style37 {
            width: 42%;
            height: 30px;
        }
        .auto-style38 {
            width: 285px;
            font-size: small;
            height: 40px;
        }
        .auto-style39 {
            width: 285px;
            height: 26px;
        }
        .auto-style40 {
            width: 285px;
            height: 23px;
        }
        .auto-style41 {
            width: 285px;
            height: 30px;
        }
        .auto-style42 {
            width: 285px;
        }
        .auto-style43 {
            width: 10%;
            height: 40px;
        }
        .auto-style44 {
            width: 42%;
            height: 40px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style8 {
            height: 23px;
            text-align: center;
        }
        .auto-style45 {
            height: 23px;
            text-align: center;
            width: 10%;
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
                            <td class="auto-style45">
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
                <td class="auto-style43"></td>
                <td class="auto-style38">
                    <h1>Agregar Productos</h1>
                </td>
                <td class="auto-style30"></td>
                <td class="auto-style44"></td>
                <td class="auto-style43"></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td aria-atomic="False" class="auto-style39">
                    <br />
                    Nombre:</td>
                <td aria-atomic="False" class="auto-style31">
                    <br />
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style40">Categoría:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="txtCategoria" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCategoria" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCategoria" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9]+$">*Debe ingresar un número</asp:RegularExpressionValidator>
&nbsp;</td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style40">Descripción:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;
                    </td>
                <td class="auto-style9">
                    </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style39">
                    Stock:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtStock" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtStock" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="1">*Debe ingresar un número</asp:RegularExpressionValidator>
                    </td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style41">
                    Precio:</td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrecio" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPrecio" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="1">*Debe ingresar un número</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style40">Estado de Venta:</td>
                <td class="auto-style33">
                    <asp:DropDownList ID="ddlEstado" runat="server">
                        <asp:ListItem Selected="True" Value="True">Activo</asp:ListItem>
                        <asp:ListItem Value="False">No activo</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style40">Imagen:</td>
                <td class="auto-style33">
                    <asp:FileUpload ID="fupImagen" runat="server" />
                </td>
                <td class="auto-style20">
                    <asp:Label ID="lblAviso" runat="server"></asp:Label>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style32">
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
                </td>
                <td class="auto-style25">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
