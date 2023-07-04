<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABMCupones.aspx.cs" Inherits="Vistas.ABMCupones" %>

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
        .auto-style38 {
            width: 617px;
            font-size: small;
            height: 40px;
        }
        .auto-style39 {
            width: 617px;
            height: 26px;
        }
        .auto-style40 {
            width: 617px;
            height: 23px;
        }
        .auto-style42 {
            width: 617px;
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
        .auto-style46 {
            font-size: small;
            height: 40px;
        }
        .auto-style47 {
            width: 8%;
            height: 40px;
        }
        .auto-style48 {
            width: 8%;
            height: 26px;
        }
        .auto-style49 {
            width: 8%;
            height: 23px;
        }
        .auto-style51 {
            width: 8%;
        }
        .auto-style53 {
            font-size: small;
            height: 23px;
        }
        .auto-style54 {
            width: 8%;
            height: 42px;
        }
        .auto-style55 {
            height: 42px;
        }
        .auto-style57 {
            width: 42%;
            height: 42px;
        }
        .auto-style58 {
            width: 10%;
            height: 42px;
        }
        .auto-style59 {
            width: 8%;
            height: 30px;
        }
        .auto-style60 {
            width: 617px;
            height: 30px;
        }
        .auto-style61 {
            width: 340px;
            height: 30px;
        }
        .auto-style62 {
            width: 42%;
            height: 30px;
        }
        .auto-style63 {
            width: 10%;
            height: 30px;
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
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style46" colspan="2">
                    <h1 id="Inicio" >Listado de Cupones</h1>
                </td>
                <td class="auto-style44"><a href="#AgregarCupones">Agregar Cupones</a>&nbsp;&nbsp;&nbsp;
                    <a href="#ModificarCupones">Modificar Cupones</a>&nbsp;&nbsp;&nbsp;
                    <a href="#EliminarCupones">Eliminar Cupones</a>
                </td>
                <td class="auto-style43">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style38">
                    <asp:Button ID="btnActualizarTabla" runat="server" OnClick="btnActualizarTabla_Click" Text="Actualizar Tabla" />
                </td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style38">
                    <asp:GridView ID="grdCupones" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style38">
                    &nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style38">
                    &nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47"></td>
                <td class="auto-style46" colspan="3">
                    <h1 id="AgregarCupones">Agregar Cupones</h1>
                </td>
                <td class="auto-style43"></td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style53" colspan="3">
                    Tenga en cuenta a la hora de agregar un cupón, que el código de este no debe superar los 15 caracteres (Incluyendo espacios). </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style48"></td>
                <td aria-atomic="False" class="auto-style39">
                    <br />
                    Código de Cupón:</td>
                <td aria-atomic="False" class="auto-style31">
                    <br />
                    <asp:TextBox ID="txtCodAg" runat="server" ValidationGroup="1"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="rfvCodAg" runat="server" ControlToValidate="txtCodAg" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    <asp:Label ID="lblErrorCodAg" runat="server" ForeColor="Red" Text="*El código ingresado ya está en uso" Visible="False"></asp:Label>
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style40">Importe del Descuento:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="txtDescuentoAg" runat="server" TextMode="Number" ValidationGroup="1"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="rfvImpDescAg" runat="server" ControlToValidate="txtDescuentoAg" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revImpDescAg" runat="server" ControlToValidate="txtDescuentoAg" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="1">*Debe ingresar un número</asp:RegularExpressionValidator>
&nbsp;</td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style40">Importe Mínimo de la Venta:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="txtMinimoAg" runat="server" ValidationGroup="1"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="rfvImpMinAg" runat="server" ControlToValidate="txtMinimoAg" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revImpMinAg" runat="server" ControlToValidate="txtMinimoAg" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="1">*Debe ingresar un número</asp:RegularExpressionValidator>
                    &nbsp;&nbsp;
                    </td>
                <td class="auto-style9">
                    </td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style40">Estado:</td>
                <td class="auto-style33">
                    <asp:DropDownList ID="ddlEstadoAg" runat="server" ValidationGroup="1">
                        <asp:ListItem Selected="True" Value="True">Activo</asp:ListItem>
                        <asp:ListItem Value="False">No activo</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42"><a href="#Inicio">Volver a Inicio</a>&nbsp;</td>
                <td class="auto-style32">
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" ValidationGroup="1" />
                </td>
                <td class="auto-style25">
                    <asp:Label ID="lblMensajeAg" runat="server" Visible="False">El cupón se agregó correctamente</asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style40"></td>
                <td class="auto-style33">
                    </td>
                <td class="auto-style20">
                    </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style49">&nbsp;</td>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49">&nbsp;</td>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td colspan="3">&nbsp;<h1 id="ModificarCupones">Modificar Cupones</h1></td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td colspan="3">Ingrese el código del cupón que desea modificar:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtBuscarCodMod" runat="server" ValidationGroup="2"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscarMod" runat="server" Text="Buscar" OnClick="btnBuscarMod_Click" ValidationGroup="2" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rfvBuscarCodMod" runat="server" ForeColor="Red" ControlToValidate="txtBuscarCodMod" ValidationGroup="2">*</asp:RequiredFieldValidator>
                    <asp:Label ID="lblErrorBuscarCodMod" runat="server" ForeColor="Red" Text="*El código ingresado no corresponde a ningún cupón dentro de la base de datos" Visible="False"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td colspan="3">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">Código de Cupón:</td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtCodMod" runat="server" ValidationGroup="3"></asp:TextBox>
                </td>
                <td class="auto-style25">
                    <asp:RequiredFieldValidator ID="rfvCodMod" runat="server" ControlToValidate="txtCodMod" ForeColor="Red" ValidationGroup="3">*</asp:RequiredFieldValidator>
                    <asp:Label ID="lblErrorCodMod" runat="server" ForeColor="Red" Text="*El código ingresado ya está en uso" Visible="False"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">Importe de Descuento:</td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtDescuentoMod" runat="server" ValidationGroup="3"></asp:TextBox>
                </td>
                <td class="auto-style25">
                    <asp:RequiredFieldValidator ID="rfvImpDescAg0" runat="server" ControlToValidate="txtDescuentoMod" ForeColor="Red" ValidationGroup="3">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revImpDescAg0" runat="server" ControlToValidate="txtDescuentoMod" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="3">*Debe ingresar un número</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">Importe Mínimo de la Venta:</td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtMinimoMod" runat="server" ValidationGroup="3"></asp:TextBox>
                </td>
                <td class="auto-style25">
                    <asp:RequiredFieldValidator ID="rfvImpMinAg0" runat="server" ControlToValidate="txtMinimoMod" ForeColor="Red" ValidationGroup="3">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revImpMinAg0" runat="server" ControlToValidate="txtMinimoMod" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="3">*Debe ingresar un número</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">Estado:</td>
                <td class="auto-style32">
                    <asp:DropDownList ID="ddlEstadoMod" runat="server" ValidationGroup="3">
                        <asp:ListItem Selected="True" Value="True">Activo</asp:ListItem>
                        <asp:ListItem Value="False">No activo</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59"></td>
                <td class="auto-style60">&nbsp;<a href="#Inicio">Volver a Inicio</a></td>
                <td class="auto-style61">
                    <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" ValidationGroup="3" />
                </td>
                <td class="auto-style62">
                    <asp:Label ID="lblMensajeMod" runat="server" Visible="False">El cupón se modificó correctamente</asp:Label>
                </td>
                <td class="auto-style63"></td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td colspan="3">&nbsp;<h1 id="EliminarCupones">Eliminar Cupones</h1></td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td colspan="3">Ingrese el código del cupón que desea eliminar:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtBuscarCodElim" runat="server" ValidationGroup="4"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscarElim" runat="server" Text="Buscar" OnClick="btnBuscarElim_Click" ValidationGroup="4" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rfvBuscarCodElim" runat="server" ForeColor="Red" ControlToValidate="txtBuscarCodElim" ValidationGroup="4">*</asp:RequiredFieldValidator>
                    <asp:Label ID="lblErrorBuscarCodElim" runat="server" ForeColor="Red" Text="*El código ingresado no corresponde a ningún cupón dentro de la base de datos" Visible="False"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">
                    <asp:Label ID="lblCodElim" runat="server"></asp:Label>
                </td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">
                    <asp:Label ID="lblDescuentoElim" runat="server"></asp:Label>
                </td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">
                    <asp:Label ID="lblMinimoElim" runat="server"></asp:Label>
                </td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">
                    <asp:Label ID="lblEstadoElim" runat="server"></asp:Label>
                </td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54"></td>
                <td class="auto-style55" colspan="2">
                    <asp:Label ID="lblSeguroElim" runat="server" Text="¿Está seguro/a que desea eliminar este cupón?" Visible="False"></asp:Label>
                &nbsp;</td>
                <td class="auto-style57">
                    <asp:Button ID="btnEliminar" runat="server" Text="Si, lo estoy" OnClick="btnEliminar_Click" Visible="False" />
                </td>
                <td class="auto-style58"></td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style42">&nbsp;<a href="#Inicio">Volver a Inicio</a></td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="lblMensajeElim" runat="server" Text="El cupón se eliminó correctamente" Visible="False"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
