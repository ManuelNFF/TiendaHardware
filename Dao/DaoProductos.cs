using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
   public  class DaoProductos
    {
        AccesoDatos ds = new AccesoDatos();
        public Productos getProductos(Productos cat)
        {
            DataTable tabla = ds.obtenerTablas("Articulos", "Select * from Articulos where Cod_Ar=" + cat.getIdProductos());
            cat.setIdProductos(tabla.Rows[0][0]);
            cat.setNombreProductos(tabla.Rows[0][1].ToString());
            cat.setDescripcion(tabla.Rows[0][2].ToString());
            return cat;
        }

        public Boolean existeProductos(Productos cat)
        {
            String consulta = "Select * from Articulos where Nombre_Ar='" + cat.getNombreProductos() + "'";
            return ds.existe(consulta);
        }

        public DataTable getTablaProductos()
        {
            
            DataTable tabla = ds.obtenerTablas("Articulos", "Select * from Articulos");
            return tabla;
        }

        public int eliminarProductos(Productos cat)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosProductosEliminar(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarProductos");
        }


        public int agregarProductos(Productos cat)
        {

            cat.setIdProductos(ds.ObtenerMaximo("SELECT max(Cod_Ar) FROM Articulos") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosProductosAgregar(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarArticulo");
        }

        private void ArmarParametrosProductosEliminar(ref SqlCommand Comando, Productos cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDARTICULO", SqlDbType.Int);
            SqlParametros.Value = cat.getIdProductos();
        }

        private void ArmarParametrosProductosAgregar(ref SqlCommand Comando, Productos cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDARTICULO", SqlDbType.Int);
            SqlParametros.Value = cat.getIdProductos();
            SqlParametros = Comando.Parameters.Add("@NOMBREART", SqlDbType.VarChar);
            SqlParametros.Value = cat.getNombreProductos();
        }
    }
}
