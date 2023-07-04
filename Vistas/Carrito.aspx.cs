using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;
using Entidades;



namespace Vistas
{
    public partial class Carrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tablaCarrito"] != null)
            {
                cargarGridView((DataTable)Session["tablaCarrito"]);
            }
            if(Session["Cupones"] != null)
            {
                Session["Cupones"] = null;
            }

        }


        protected void btnEliminarTodos_Click(object sender, EventArgs e)
        {
            if (Session["tablaCarrito"] != null)
            {
                Session["tablaCarrito"] = null;

                cargarGridView((DataTable)Session["tablaCarrito"]);

            }
        }

        public void cargarGridView(DataTable tablaCarrito)
        {
            grdCarrito.DataSource = tablaCarrito;
            grdCarrito.DataBind();
        }


        protected void btnComprar_Click(object sender, EventArgs e)
        {
            decimal subtotal = 0;
            decimal producto = 0;
            DataTable dt = new DataTable();
            dt = (DataTable)Session["tablaCarrito"];
            foreach (DataRow row in dt.Rows)
            { 
                producto = Convert.ToDecimal(row["Precio"]) * Convert.ToDecimal(row["Cantidad"]);
                subtotal += producto;
            }
            Session["Subtotal"] = subtotal;
            Response.Redirect("Comprar.aspx");
        }

        protected void LbIngresarCup_Click(object sender, EventArgs e)
        {
            txtCupon.Visible = true;
            btnAgregarCupon.Visible = true;
        }

        protected void btnAplicar_Click(object sender, EventArgs e)
        {
            lblError.Visible = false;
            //corroborar que el cupón exista
            NegocioCupones negcup = new NegocioCupones();
            if (negcup.existeCupon(txtCupon.Text))
            {
                ///el código existe, corroboremos que se el único que se está utilizando en esta compra
                if (Session["Cupones"] == null)
                {
                    Session["Cupones"] = txtCupon.Text;
                }
                else
                {
                    lblError.Text = "Ya hay un cupón en uso";
                    lblError.Visible = true;
                }
            }
            else
            {
                lblError.Text = "El cupón ingresado no existe";
                lblError.Visible = true;
            }
        }

    }
}