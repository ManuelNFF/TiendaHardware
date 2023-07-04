using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void lbtAdministrador_Click(object sender, EventArgs e)
        {
            MostrarControlesAdmin();
        }

        protected void lbtComprador_Click(object sender, EventArgs e)
        {
            MostrarControlesComprador();
        }

        protected void btnIngresarAdmin_Click(object sender, EventArgs e)
        {
            if (txtUsuarioAdmin.Text == "Admin" && txtContraseñaAdmin.Text == "1234")
            {
                Server.Transfer("InicioAdministrador.aspx");
            }
            else
            {
                lblError.Text = "El usuario y la contraseña no coinciden con las establecidas para el administrador.";
            }
        }

        protected void btnIngresarComp_Click(object sender, EventArgs e)
        {
            lblErrorUsuarioComp.Visible = false;
            lblErrorContraseñaComp.Visible = false;
            lblError.Visible = false;

            NegocioClientes negCli = new NegocioClientes();

            if (negCli.existeUsuario(txtUsuarioComp.Text))
            {
                //el usuario existe, corroboramos la contraseña
                if (negCli.contraseñaCorrecta(txtContraseñaComp.Text, txtUsuarioComp.Text))
                {
                    //el usuario y la contraseña coinciden, inicia sesión correctamente
                    Session["nombreUsuario"] = txtUsuarioComp.Text;
                    Response.Redirect("InicioComprador.aspx");
                }
                else
                {
                    //la contraseña es incorrecta
                    lblErrorContraseñaComp.Visible = true;
                }
            }
            else
            {
                //no existe el usuario, mostramos el mensaje de error
                lblErrorUsuarioComp.Visible = true;
            }
           
        }


        
        public void MostrarControlesAdmin()
        {
            lblUsuarioAdmin.Visible = true;
            txtUsuarioAdmin.Visible = true;
            lblContraseñaAdmin.Visible = true;
            txtContraseñaAdmin.Visible = true;
            btnIngresarAdmin.Visible = true;

            lblUsuarioComp.Visible = false;
            txtUsuarioComp.Visible = false;
            lblContraseñaComp.Visible = false;
            txtContraseñaComp.Visible = false;
            btnIngresarComp.Visible = false;
            lbl1.Visible = false;
            hlCrearUsuario.Visible = false;
            hlModificarUsuario.Visible = false;
        }

        public void MostrarControlesComprador()
        {
            lblUsuarioComp.Visible = true;
            txtUsuarioComp.Visible = true;
            lblContraseñaComp.Visible = true;
            txtContraseñaComp.Visible = true;
            btnIngresarComp.Visible = true;
            lbl1.Visible = true;
            hlCrearUsuario.Visible = true;
            hlModificarUsuario.Visible = true;

            lblUsuarioAdmin.Visible = false;
            txtUsuarioAdmin.Visible = false;
            lblContraseñaAdmin.Visible = false;
            txtContraseñaAdmin.Visible = false;
            btnIngresarAdmin.Visible = false;
        }
        
        
    }
}