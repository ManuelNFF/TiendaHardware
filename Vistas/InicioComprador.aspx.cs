using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;
using Entidades;


namespace Vistas
{
    public partial class InicioComprador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //llenar el listview con los productos:
                cargarLisview();
                //llenar el "dlFiltros" con las categorías de los productos para filtrar x categoría/Tipo de producto:
                cargarDataList();

            }
            if (Session["nombreUsuario"] != null)
            {
                lblUsuario.Text = Session["nombreUsuario"].ToString();
            }
            if(Session["codigo"] == null)
            {
                Session["codigo"] = 0;
            }
        }

        protected void cargarLisview()
        {
            NegocioArticulo negArt = new NegocioArticulo();
            lvlProductos.DataSource = negArt.getTablaLvl();
            lvlProductos.DataBind();
        }

        protected void cargarDataList()
        {
            NegocioCategoria negCat = new NegocioCategoria();
            dlCategorias.DataSource = negCat.getTabla();
            dlCategorias.DataBind();

        }

        //Ordena el listview de acuerdo a la opción selecionada incluyendo filtros si los hay previamente seleccionados
        protected void ddlOrdenar_SelectedIndexChanged(object sender, EventArgs e)
        {            
            int indice = ddlOrdenar.SelectedIndex;
            string categoria = Session["codigo"].ToString();
            NegocioArticulo tabla = new NegocioArticulo();
            lvlProductos.DataSource = tabla.tablaFiltradaOrdenada(categoria, indice);
            lvlProductos.DataBind();
        }

        protected void btnCarrito_Command(object sender, CommandEventArgs e)
        {
            NegocioArticulo cargarCarrito = new NegocioArticulo();
            if (e.CommandName == "comandoAgregarAlCarrito")
            {
                ListViewItem selectedItem = (ListViewItem)((Button)sender).NamingContainer;

                Session["Cod_Ar"] = e.CommandArgument.ToString();
                Session["Nombre"] = ((Label)selectedItem.FindControl("Nombre_ArLabel")).Text;
                Session["Descripcion"] = ((Label)selectedItem.FindControl("Descripcion_ArLabel")).Text;
                Session["Precio"] = ((Label)selectedItem.FindControl("Precio_ArLabel")).Text;
                 

                if (Session["tablaCarrito"] == null)
                {
                    Session["tablaCarrito"] = cargarCarrito.crearTabla();
                }

                if(cargarCarrito.BuscarId((DataTable)Session["tablaCarrito"], Session["Cod_Ar"].ToString()))
                {
                    int cantidad = Convert.ToInt32(Session["Cantidad"]) + 1;
                    Session["Cantidad"] = cantidad;
                    cargarCarrito.ModificarFila((DataTable)Session["tablaCarrito"], Session["Cod_Ar"].ToString(), Session["Cantidad"].ToString());
                }
                else
                {
                    int cantidad = 1;
                    Session["Cantidad"] = cantidad;
                    cargarCarrito.agregarFila((DataTable)Session["tablaCarrito"], Session["Cod_Ar"].ToString(), Session["Nombre"].ToString(), Session["Descripcion"].ToString(), Session["Precio"].ToString(), Session["Cantidad"].ToString());
                    lblMensaje.Text = "";
                }
                
            }

        }

        /// convierte el comandArgument(codCat) en int para utiliarlo como filtro y devuelve la tabla correspondiente
        protected void btnCategoria_Command(object sender, CommandEventArgs e)
        {
            NegocioArticulo tablaFiltrada = new NegocioArticulo();
            if (e.CommandName == "comandoFiltrarCategoria")
            {
                int codcat = Convert.ToInt32(((Button)sender).CommandArgument);
                lvlProductos.DataSource = tablaFiltrada.getTablaF(codcat);
                lvlProductos.DataBind();
                Session["codigo"] = codcat;
            }
        }

        protected void btnVerTodo_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "comandoVerTodo")
            {
                cargarLisview();
                Session["codigo"] = 0;
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            NegocioArticulo tablaBuscar = new NegocioArticulo();
            string nombre = txtBuscarProducto.Text.Trim();  
            lvlProductos.DataSource = tablaBuscar.buscarArticuloNombre(nombre);
            lvlProductos.DataBind();

        }
    }
}