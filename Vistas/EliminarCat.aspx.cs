using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class EliminarCat : System.Web.UI.Page
    {
        NegocioCategoria negCat = new NegocioCategoria();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnSeguro_Click(object sender, EventArgs e)
        {
            //eliminar artículos de dicha categoría:
            NegocioArticulo negArt = new NegocioArticulo();
            negArt.eliminarArticulosCategoria(Convert.ToInt32(lblID.Text));
            //eliminar categoría:
            negCat.eliminarCategoria(Convert.ToInt32(lblID.Text));

            lblMensaje.Text = "La categoría ha sido eliminada con éxito junto a todos sus artículos";
            LimpiarVista();
            
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            Categoria cat = new Categoria();
            if (negCat.existeCategoria(int.Parse(txtID.Text)))
            {
                lblNoExiste.Visible = false;
                cat = negCat.getCategoria(Convert.ToInt32(txtID.Text));

                lbl.Text = "ID: ";
                lblID.Text = cat.getCod().ToString();
                lblNombre.Text = "Nombre: " + cat.getNombre();
                lblEstado.Text = "Estado: " + cat.getEstado().ToString();
                lblCorroborar.Visible = true;
                btnSeguro.Visible = true;
            }
            else
            {
                lblNoExiste.Visible = true;
            }

        }

        public void LimpiarVista()
        {
            txtID.Text = "";
            lbl.Text = "";
            lblID.Text = "";
            lblNombre.Text = "";
            lblEstado.Text = "";

            lblCorroborar.Visible = false;
            btnSeguro.Visible = false;

        }
    }
}