<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarProductos.aspx.cs" Inherits="Vistas.ModificarProductos" %>

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
        .auto-style25 {
            width: 26%;
        }
        .auto-style15 {
            width: 10%;
            height: 26px;
        }
        .auto-style26 {
            width: 695px;
            height: 26px;
        }
        .auto-style31 {
            width: 217px;
            height: 26px;
        }
        .auto-style27 {
            height: 26px;
            width: 26%;
        }
        .auto-style9 {
            width: 10%;
            height: 23px;
        }
        .auto-style10 {
            width: 695px;
            height: 23px;
        }
        .auto-style33 {
            width: 217px;
            height: 23px;
        }
        .auto-style20 {
            height: 23px;
            width: 26%;
        }
        .auto-style34 {
            width: 10%;
            height: 30px;
        }
        .auto-style35 {
            width: 695px;
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
        .auto-style28 {
            width: 695px;
        }
        .auto-style32 {
            width: 217px;
        }
        .auto-style38 {
            width: 6%;
        }
        .auto-style39 {
            width: 6%;
            height: 26px;
        }
        .auto-style40 {
            width: 6%;
            height: 23px;
        }
        .auto-style41 {
            width: 6%;
            height: 30px;
        }
        .auto-style42 {
            height: 12px;
            width: 1455px;
            margin-bottom: 0px;
        }
        .auto-style43 {
            height: 30px;
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
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="5">
        <table class="auto-style42">
            <tr>
                <td class="auto-style43">
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
                            <td class="auto-style45"></td>
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
            </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Modificar Productos</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style39"></td>
                    <td aria-atomic="False" class="auto-style26">Ingrese el CÓDIGO del producto que desea modificar: </td>
                    <td aria-atomic="False" class="auto-style31">
                        <asp:TextBox ID="txtCodBuscar" runat="server" Width="180px" ValidationGroup="Grupo1"></asp:TextBox>
                    </td>
                    <td class="auto-style27" id="btnBuscar">
                        <asp:RequiredFieldValidator ID="rfvIDBuscar" runat="server" ControlToValidate="txtCodBuscar" ForeColor="Red">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                    </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td aria-atomic="False" class="auto-style26">&nbsp;</td>
                    <td aria-atomic="False" class="auto-style31">
                        <asp:Label ID="lblNoExiste" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style27" id="btnBuscar">
                        &nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39"></td>
                    <td aria-atomic="False" class="auto-style26">Código:</td>
                    <td aria-atomic="False" class="auto-style31">
                        <asp:Label ID="lblCod" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style27" id="btnBuscar">
                        </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style40"></td>
                    <td class="auto-style10">Nombre:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txtNombre" runat="server" Width="180px" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style40"></td>
                    <td class="auto-style10">Categoría:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txtCategoria" runat="server" Width="180px" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCategoria" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCategoria" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9]+$">*Debe ingresar un número</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39"></td>
                    <td class="auto-style26">Descripción:</td>
                    <td class="auto-style31">
                        <asp:TextBox ID="txtDescripcion" runat="server" Width="180px" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style41"></td>
                    <td class="auto-style35">Stock:</td>
                    <td class="auto-style36">
                        <asp:TextBox ID="txtStock" runat="server" Width="180px" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td class="auto-style37">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtStock" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtStock" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="1">*Debe ingresar un número</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style34"></td>
                </tr>
                <tr>
                    <td class="auto-style40"></td>
                    <td class="auto-style10">Precio:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txtPrecio" runat="server" Width="179px" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrecio" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPrecio" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="1">*Debe ingresar un número</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style10">Estado de Venta:</td>
                    <td class="auto-style33">
                        <asp:DropDownList ID="ddlEstado" runat="server">
                            <asp:ListItem Value="true">Activo</asp:ListItem>
                            <asp:ListItem Value="false">No Activo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40"></td>
                    <td class="auto-style10">Url de la Imagen:</td>
                    <td class="auto-style33">
                    </td>
                    <td class="auto-style20">
                        </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style10">Imágen:</td>
                    <td class="auto-style33">
                        <asp:Image ID="iImagen" runat="server" />
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style32">
                        <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
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
