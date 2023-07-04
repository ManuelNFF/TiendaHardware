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
    public class DaoArticulo
    {
        AccesoDatos ds = new AccesoDatos();
        public Articulo getArticulo(Articulo art)
        {
            DataTable tabla = ds.ObtenerTabla("Articulos", "SELECT * FROM Articulos WHERE CodArt_Ar=" + art.getCodArt());
            art.setCodArt(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            art.setCodCat(Convert.ToInt32(tabla.Rows[0][1]));
            art.setNombre(tabla.Rows[0][2].ToString());
            art.setDescripcion(tabla.Rows[0][3].ToString());
            art.setStock(Convert.ToInt32(tabla.Rows[0][4]));
            art.setPrecio(Convert.ToInt32(tabla.Rows[0][5]));
            art.setImagenUr(tabla.Rows[0][6].ToString());
            art.setEstado(Convert.ToBoolean(tabla.Rows[0][7]));

            return art;
        }

        public Boolean existeArticulo(Articulo art)
        {
            String consulta = "SELECT * FROM Articulos WHERE CodArt_Ar='" + art.getCodArt() + "'";
            return ds.existe(consulta);
        }



        public DataTable getTablaArticulos()
        {
            DataTable tabla = ds.ObtenerTabla("Articulos", "SELECT * FROM Articulos");
            return tabla;
        }

        public DataTable getTablaArticulosLvl()
        {
            DataTable tabla = ds.ObtenerTabla("Articulos", "SELECT CodArt_Ar, Nombre_Ar, Descripcion_Ar, Precio_Ar, ImagenUr_Ar FROM Articulos");
            return tabla;
        }
        public DataTable getTablaArticulosLvlFiltrada(int codcat)
        {
            DataTable tabla = ds.ObtenerTabla("Articulos", "SELECT CodArt_Ar, CodCat_Ar, Nombre_Ar, Descripcion_Ar, Precio_Ar, ImagenUr_Ar FROM Articulos WHERE CodCat_Ar='" + codcat + "'");
            return tabla;

        }

        public DataTable getTablaArticulosOrdenada(string consulta)
        {
            DataTable tabla = ds.ObtenerTabla("Articulos", consulta);
            return tabla;
        }

       

        public int eliminarArticulo(Articulo art)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosArticulosEliminar(ref comando, art);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarArticulo");
        }


        public int agregarArticulo(Articulo art)
        {

            art.setCodArt(ds.ObtenerMaximo("SELECT MAX(CodArt_Ar) FROM Articulos") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosArticulosAgregar(ref comando, art);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarArticulo");
        }

        private void ArmarParametrosArticulosEliminar(ref SqlCommand Comando, Articulo art)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@CodArt", SqlDbType.Int);
            SqlParametros.Value = art.getCodArt();
        }
     
         //CREATE PROCEDURE spEliminarArticulo
         //   @CodArt int
         //   AS
         //   DELETE FROM Articulos WHERE CodArt_Ar=@CodArt
         //GO

        private void ArmarParametrosArticulosAgregar(ref SqlCommand Comando, Articulo art)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@CodCat", SqlDbType.Int);
            SqlParametros.Value = art.getCodCat();
            SqlParametros = Comando.Parameters.Add("@Nombre", SqlDbType.Char);
            SqlParametros.Value = art.getNombre();
            SqlParametros = Comando.Parameters.Add("@Descripcion", SqlDbType.Char);
            SqlParametros.Value = art.getDescripcion();
            SqlParametros = Comando.Parameters.Add("@Stock", SqlDbType.Int);
            SqlParametros.Value = art.getStock();
            SqlParametros = Comando.Parameters.Add("@Precio", SqlDbType.Money);
            SqlParametros.Value = art.getPrecio();
            SqlParametros = Comando.Parameters.Add("@ImagenURL", SqlDbType.Char);
            SqlParametros.Value = art.getImagenUr();
            SqlParametros = Comando.Parameters.Add("@Estado", SqlDbType.Bit);
            SqlParametros.Value = art.getEstado();
        }

        /*CREATE PROCEDURE spAgregarArticulo
            @CodCat int, @Nombre char (25), @Descripcion char (30), @Stock int, @Precio money, @ImagenURL char (25), @Estado bit
	        AS
            INSERT INTO Articulos(CodCat_Ar, Nombre_Ar, Descripcion_Ar, Stock_Ar, Precio_Ar, ImagenUr_Ar)

            SELECT @CodCat, @Nombre, @Descripcion, @Stock, @Precio, @ImagenURL 
            GO
        */

        public int ModificarArticulo(Articulo art)
        {
            art.setCodArt(ds.ObtenerFilaArticuloModificar("SELECT * FROM Articulos WHERE CodArt_Ar='" + art.getCodArt() + "'"));
            SqlCommand comando = new SqlCommand();
            ArmarParametrosArticulosModificar(ref comando, art);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spModificarArticulo");
        }

        private void ArmarParametrosArticulosModificar(ref SqlCommand Comando, Articulo art)
        {
            SqlParameter SqlParametros = new SqlParameter();

            SqlParametros = Comando.Parameters.Add("@CodCategoria", SqlDbType.Int);
            SqlParametros.Value = art.getCodCat();
            SqlParametros = Comando.Parameters.Add("@Nombre", SqlDbType.Char);
            SqlParametros.Value = art.getNombre();
            SqlParametros = Comando.Parameters.Add("@Descripcion", SqlDbType.Char);
            SqlParametros.Value = art.getDescripcion();
            SqlParametros = Comando.Parameters.Add("@Stock", SqlDbType.Int);
            SqlParametros.Value = art.getStock();
            SqlParametros = Comando.Parameters.Add("@Precio", SqlDbType.Money);
            SqlParametros.Value = art.getPrecio();
            SqlParametros = Comando.Parameters.Add("@ImagenURL", SqlDbType.Char);
            SqlParametros.Value = art.getImagenUr();
            SqlParametros = Comando.Parameters.Add("@Estado", SqlDbType.Bit);
            SqlParametros.Value = art.getEstado();
            SqlParametros = Comando.Parameters.Add("@CodArticulo", SqlDbType.Int);
            SqlParametros.Value = art.getCodArt();
        }

        /* 
           CREATE PROCEDURE spModificarArticulo
            @CodArt int, @CodCat int, @Nombre char (25), @Descripcion char (30), @Stock int, @Precio money, @ImagenURL char (25), @Estado bit
            AS
            BEGIN
             UPDATE Articulos
                SET @CodCat = CodCat_Ar, @Nombre = Nombre_Ar, @Descripcion = Descripcion_Ar, @Stock = Stock_Ar, @Precio = Precio_Ar, @ImagenURL = ImagenUr_Ar, @Estado = Estado_Ar
             WHERE CodArt_Ar = @CodArt
            END
          GO
        */

        public DataTable getTablaFiltrada(int CodArt)
        {
            string consultaSQL = "SELECT * FROM Articulos WHERE CodArt_Ar=" + CodArt;
            string nombreTabla = "Articulos";
            return ds.ObtenerTabla(nombreTabla, consultaSQL);
        }


        public void eliminarArticulosDeXCategoria(Articulo art)
        {
            SqlCommand comando = new SqlCommand();
            ParametrosEliminarArticulosCategoria(ref comando, art);
            ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarArticulosCategoria");
        }

        private void ParametrosEliminarArticulosCategoria(ref SqlCommand Comando, Articulo art)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@CodCat", SqlDbType.Int);
            SqlParametros.Value = art.getCodArt();
        }

        //CREATE PROCEDURE spEliminarArticulosCategoria
        //   @CodCat int
        //   AS
        //   DELETE FROM Articulos WHERE CodCat_Ar=@CodCat
        //GO

        public int obtenerMayorID()
        {
            return (ds.ObtenerMaximo("SELECT MAX(CodArt_Ar) FROM Articulos"));
        }
    }
}
