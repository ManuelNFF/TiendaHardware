<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioComprador.aspx.cs" Inherits="Vistas.InicioComprador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 65px;
        }
        .auto-style10 {
            width: 531px;
            height: 23px;
        }
        .auto-style20 {
            height: 23px;
            width: 17%;
        }
        .auto-style26 {
            width: 531px;
            height: 26px;
        }
        .auto-style27 {
            height: 26px;
            width: 17%;
        }
        .auto-style31 {
            width: 172px;
            height: 26px;
        }
        .auto-style33 {
            width: 172px;
            height: 23px;
        }
        .auto-style38 {
            width: 14%;
        }
        .auto-style39 {
            width: 14%;
            height: 26px;
        }
        .auto-style40 {
            width: 14%;
            height: 23px;
        }
        .auto-style42 {
            height: 26px;
        }
        .auto-style43 {
            width: 7%;
            height: 26px;
        }
        .auto-style44 {
            width: 7%;
            height: 23px;
        }
        .auto-style47 {
            width: 7%;
            height: 21px;
        }
        .auto-style48 {
            width: 531px;
            height: 21px;
        }
        .auto-style49 {
            width: 172px;
            height: 21px;
        }
        .auto-style50 {
            height: 21px;
            width: 17%;
        }
        .auto-style51 {
            width: 14%;
            height: 21px;
        }
        .auto-style52 {
            text-align: center;
            width: 291px;
        }
        .auto-style53 {
            width: 531px;
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
                <td>
                    <h1>&nbsp;&nbsp;&nbsp;&nbsp; </h1>
                </td>
                <td class="auto-style53">
                    &quot;<big><big><b>Nombre Empresa</b></big></big>&quot;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:HyperLink ID="hlCarrito" runat="server" ForeColor="Black" NavigateUrl="~/Carrito.aspx">Ver Carrito</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="hlContacto" runat="server" ForeColor="Black" NavigateUrl="~/Contacto.aspx">Contacto</asp:HyperLink>
                </td>
                <td class="auto-style38">
                    <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style43"></td>
                <td aria-atomic="False" class="auto-style26">&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td aria-atomic="False" class="auto-style42">&nbsp;
                </td>
                <td aria-atomic="False" class="auto-style42">
                    &nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47"></td>
                <td class="auto-style48">Buscar Producto:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtBuscarProducto" runat="server" Width="180px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                </td>
                <td class="auto-style49">Ordenar por:&nbsp;</td>
                <td class="auto-style50">
                    <asp:DropDownList ID="ddlOrdenar" runat="server" Width="120px" AutoPostBack="True" OnSelectedIndexChanged="ddlOrdenar_SelectedIndexChanged">
                        <asp:ListItem>-- Seleccionar --</asp:ListItem>
                        <asp:ListItem>Menor Precio</asp:ListItem>
                        <asp:ListItem>Mayor Precio</asp:ListItem>
                        <asp:ListItem>Más Vendido</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style51">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style10">
                    <br />
                    <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style40">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style44">
                    <asp:DataList ID="dlCategorias" runat="server" DataKeyField="CodCat_Ca">
                        <HeaderTemplate>
                            <asp:Button ID="btnVerTodo" runat="server" CommandName="comandoVerTodo" OnCommand="btnVerTodo_Command" Text="Ver todo" Width="200px" />
                            <br />
                            <br />
                            <br />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnCategoria" runat="server" CommandArgument='<%# Eval("CodCat_Ca") %>' CommandName="comandoFiltrarCategoria" OnCommand="btnCategoria_Command" Text='<%# Eval("Nombre_Ca") %>' Width="200px" />
                            <br />
                            <br />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                </td>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ListView ID="lvlProductos" runat="server" GroupItemCount="3">
                        <AlternatingItemTemplate>
                            <td runat="server" class="auto-style52" style="background-color:#FFF8DC;">
                                <asp:Label ID="Nombre_ArLabel" runat="server" Text='<%# Eval("Nombre_Ar") %>' Font-Bold="True" />
                                <br />
                                <br />
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl='<%# Eval("ImagenUr_Ar") %>' Width="100px" />
                                <br />
                                &nbsp;<asp:Label ID="Descripcion_ArLabel" runat="server" Text='<%# Eval("Descripcion_Ar") %>' />
                                <br />&nbsp;$<asp:Label ID="Precio_ArLabel" runat="server" Text='<%# Eval("Precio_Ar") %>' />
                                <br />
                                <br />
                                <asp:Button ID="btnCarrito" runat="server" CommandArgument='<%# Eval("CodArt_Ar") %>' CommandName="comandoAgregarAlCarrito" OnCommand="btnCarrito_Command" Text="Agregar al carrito" />
                                <br /></td>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">Nombre_Ar:
                                <asp:TextBox ID="Nombre_ArTextBox" runat="server" Text='<%# Bind("Nombre_Ar") %>' />
                                <br />Descripcion_Ar:
                                <asp:TextBox ID="Descripcion_ArTextBox" runat="server" Text='<%# Bind("Descripcion_Ar") %>' />
                                <br />Precio_Ar:
                                <asp:TextBox ID="Precio_ArTextBox" runat="server" Text='<%# Bind("Precio_Ar") %>' />
                                <br />ImagenUr_Ar:
                                <asp:TextBox ID="ImagenUr_ArTextBox" runat="server" Text='<%# Bind("ImagenUr_Ar") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                <br /></td>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No se han devuelto datos.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
<td runat="server" />
                        </EmptyItemTemplate>
                        <GroupTemplate>
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </GroupTemplate>
                        <InsertItemTemplate>
                            <td runat="server" style="">Nombre_Ar:
                                <asp:TextBox ID="Nombre_ArTextBox" runat="server" Text='<%# Bind("Nombre_Ar") %>' />
                                <br />Descripcion_Ar:
                                <asp:TextBox ID="Descripcion_ArTextBox" runat="server" Text='<%# Bind("Descripcion_Ar") %>' />
                                <br />Precio_Ar:
                                <asp:TextBox ID="Precio_ArTextBox" runat="server" Text='<%# Bind("Precio_Ar") %>' />
                                <br />ImagenUr_Ar:
                                <asp:TextBox ID="ImagenUr_ArTextBox" runat="server" Text='<%# Bind("ImagenUr_Ar") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                <br /></td>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <td runat="server" class="auto-style52" style="background-color:#DCDCDC;color: #000000;">&nbsp;<asp:Label ID="Nombre_ArLabel" runat="server" Text='<%# Eval("Nombre_Ar") %>' Font-Bold="True" />
                                <br />
                                <br />
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl='<%# Eval("ImagenUr_Ar") %>' Width="100px" />
                                <br />&nbsp;<asp:Label ID="Descripcion_ArLabel" runat="server" Text='<%# Eval("Descripcion_Ar") %>' />
                                <br />&nbsp;$<asp:Label ID="Precio_ArLabel" runat="server" Text='<%# Eval("Precio_Ar") %>' />
                                <br />
                                <br />
                                <asp:Button ID="btnCarrito" runat="server" CommandArgument='<%# Eval("CodArt_Ar") %>' CommandName="comandoAgregarAlCarrito" OnCommand="btnCarrito_Command" Text="Agregar al carrito" />
                            </td>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr id="groupPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                        <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">Nombre_Ar:
                                <asp:Label ID="Nombre_ArLabel" runat="server" Text='<%# Eval("Nombre_Ar") %>' />
                                <br />Descripcion_Ar:
                                <asp:Label ID="Descripcion_ArLabel" runat="server" Text='<%# Eval("Descripcion_Ar") %>' />
                                <br />Precio_Ar:
                                <asp:Label ID="Precio_ArLabel" runat="server" Text='<%# Eval("Precio_Ar") %>' />
                                <br />ImagenUr_Ar:
                                <asp:Label ID="ImagenUr_ArLabel" runat="server" Text='<%# Eval("ImagenUr_Ar") %>' />
                                <br /></td>
                        </SelectedItemTemplate>
                    </asp:ListView>
                </td>
                <td class="auto-style33">
                    </td>
                <td class="auto-style20">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style40">
                    </td>
            </tr>
            <tr>
                <td class="auto-style43">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Tienda_HardwareConnectionString2 %>" SelectCommand="SELECT [CodCat_Ca], [Nombre_Ca] FROM [Categorias] ORDER BY [CodCat_Ca]"></asp:SqlDataSource>
                </td>
                <td class="auto-style26">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Tienda_HardwareConnectionString %>" SelectCommand="SELECT [Nombre_Ar], [Descripcion_Ar], [Precio_Ar], [ImagenUr_Ar], [CodArt_Ar] FROM [Articulos]"></asp:SqlDataSource>
                </td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style27">
&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style39">
                    &nbsp;</td>
            </tr>
            </table>
    </form>
</body>
</html>
