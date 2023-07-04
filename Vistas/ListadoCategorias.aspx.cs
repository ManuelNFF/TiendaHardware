using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class ListadoCategorias : System.Web.UI.Page
    {
        NegocioCategoria negCat = new NegocioCategoria();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable tablaCategorias = negCat.getTabla();
                grdCategorias.DataSource = tablaCategorias;
                grdCategorias.DataBind();
            }

        }

        protected void btnBuscarPorID_Click(object sender, EventArgs e)
        {

            if (negCat.existeCategoria(int.Parse(txtID.Text)))
            {
                cvBuscar.IsValid = true;

                DataTable tablaCategorias = negCat.getTablaEspecifica(int.Parse(txtID.Text));

                grdCategorias.DataSource = tablaCategorias;
                grdCategorias.DataBind();
                txtID.Text = "";
            }
            else
            {
                cvBuscar.IsValid = false;
            }
        }

        protected void cvBuscar_ServerValidate(object source, ServerValidateEventArgs args)
        {
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            DataTable tablaCategorias = negCat.getTabla();
            grdCategorias.DataSource = tablaCategorias;
            grdCategorias.DataBind();
        }
    }
}