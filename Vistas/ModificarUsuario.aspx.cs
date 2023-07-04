using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class ModificarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnBuscarDNI_Click(object sender, EventArgs e)
        {
            lblErrorDNI.Visible = false;
            lblMensaje.Visible = false;
            NegocioClientes negCli = new NegocioClientes();

            if (negCli.existeDNI(txtDNI.Text))
            {
                //existe, permitimos modificar los datos. Para eso habilitamos los otros controles
                lblNombre.Visible = true;
                lblContra1.Visible = true;
                lblContra2.Visible = true;
                lbl.Visible = true;
                lblDNI.Text = txtDNI.Text;
                lblDNI.Visible = true;

                txtUsuario.Visible = true;
                txtContra1.Visible = true;
                txtContra2.Visible = true;
                

                btnReestablecer.Visible = true;
            }
            else
            {
                //el DNI no existe, por lo que mostramos el mensaje de error
                lblErrorDNI.Visible = true;
            }
        }

        protected void btnReestablecer_Click(object sender, EventArgs e)
        {
            NegocioClientes negCli = new NegocioClientes();
            //corroboramos que el usuario no esté en uso
            if (negCli.existeUsuario(txtUsuario.Text))
            {
                //el usuario está usado, mostramos el mensaje de error
                lblErrorUsuario.Visible = true;
            }
            else
            {
                //el usuario no está en uso, guardamos los datos ingresados
                negCli.reestablecerUsuarioYContraseña(lblDNI.Text, txtUsuario.Text, txtContra1.Text);
                LimpiarCampos();
                lblMensaje.Text = "Los datos se reestablecieron correctamente";
                lblMensaje.Visible = true;
            }
        }

        public void LimpiarCampos()
        {
            txtDNI.Text = "";
            txtUsuario.Visible = false;
            txtContra1.Visible = false;
            txtContra2.Visible = false;
            lblDNI.Visible = false;
            lbl.Visible = false;
            lblNombre.Visible = false;
            lblContra1.Visible = false;
            lblContra2.Visible = false;
            btnReestablecer.Visible = false;
        }
    }
}