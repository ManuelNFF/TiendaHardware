using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class EliminarProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            //Llenar la propiedad TEXT del label lblMostrarInfoID con la información del producto que el
            //administrador desea eliminar
            NegocioArticulo art = new NegocioArticulo();
            if (art.existeArticulo(Convert.ToInt32(txtID.Text))){
                lblMostrarInfoID.Visible = true;
                lblCorroborar.Visible = true;
                btnSeguro.Visible = true;
                lblError.Text = "";
            }
            else
            {
                lblError.Text = "El producto no existe.";
                lblMostrarInfoID.Visible = false;
                lblCorroborar.Visible = false;
                btnSeguro.Visible = false;
            }
        }

        protected void btnSeguro_Click(object sender, EventArgs e)
        {
            int codigoArticulo = Convert.ToInt32(txtID.Text); 

            NegocioArticulo negocioArticulo = new NegocioArticulo();
            if (negocioArticulo.eliminarArticulo(codigoArticulo))
            {
                lblMensaje.Text = "El producto se ha eliminado con éxito.";
            }
            else
            {
                lblMensaje.Text = "El producto no se ha podido eliminar.";
            }
        }
    }
}