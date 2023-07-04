using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
using System.Data;

namespace Vistas
{
    public partial class ModificarCat : System.Web.UI.Page
    {
        NegocioCategoria negCat = new NegocioCategoria();
        protected void Page_Load(object sender, EventArgs e)
        {

            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        }

       

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            int codCat = int.Parse(txtCodBuscar.Text);
            if (negCat.existeCategoria(codCat))
            {
                cvCodCat.IsValid = true;
                //lenar los controles con la info de la categoria y habilitar la visibilidad de los mismos:
                lblCod.Text = txtCodBuscar.Text;
                txtNombre.Text = negCat.getCategoria(Convert.ToInt32(lblCod.Text)).getNombre();
                ddlEstado.SelectedValue = negCat.getCategoria(int.Parse(lblCod.Text)).getEstado().ToString();
                lblCod.Visible = true;
                txtNombre.Visible = true;
                ddlEstado.Visible = true;
                btnModificar.Visible = true;
                
            }
            else
            {
                cvCodCat.IsValid = false;
                lblCod.Text = "";
                txtCodBuscar.Text = "";
                lblCod.Visible = false;
                txtNombre.Visible = false;
                ddlEstado.Visible = false;
                btnModificar.Visible = false;
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            int codcat = Convert.ToInt32(lblCod.Text);
            string nombre = txtNombre.Text;
            bool estado = true;
            if(ddlEstado.SelectedValue == "True")
            {
                estado = true;
            }
            else
            {
                estado = false;
            }

            negCat.ModificarCategoria(codcat, nombre, estado);

            limpiarCampos();

            lblMensaje.Text = "El producto se ha modificado con éxito.";
            
        }

        public void limpiarCampos()
        {
            txtCodBuscar.Text = "";
            lblCod.Text = "";
            txtNombre.Text = "";
            ddlEstado.SelectedIndex = 0;

        }

        protected void cvCodCat_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }
    }
}