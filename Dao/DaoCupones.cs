using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;

namespace Dao
{
    public class DaoCupones
    {
        AccesoDatos ds = new AccesoDatos();
        public Cupones getCupon(Cupones cup)
        {
            DataTable tabla = ds.ObtenerTabla("Cupon", "Select * from Cupones where CodCupon_Cu=" + cup.getCodigo());
            cup.setCodigo(tabla.Rows[0][0].ToString());
            cup.setDescuento(Convert.ToDecimal(tabla.Rows[0][1].ToString()));
            cup.setImporteMinimo(Convert.ToDecimal(tabla.Rows[0][2].ToString()));
            cup.setEstado(Convert.ToBoolean(tabla.Rows[0][3]));
            return cup;
        }

        public Boolean existeCupon(Cupones cup)
        {
            String consulta = "SELECT * FROM Cupones WHERE CodCupon_Cu='" + cup.getCodigo() + "'";
            return ds.existe(consulta);
        }

        public DataTable getTablaCupones()
        {
            DataTable tabla = ds.ObtenerTabla("Cupones", "SELECT * FROM Cupones");
            return tabla;
        }

        public int eliminarCupon(Cupones cup)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCuponesEliminar(ref comando, cup);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarCupon");
        }


        public int agregarCupones(Cupones cup)
        {
            cup.setCodigo(cup.getCodigo());
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCuponesAgregar(ref comando, cup);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarCupones");
        }
        public int ModificarCupones(Cupones cup)
        {
            cup.setCodigo(ds.ObtenerFilaCuponesModificar("SELECT * FROM Cupones WHERE CodCupon_Cu='" + cup.getCodigo() + "'").ToString());
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCuponesModificar(ref comando, cup);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spModificarCupones");
        }

        private void ArmarParametrosCuponesModificar(ref SqlCommand Comando, Cupones cup)
        {
            Comando.Parameters.AddWithValue("@CodCupon", cup.getCodigo());
            Comando.Parameters.AddWithValue("@ImporteDescuento", cup.getDescuento());
            Comando.Parameters.AddWithValue("@ImporteMinimo", cup.getImporteMinimo());
            Comando.Parameters.AddWithValue("@Estado", cup.getEstado());
        }
        /* 
           CREATE PROCEDURE spModificarCupones
            @CodCupon char(16), @ImporteDescuento money, @ImporteMinimo money, @Estado bit
            AS
            BEGIN
             UPDATE Cupones
                SET @CodCupon = CodCupon_Cu, @ImporteDescuento = Descuento_Cu, @ImporteMinimo = ImpMinVenta_Cu, @Estado = Estado_Cu
             WHERE CodCupon_Cu = @CodCupon
            END
          GO
        */


        private void ArmarParametrosCuponesEliminar(ref SqlCommand Comando, Cupones cup)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@CodCupon", SqlDbType.Int);
            SqlParametros.Value = cup.getCodigo();
        }

        /*CREATE PROCEDURE spEliminarCupon
        @CodCupon char(16)
        AS
        DELETE FROM Cupones WHERE CodCupon_Cu=@CodCupon
        GO
        */

        private void ArmarParametrosCuponesAgregar(ref SqlCommand Comando, Cupones cup)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@CodCupon", SqlDbType.Char);
            SqlParametros.Value = cup.getCodigo();
            SqlParametros = Comando.Parameters.Add("@ImporteDescuento", SqlDbType.Char);
            SqlParametros.Value = cup.getDescuento();
            SqlParametros = Comando.Parameters.Add("@ImporteMinimo", SqlDbType.Char);
            SqlParametros.Value = cup.getImporteMinimo();
            SqlParametros = Comando.Parameters.Add("@Estado", SqlDbType.Bit);
            SqlParametros.Value = cup.getEstado();
        }

        /*CREATE PROCEDURE spAgregarCupones
	    @CodCupon char(16), @ImporteDescuento money, @ImporteMinimo money, @Estado bit
	    AS
	    INSERT INTO Cupones(CodCupon_Cu, Descuento_Cu, ImpMinVenta_Cu, Estado_Cu)
	    SELECT @CodCupon, @ImporteDescuento, @ImporteMinimo, @Estado
        GO
        */
    }
}
