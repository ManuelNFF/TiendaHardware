using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class InicioAdministrador : System.Web.UI.Page
    {
        
        NegocioArticulo negArt = new NegocioArticulo();
        protected void Page_Load(object sender, EventArgs e)
        {
            //string usuario = Request["txtUsuarioAdmin"].ToString();
            //lblUsuario.Text = usuario;
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                DataTable tablaArticulos = negArt.getTabla();
                grdArticulos.DataSource = tablaArticulos;
                grdArticulos.DataBind();
            }

           

           
        }

        protected void btnBuscarID_Click(object sender, EventArgs e)
        {
            lblMensaje.Visible = false;
            int id = int.Parse(txtID.Text);

            if (negArt.existeArticulo(id))
            {
                cvBuscar.IsValid = true;
                DataTable tablaArticulos = negArt.getTablaFiltrada(id);

                grdArticulos.DataSource = tablaArticulos;
                grdArticulos.DataBind();
                txtID.Text = "";
            }
            else
            {
                cvBuscar.IsValid = false;
            }


        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            lblMensaje.Visible = false;
            DataTable tablaArticulos = negArt.getTabla();
            grdArticulos.DataSource = tablaArticulos;
            grdArticulos.DataBind();

            txtID.Text = "";
        }

        protected void cvBuscar_ServerValidate(object source, ServerValidateEventArgs args)
        {
            lblMensaje.Visible = false;
            int codArt = int.Parse(txtID.Text);
            if (negArt.existeArticulo(codArt))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnOrdenar_Click(object sender, EventArgs e)
        {
            lblMensaje.Visible = false;
            int indice = ddlOrdenar.SelectedIndex;
            NegocioArticulo negArt = new NegocioArticulo();
            switch (indice)
            {
                case 0:
                    lblMensaje.Text = "No se seleccionó ningún filtro.";
                    lblMensaje.Visible = true;
                    break;
                case 1:
                    //ordenar por código
                    string consulta1 = "SELECT * FROM Articulos ORDER BY CodArt_Ar";
                    DataTable tablaArticulos1 = negArt.getTablaOrdenada(consulta1);
                    grdArticulos.DataSource = tablaArticulos1;
                    grdArticulos.DataBind();
                    break;
                case 2:
                    //ordenar por nombre
                    string consulta2 = "SELECT * FROM Articulos ORDER BY Nombre_Ar";
                    DataTable tablaArticulos2 = negArt.getTablaOrdenada(consulta2);
                    grdArticulos.DataSource = tablaArticulos2;
                    grdArticulos.DataBind();
                    break;
                case 3:
                    //ordenar por categoria
                    string consulta3 = "SELECT * FROM Articulos ORDER BY CodCat_Ar";
                    DataTable tablaArticulos3 = negArt.getTablaOrdenada(consulta3);
                    grdArticulos.DataSource = tablaArticulos3;
                    grdArticulos.DataBind();
                    break;
            }
        }
    }
}