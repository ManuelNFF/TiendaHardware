using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;

namespace Vistas
{
    public partial class AgregarProductos : System.Web.UI.Page
    {
        NegocioArticulo negArt = new NegocioArticulo();
        NegocioCategoria negCat = new NegocioCategoria();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            string rutaImagen = "~/Imagenes/imagen-no-disponible.png";
            string codigoImagen = txtNombre.Text + negArt.obtenerMaximoIDArticulo().ToString() + ".jpg";

            if (fupImagen.HasFile)
            {
                rutaImagen = "~/Imagenes/" + codigoImagen;
                fupImagen.SaveAs(Server.MapPath(rutaImagen));
                lblAviso.Text = "El archivo se ha guardado con la siguiente ruta: " + rutaImagen;
            }

            negArt.agregarArticulo(Convert.ToInt32(txtCategoria.Text), txtNombre.Text, txtDescripcion.Text, Convert.ToInt32(txtStock.Text), Convert.ToDecimal(txtPrecio.Text), rutaImagen, Convert.ToBoolean(ddlEstado.SelectedValue));
            


            lblMensaje.Text = "El artículo fue agregado con éxito";
            


            txtCategoria.Text = "";
            txtDescripcion.Text = "";
            ddlEstado.SelectedIndex = 0;
            txtNombre.Text = "";
            txtPrecio.Text = "";
            txtStock.Text = "";

        }

    }
}