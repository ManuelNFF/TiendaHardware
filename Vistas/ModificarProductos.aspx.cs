using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class ModificarProductos : System.Web.UI.Page
    {
        NegocioArticulo negArt = new NegocioArticulo();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if(negArt.CorroborarExistenciaId(Convert.ToInt32(txtCodBuscar.Text)) == true)
            {
                lblNoExiste.Text = "";
                //El producto existe. Llenamos los controles con la info del producto
                lblCod.Text = txtCodBuscar.Text;
                txtNombre.Text = negArt.get(Convert.ToInt32(lblCod.Text)).getNombre();
                txtCategoria.Text = negArt.get(Convert.ToInt32(lblCod.Text)).getCodCat().ToString();
                txtDescripcion.Text = negArt.get(Convert.ToInt32(lblCod.Text)).getDescripcion();
                txtStock.Text = negArt.get(Convert.ToInt32(lblCod.Text)).getStock().ToString();
                txtPrecio.Text = negArt.get(Convert.ToInt32(lblCod.Text)).getPrecio().ToString();
                ddlEstado.SelectedValue = negArt.get(Convert.ToInt32(lblCod.Text)).getEstado().ToString();

            }
            else
            {
                LimpiarCampos();
                lblNoExiste.Text = "El código del producto ingresado no existe en la base de datos.";
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            NegocioArticulo negArt = new NegocioArticulo();
            bool estado = Convert.ToBoolean(ddlEstado.SelectedValue);

            int codArticulo = Convert.ToInt32(lblCod.Text);
            string nombre = txtNombre.Text;
            int codCategoria = Convert.ToInt32(txtCategoria.Text);
            string descripcion = txtDescripcion.Text;
            int stock = Convert.ToInt32(txtStock.Text);
            decimal precio = Convert.ToDecimal(txtPrecio.Text);
            string imagenURL = iImagen.ImageUrl;

            negArt.ModificarArticulo(codArticulo, nombre, codCategoria, descripcion, stock, precio, imagenURL, estado);

            LimpiarCampos();

            lblMensaje.Text = "El producto se ha modificado con éxito.";



        }
        

        public void LimpiarCampos()
        {
            txtCodBuscar.Text = "";
            lblNoExiste.Text = "";
            lblMensaje.Text = "";
            lblCod.Text = "";
            txtNombre.Text = "";
            txtDescripcion.Text = "";
            txtCategoria.Text = "";
            txtPrecio.Text = "";
            txtStock.Text = "";
            ddlEstado.SelectedIndex = 0;

        }
    }
}