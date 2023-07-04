<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoCategorias.aspx.cs" Inherits="Vistas.ListadoCategorias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 112px;
        }
        .auto-style4 {
            width: 112px;
            height: 53px;
        }
        .auto-style5 {
            height: 53px;
        }
        .auto-style8 {
            height: 23px;
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9"><asp:HyperLink ID="hlListCategorias0" runat="server" NavigateUrl="~/ListadoCategorias.aspx">Listado de Categorías</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                    <asp:HyperLink ID="hlAgregarCategoria0" runat="server" NavigateUrl="~/AgregarCat.aspx">Agregar Categorias</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                    <asp:HyperLink ID="hlModificarCategoria0" runat="server" NavigateUrl="~/ModificarCat.aspx">Modificar Categorias</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                    <asp:HyperLink ID="hlEliminarCategoria0" runat="server" NavigateUrl="~/EliminarCat.aspx">Eliminar Categorias</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <h1>Categorías</h1>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">Buscar por ID:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscarPorID" runat="server" OnClick="btnBuscarPorID_Click" Text="Buscar" ValidationGroup="1" />
                    <br />
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="txtID" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="1">* Debe ingresar un ID</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="revBuscar" runat="server" ControlToValidate="txtID" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="1">*Debe ingresar un número</asp:RegularExpressionValidator>
                    <br />
                    <asp:CustomValidator ID="cvBuscar" runat="server" ControlToValidate="txtID" ErrorMessage="CustomValidator" ForeColor="Red" OnServerValidate="cvBuscar_ServerValidate" ValidationGroup="1">*El código ingresado no existe</asp:CustomValidator>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:GridView ID="grdCategorias" runat="server">
                    </asp:GridView>
                    <br />
                    <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar filtros" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
