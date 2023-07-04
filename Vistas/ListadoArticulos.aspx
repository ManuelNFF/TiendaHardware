<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoArticulos.aspx.cs" Inherits="Vistas.InicioAdministrador" %>

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
            width: 27%;
        }
        .auto-style25 {
            width: 27%;
        }
        .auto-style27 {
            height: 26px;
            width: 27%;
        }
        .auto-style30 {
            width: 340px;
            font-size: small;
        }
        .auto-style31 {
            width: 340px;
            height: 26px;
        }
        .auto-style33 {
            width: 340px;
            height: 23px;
        }
        .auto-style34 {
            width: 711px;
            font-size: small;
        }
        .auto-style35 {
            width: 711px;
            height: 26px;
        }
        .auto-style36 {
            width: 711px;
            height: 23px;
        }
        .auto-style40 {
            margin-left: 0px;
        }
        .auto-style41 {
            width: 7%;
        }
        .auto-style42 {
            width: 7%;
            height: 26px;
        }
        .auto-style43 {
            width: 7%;
            height: 23px;
        }
        .auto-style45 {
            width: 10%;
            height: 25px;
        }
        .auto-style46 {
            width: 711px;
            height: 25px;
        }
        .auto-style47 {
            width: 340px;
            height: 25px;
        }
        .auto-style48 {
            height: 25px;
            width: 27%;
        }
        .auto-style49 {
            width: 7%;
            height: 25px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style8 {
            height: 23px;
            text-align: center;
        }
        .auto-style50 {
            width: 10%;
            height: 25px;
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
                            <td class="auto-style50">&nbsp;</td>
                            <td class="auto-style50"><asp:HyperLink ID="hlListCategorias0" runat="server" NavigateUrl="~/ListadoCategorias.aspx">Listado de Categorías</asp:HyperLink>
                            </td>
                            <td class="auto-style50">
                    <asp:HyperLink ID="hlAgregarCategoria0" runat="server" NavigateUrl="~/AgregarCat.aspx">Agregar Categorias</asp:HyperLink>
                            </td>
                            <td class="auto-style50">
                    <asp:HyperLink ID="hlModificarCategoria0" runat="server" NavigateUrl="~/ModificarCat.aspx">Modificar Categorias</asp:HyperLink>
                            </td>
                            <td class="auto-style50">
                    <asp:HyperLink ID="hlEliminarCategoria0" runat="server" NavigateUrl="~/EliminarCat.aspx">Eliminar Categorias</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style34">
                    <h1><B>
                        PRODUCTOS</B></h1>
                </td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style41">
                    <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td aria-atomic="False" class="auto-style35">
                    Buscar por Código:
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscarID" runat="server" Text="Buscar" OnClick="btnBuscarID_Click" ValidationGroup="1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td aria-atomic="False" class="auto-style31">
                    </td>
                <td class="auto-style27">Ordenar por:&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlOrdenar" runat="server" ValidationGroup="3">
                        <asp:ListItem Value="0">-- Seleccionar --</asp:ListItem>
                        <asp:ListItem Value="1">Código</asp:ListItem>
                        <asp:ListItem Value="2">Nombre</asp:ListItem>
                        <asp:ListItem Value="3">Categoría</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style42">
                    <asp:Button ID="btnOrdenar" runat="server" Text="Ordenar" CssClass="auto-style40" OnClick="btnOrdenar_Click" ValidationGroup="3" />
                </td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style46">
                    <asp:RequiredFieldValidator ID="rfvBuscar" runat="server" ControlToValidate="txtID" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="1">*Debe ingresar un Código</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="revBuscar" runat="server" ControlToValidate="txtID" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="1">*Debe ingresar un número</asp:RegularExpressionValidator>
                    <br />
                    <asp:CustomValidator ID="cvBuscar" runat="server" ControlToValidate="txtID" ErrorMessage="CustomValidator" ForeColor="Red" OnServerValidate="cvBuscar_ServerValidate" ValidationGroup="1">*El código ingresado no existe</asp:CustomValidator>
                </td>
                <td class="auto-style47">
                    </td>
                <td class="auto-style48">
                    <asp:Label ID="lblMensaje" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style49">
                    </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style36">
                    <asp:GridView ID="grdArticulos" runat="server" AutoGenerateColumns="False" DataKeyNames="CodArt_Ar">
                        <Columns>
                            <asp:BoundField DataField="CodArt_Ar" HeaderText="CodArt_Ar" InsertVisible="False" ReadOnly="True" SortExpression="CodArt_Ar" />
                            <asp:BoundField DataField="CodCat_Ar" HeaderText="CodCat_Ar" SortExpression="CodCat_Ar" />
                            <asp:BoundField DataField="Nombre_Ar" HeaderText="Nombre_Ar" SortExpression="Nombre_Ar" />
                            <asp:BoundField DataField="Descripcion_Ar" HeaderText="Descripcion_Ar" SortExpression="Descripcion_Ar" />
                            <asp:BoundField DataField="Stock_Ar" HeaderText="Stock_Ar" SortExpression="Stock_Ar" />
                            <asp:BoundField DataField="Precio_Ar" HeaderText="Precio_Ar" SortExpression="Precio_Ar" />
                            <asp:BoundField DataField="ImagenUr_Ar" HeaderText="ImagenUr_Ar" SortExpression="ImagenUr_Ar" />
                            <asp:ImageField DataAlternateTextField="ImagenUr_Ar" HeaderText="ImagenUr_Ar" DataImageUrlField="ImagenUr_Ar">
                                <ControlStyle Height="100px" Width="100px" />
                            </asp:ImageField>
                            <asp:CheckBoxField DataField="Estado_Ar" HeaderText="Estado_Ar" SortExpression="Estado_Ar" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td class="auto-style20">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style43">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style35">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style27">
                    &nbsp;</td>
                <td class="auto-style42">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style35">
                    <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar Filtros" ValidationGroup="2" />
                </td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style27">
&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style42">
                    &nbsp;</td>
            </tr>
            </table>
    </form>
</body>
</html>
