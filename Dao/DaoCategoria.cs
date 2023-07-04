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
    public class DaoCategoria
    {
        AccesoDatos ds = new AccesoDatos();
        public Categoria getCategoria(Categoria cat)
        {
            DataTable tabla = ds.ObtenerTabla("Categoria", "Select * from categorias where CodCat_Ca=" + cat.getCod());
            cat.setCod(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            cat.setNombre(tabla.Rows[0][1].ToString());
            cat.setEstado(Convert.ToBoolean(tabla.Rows[0][2]));
            return cat;
        }

        public Boolean existeCategoría(Categoria cat)
        {
            String consulta = "SELECT * FROM Categorias WHERE CodCat_Ca='" + cat.getCod() + "'";
            return ds.existe(consulta);
        }

        public DataTable getTablaCategorias()
        {
            DataTable tabla = ds.ObtenerTabla("Categoria", "SELECT * FROM Categorias");
            return tabla;
        }

        public int eliminarCategoria(Categoria cat)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriaEliminar(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarCategoria");
        }


        public int agregarCategoria(Categoria cat)
        {

            cat.setCod(ds.ObtenerMaximo("SELECT MAX(CodCat_Ca) FROM Categorias") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriaAgregar(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarCategoria");
        }
        public int ModificarCategoria(Categoria cat)
        {
            cat.setCod(ds.ObtenerFilaCategoriaModificar("SELECT * FROM Categorias WHERE CodCat_Ca='" + cat.getCod() + "'"));
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriasModificar(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spModificarCategoria");
        }

        private void ArmarParametrosCategoriasModificar(ref SqlCommand Comando, Categoria cat)
        {
            Comando.Parameters.AddWithValue("@CodCategoria", cat.getCod());
            Comando.Parameters.AddWithValue("@Nombre", cat.getNombre());
            Comando.Parameters.AddWithValue("@Estado", cat.getEstado());
        }
        /* 
           CREATE PROCEDURE spModificarCategoria
            @CodCategoria int, @Nombre char (25), @Estado bit
            AS
            BEGIN
             UPDATE Categorias
                SET @CodCategoria = CodCat_Ca, @Nombre = Nombre_Ca, @Estado = Estado_Ca
             WHERE CodCat_Ca = @CodCategoria
            END
          GO
        */


        private void ArmarParametrosCategoriaEliminar(ref SqlCommand Comando, Categoria cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@CodCat", SqlDbType.Int);
            SqlParametros.Value = cat.getCod();
        }

        /*CREATE PROCEDURE spEliminarCategoria
        @CodCat int
        AS

        DELETE FROM Categorias WHERE CodCat_Ca=@CodCat
        DELETE FROM Articulos WHERE CodCat_Ar=@CodCat
        GO
        */

        private void ArmarParametrosCategoriaAgregar(ref SqlCommand Comando, Categoria cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Nombre", SqlDbType.Char);
            SqlParametros.Value = cat.getNombre();
            SqlParametros = Comando.Parameters.Add("@Estado", SqlDbType.Bit);
            SqlParametros.Value = cat.getEstado();
        }

        /*CREATE PROCEDURE spAgregarCategoria
	    @Nombre char(20), @Estado bit
	    AS
	    INSERT INTO Categorias(Nombre_Ca, Estado_Ca)
	    SELECT @Nombre, @Estado
        GO
        */

        public DataTable getTablaEspecifica(int codcat)
        {
            string consulta = "SELECT * FROM Categorias WHERE CodCat_Ca=" + codcat;
            string nombreTabla = "Categorias";
            return ds.ObtenerTabla(nombreTabla, consulta);
        }

    }
}
