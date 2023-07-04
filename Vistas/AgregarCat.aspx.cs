using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class AgregarCat : System.Web.UI.Page
    {
        NegocioCategoria negCat = new NegocioCategoria();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            negCat.agregarCategoria(txtNombre.Text, Convert.ToBoolean(ddlEstado.SelectedValue));

            txtNombre.Text = "";
            ddlEstado.SelectedIndex = 0;

            lblMensaje.Text = "La categoría fue añadida con éxito";
        }
    }
}