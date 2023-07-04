using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;

namespace Vistas
{
    public partial class ConfirmarCompra : System.Web.UI.Page
    {
        NegocioClientes negCli = new NegocioClientes();

        protected void Page_Load(object sender, EventArgs e)
        {
            ///llenamos el gridview con la información de los productos agregados al carrito
            ///y la suma del subtotal, el costo de envío y el total
            grdResumenCompra.DataSource = Session["tablaCarrito"];
            grdResumenCompra.DataBind();
            lblSubtotal.Text = "$   " + Session["Subtotal"];
            decimal subtotal = Convert.ToDecimal(Session["Subtotal"]);
            decimal costoenvio = 0;
            lblCostoEnvio.Text = "$   " + costoenvio;
            decimal total = subtotal + costoenvio;
            lblTotal.Text = "$   " + total;

            //llenamos campos sobre la información personal del cliente:
            lblNombre.Text = negCli.getClienteConUsuario(Session["nombreUsuario"].ToString()).getNombre();
            lblApellido.Text = negCli.getClienteConUsuario(Session["nombreUsuario"].ToString()).getApellido();
            lblDni.Text = negCli.getClienteConUsuario(Session["nombreUsuario"].ToString()).getDNI();
            lblEmail.Text = negCli.getClienteConUsuario(Session["nombreUsuario"].ToString()).getCorreo();
            lblTelefono.Text = negCli.getClienteConUsuario(Session["nombreUsuario"].ToString()).getTelefono();
            lblUsuario.Text = Session["nombreUsuario"].ToString();

            //llenamos datos sobre la entrega:
            string provincia;
            string entrega;
            string localidad;
            string calle;
            ////////////devuelve null y causa problemas////////////////////
            provincia = ((TextBox)PreviousPage.FindControl("txtProvincia")).Text;
            if(provincia != null)lblProvincia.Text = provincia;
            entrega = ((DropDownList)PreviousPage.FindControl("ddlEntrega")).SelectedValue.ToString();
            lblEntrega.Text = entrega;
            localidad = ((TextBox)PreviousPage.FindControl("txtLocalidad")).Text;
            if (localidad != null)lblLocalidad.Text = localidad;
            calle = ((TextBox)PreviousPage.FindControl("txtCalle")).Text;
            if (calle != null)lblCalle.Text = calle;
            

            //llenamos datos sobre el pago:
            string pago;
            string titular;
            string numTarj;
            string ven;
            string numseg;

            pago = ((DropDownList)PreviousPage.FindControl("ddlFormaDePago")).SelectedValue.ToString();
            lblFormaPago.Text = pago;

            titular = ((TextBox)PreviousPage.FindControl("txtTitular")).Text;
            if (titular != null) lblTitular.Text = titular;

            numTarj = ((TextBox)PreviousPage.FindControl("txtNumeroTarjeta")).Text;
            if (numTarj != null) lblNumeroTarjeta.Text = numTarj;

            ven = ((TextBox)PreviousPage.FindControl("txtVencimiento")).Text;
            if (ven != null) lblVencimiento.Text = ven;

            numseg = ((TextBox)PreviousPage.FindControl("txtNumeroSeguridad")).Text;
            if (numseg != null) lblNumeroSeguridad.Text = numseg;
        }
    }
}