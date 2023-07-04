using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;

namespace Vistas
{
    public partial class ABMCupones : System.Web.UI.Page
    {
        NegocioCupones negcup = new NegocioCupones();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                DataTable tablaCupones = negcup.getTabla();
                grdCupones.DataSource = tablaCupones;
                grdCupones.DataBind();
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            LimpiarLabels();
            ///corroborar que el código no esté en uso
            if (negcup.existeCupon(txtCodAg.Text))
            {
                ///el código existe dentro de la base de datos, lo informamos como un error
                lblErrorCodAg.Visible = true;
            }
            else
            {
                ///todo ok, lo agregamos
                string codCup = txtCodAg.Text.ToString();
                decimal impDesc = Convert.ToDecimal(txtDescuentoAg.Text);
                decimal impMin = Convert.ToDecimal(txtMinimoAg.Text);
                bool estado = Convert.ToBoolean(ddlEstadoAg.SelectedValue);
                negcup.crearCupon(codCup, impDesc, impMin, estado);
                LimpiarCampos();
                lblMensajeAg.Visible = true;

            }
        }

        public void LimpiarCampos()
        {
            ///campos de agregar
            txtCodAg.Text = "";
            txtDescuentoAg.Text = "";
            txtMinimoAg.Text = "";
            ddlEstadoAg.SelectedIndex = 0;
            ///campos de modificar
            txtBuscarCodMod.Text = "";
            txtCodMod.Text = "";
            txtDescuentoMod.Text = "";
            txtMinimoMod.Text = "";
            ddlEstadoMod.SelectedIndex = 0;
            ///campos de eliminar
            txtBuscarCodElim.Text = "";
            lblCodElim.Text = "";
            lblDescuentoElim.Text = "";
            lblMinimoElim.Text = "";
            lblEstadoElim.Text = "";
        }

        public void LimpiarLabels()
        {
            lblErrorBuscarCodElim.Visible = false;
            lblErrorBuscarCodMod.Visible = false;
            lblErrorCodAg.Visible = false;
            lblErrorCodMod.Visible = false;
            lblMensajeAg.Visible = false;
            lblMensajeMod.Visible = false;
            lblSeguroElim.Visible = false;
            lblMensajeElim.Visible = false;
            btnEliminar.Visible = false;
        }

        protected void btnBuscarMod_Click(object sender, EventArgs e)
        {
            LimpiarLabels();
            NegocioCupones negCup = new NegocioCupones();
            if (negCup.existeCupon(txtBuscarCodMod.Text))
            {
                //existe y completamos los textbox con los datos del cupón
                txtCodMod.Text = negCup.getCupon(txtBuscarCodMod.Text).getCodigo();
                txtDescuentoMod.Text = negCup.getCupon(txtBuscarCodMod.Text).getDescuento().ToString();
                txtMinimoMod.Text = negCup.getCupon(txtBuscarCodMod.Text).getImporteMinimo().ToString(); 
                if(negCup.getCupon(txtBuscarCodMod.Text).getEstado() == true)
                {
                    ddlEstadoMod.SelectedIndex = 0;
                }
                else
                {
                    ddlEstadoMod.SelectedIndex = 1;
                }
            }
            else
            {
                //no existe, informamos el error
                lblErrorBuscarCodMod.Visible = true;
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            LimpiarLabels();
            //corroborar que el código no esté en uso
            if (negcup.existeCupon(txtCodMod.Text))
            {
                //está en uso, notificamos el error
                lblErrorCodMod.Visible = true;
            }
            else
            {
                string codCup = txtCodMod.Text.ToString();
                decimal impDesc = Convert.ToDecimal(txtDescuentoMod.Text);
                decimal impMin = Convert.ToDecimal(txtMinimoMod.Text);
                bool estado = Convert.ToBoolean(ddlEstadoMod.SelectedValue);
                negcup.ModificarCupones(codCup, impDesc, impMin, estado);
                LimpiarCampos();
                lblMensajeMod.Visible = true;
            }
            
        }

        protected void btnBuscarElim_Click(object sender, EventArgs e)
        {
            LimpiarLabels();
            if (negcup.existeCupon(txtBuscarCodElim.Text))
            {
                ///preguntamos si está seguro de eliminar el cupón y llenamos los campos
                lblSeguroElim.Visible = true;
                btnEliminar.Visible = true;
                lblCodElim.Text = negcup.getCupon(txtBuscarCodElim.Text).getCodigo();
                lblDescuentoElim.Text = negcup.getCupon(txtBuscarCodElim.Text).getDescuento().ToString();
                lblMinimoElim.Text = negcup.getCupon(txtBuscarCodElim.Text).getImporteMinimo().ToString();
                lblEstadoElim.Text = negcup.getCupon(txtBuscarCodElim.Text).getEstado().ToString();
            }
            else
            {
                //no existe, informamos el error
                lblErrorBuscarCodElim.Visible = true;
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            negcup.eliminarCategoria(txtBuscarCodElim.Text);
            LimpiarCampos();
            lblMensajeElim.Visible = true;
        }

        protected void btnActualizarTabla_Click(object sender, EventArgs e)
        {
            DataTable tablaCupones = negcup.getTabla();
            grdCupones.DataSource = tablaCupones;
            grdCupones.DataBind();
        }
    }
}