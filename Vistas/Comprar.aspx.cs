using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class Comprar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            ///llenar datos personales del usuario. 
            if (Session["nombreUsuario"] != null)
            {
                NegocioClientes negCli = new NegocioClientes();
                CargarDatosUsuario(negCli);
            }
        }
        public void CargarDatosUsuario(NegocioClientes negCli)
        {
            lblNombre.Text = negCli.getClienteConUsuario(Session["nombreUsuario"].ToString()).getNombre();
            lblApellido.Text = negCli.getClienteConUsuario(Session["nombreUsuario"].ToString()).getApellido();
            lblDni.Text = negCli.getClienteConUsuario(Session["nombreUsuario"].ToString()).getDNI();
            lblEmail.Text = negCli.getClienteConUsuario(Session["nombreUsuario"].ToString()).getCorreo();
            lblTelefono.Text = negCli.getClienteConUsuario(Session["nombreUsuario"].ToString()).getTelefono();
            lblUsuario.Text = Session["nombreUsuario"].ToString();
        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            lblErrorPago.Visible = false;
            lblErrorEntrega.Visible = false;
            bool validarPago = ValidarFormaDePago();
            //corroborar datos sobre la forma de pago
            if (ValidarFormaDePago() == true)
            {
                ///se completaron los controles sobre la forma de pago.
                ///pasamos a corroborar el envío
                if (ValidarEntrega() == true)
                {
                    ///ambos apartados obligatorios están completos y podemos pasar a validar la compra 
                    ///Redireccionamos a ConfirmarCompra.aspx

                    Server.Transfer("ConfirmarCompra.aspx");
                }
            }
            else
            {
                ///se mostraron los errores en la forma de pago, también hay q corroborar
                ///los de la entrega, para mostrar todo junto y no de a 1 error a la vez
                ValidarEntrega();
            }
        }

        protected bool ValidarEntrega()
        {
            lblErrorEntrega.Visible = false;
            if (ddlEntrega.SelectedIndex == 0)
            {
                lblErrorEntrega.Text = "*No se seleccinó ningún método de entrega";
                lblErrorEntrega.Visible = true;
                return false;
            }
            return true;

        }

        protected bool ValidarFormaDePago()
        {
            lblErrorPago.Visible = false;
            if (ddlFormaDePago.SelectedIndex == 0)
            {
                lblErrorPago.Text = "*No se seleccinó ninguna forma de pago";
                lblErrorPago.Visible = true;
                return false;
            }
            return true;

        }

        protected void ddlFormaDePago_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblErrorPago.Visible = false;
            int caso = Convert.ToInt32(ddlFormaDePago.SelectedIndex);
            switch (caso)
            {
                case 0:
                    NoCargarControlesTarjetas();
                    break;
                case 1:
                    NoCargarControlesTarjetas();
                    break;
                case 2:
                    cargarControlesTarjetas();
                    break;
                case 3:
                    cargarControlesTarjetas();
                    break;
            }
        }
        public void NoCargarControlesTarjetas()
        {
            lblTitularTarjeta.Visible = false;
            lblNumeroTarjeta.Visible = false;
            lblVencimiento.Visible = false;
            lblNumeroSeguridad.Visible = false;

            txtTitular.Visible = false;
            txtNumeroTarjeta.Visible = false;
            txtVencimiento.Visible = false;
            txtNumeroSeguridad.Visible = false;

            rfvTitular.Enabled = false;
            rfvNumTarjeta.Enabled = false;
            rfvVencimiento.Enabled = false;
            rfvNumSeguridad.Enabled = false;
        }
        public void cargarControlesTarjetas()
        {
            lblTitularTarjeta.Visible = true;
            lblNumeroTarjeta.Visible = true;
            lblVencimiento.Visible = true;
            lblNumeroSeguridad.Visible = true;

            txtTitular.Visible = true;
            txtNumeroTarjeta.Visible = true;
            txtVencimiento.Visible = true;
            txtNumeroSeguridad.Visible = true;

            rfvTitular.Enabled = true;
            rfvNumTarjeta.Enabled = true;
            rfvVencimiento.Enabled = true;
            rfvNumSeguridad.Enabled = true;
        }

        protected void ddlEntrega_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblErrorEntrega.Visible = false;
            int caso = Convert.ToInt32(ddlEntrega.SelectedIndex);
            switch (caso)
            {
                case 0:
                    NoCargarControlesEntrega();
                    break;
                case 1:
                    NoCargarControlesEntrega();
                    break;
                case 2:
                    cargarControlesEntrega();
                    break;
            }
        }
        public void NoCargarControlesEntrega()
        {
            lblProvincia.Visible = false;
            lblLocalidad.Visible = false;
            lblCalle.Visible = false;

            txtProvincia.Visible = false;
            txtLocalidad.Visible = false;
            txtCalle.Visible = false;

            rfvProvincia.Enabled = false;
            rfvLocalidad.Enabled = false;
            rfvCalle.Enabled = false;

        }
        public void cargarControlesEntrega()
        {
            lblProvincia.Visible = true;
            lblLocalidad.Visible = true;
            lblCalle.Visible = true;

            txtProvincia.Visible = true;
            txtLocalidad.Visible = true;
            txtCalle.Visible = true;

            rfvProvincia.Enabled = true;
            rfvLocalidad.Enabled = true;
            rfvCalle.Enabled = true;
        }


    }
}