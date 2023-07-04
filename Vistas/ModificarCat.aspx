<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarCat.aspx.cs" Inherits="Vistas.ModificarCat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 65px;
            width: 1462px;
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
            width: 25%;
        }
        .auto-style25 {
            width: 25%;
        }
        .auto-style27 {
            height: 26px;
            width: 25%;
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
        .auto-style38 {
            width: 285px;
            font-size: small;
        }
        .auto-style39 {
            width: 285px;
            height: 26px;
        }
        .auto-style40 {
            width: 285px;
            height: 23px;
        }
        .auto-style43 {
            height: 26px;
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
                    <td colspan="5">
                        <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Modificar Categorias</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style39"></td>
                    <td aria-atomic="False" class="auto-style43">Ingrese el CÓDIGO de la Categoria que desea modificar: </td>
                    <td aria-atomic="False" class="auto-style31">
                        <asp:TextBox ID="txtCodBuscar" runat="server" Width="180px" ValidationGroup="Grupo1"></asp:TextBox>
                    </td>
                    <td class="auto-style27" id="btnBuscar">
                        <asp:RequiredFieldValidator ID="rfvIDBuscar" runat="server" ControlToValidate="txtCodBuscar" ForeColor="Red" ValidationGroup="Grupo1">* Debe ingresar una categoria</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCodBuscar" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="Grupo1">* Debe ingresar un número</asp:RegularExpressionValidator>
                        <br />
                        <asp:CustomValidator ID="cvCodCat" runat="server" ControlToValidate="txtCodBuscar" ErrorMessage="* El código de categoría ingresado no existe" ForeColor="Red" ValidationGroup="Grupo1" OnServerValidate="cvCodCat_ServerValidate"></asp:CustomValidator>
                        &nbsp;
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" ValidationGroup="Grupo1" OnClick="btnBuscar_Click" style="height: 26px" />
                    </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style39"></td>
                    <td aria-atomic="False" class="auto-style43"></td>
                    <td aria-atomic="False" class="auto-style31">
                        </td>
                    <td class="auto-style27" id="btnBuscar">
                        </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td aria-atomic="False" class="auto-style26">Código:</td>
                    <td aria-atomic="False" class="auto-style31">
                        <asp:Label ID="lblCod" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style27" id="btnBuscar">
                        &nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40"></td>
                    <td class="auto-style10">Nombre:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txtNombre" runat="server" Width="180px" ValidationGroup="Grupo2" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="* Debe ingresar un nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style10">Estado de Venta:</td>
                    <td class="auto-style33">
                        <asp:DropDownList ID="ddlEstado" runat="server" Visible="False">
                            <asp:ListItem Value="True">Activo</asp:ListItem>
                            <asp:ListItem Value="False">No Activo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style28">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                    <td class="auto-style32">
                        <asp:Button ID="btnModificar" runat="server" Text="Modificar" ValidationGroup="Grupo3" OnClick="btnModificar_Click" Visible="False" />
                        <br />
                        <br />
                        <br />
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
