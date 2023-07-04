using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class CrearUsuario2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            lblErrorDNI.Visible = false;
            lblErrorUsuario.Visible = false;
            lblMensaje.Visible = false;
            NegocioClientes negCli = new NegocioClientes();
            string dni = txtDNI.Text;
            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            string correo = txtCorreo.Text;
            string tel = txtTel.Text;
            string usuario = txtUsuario.Text;
            string contraseña = txtContra1.Text;

            if (negCli.existeDNI(dni) == true)
            {
                //si el dni existe, finaliza la ejecución y se muestra el mensaje de error
                lblErrorDNI.Visible = true;
            }
            else
            {
                //no existe un registro con ese dni, por lo que continúa 
                //corroborar si existe el usuario, el cual  debe ser único
                if (negCli.existeUsuario(usuario) == true)
                {
                    //el nombre de usuario ya está usado, por lo que debe mostrar el mensaje de error
                    lblErrorUsuario.Visible = true;
                }
                else
                {
                    //no hay problemas con el dni ni el usuario, ambos son únicos
                    //procede a crear el usuario y limpiar los campos
                    negCli.crearUsuario(dni, nombre, apellido, correo, tel, usuario, contraseña);
                    lblMensaje.Text = "El usuario se agregó con éxito";
                    lblMensaje.Visible = true;
                    LimpiarCampos();

                }
            }
            
        }

        public void LimpiarCampos()
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtDNI.Text = "";
            txtCorreo.Text = "";
            txtTel.Text = "";
            txtUsuario.Text = "";
            txtContra1.Text = "";
            txtContra2.Text = "";

            lblErrorDNI.Visible = false;
            lblErrorUsuario.Visible = false;

        }
    }
}