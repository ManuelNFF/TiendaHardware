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
    public class DaoClientes
    {
        AccesoDatos ds = new AccesoDatos();
        public Clientes getCliente(Clientes cl)
        {
            DataTable tabla = ds.ObtenerTabla("Cliente", "SELECT * FROM Clientes WHERE DNI_Cli='" + cl.getDNI() + "'");
            cl.setDNI(tabla.Rows[0][0].ToString());
            cl.setNombre(tabla.Rows[0][1].ToString());
            cl.setApellido(tabla.Rows[0][2].ToString());
            cl.setCorreo(tabla.Rows[0][3].ToString());
            cl.setTelefono(tabla.Rows[0][4].ToString());
            cl.setUsuario(tabla.Rows[0][5].ToString());
            cl.setContraseña(tabla.Rows[0][6].ToString());

            return cl;
        }

        public Clientes getClienteConUsuario(Clientes cl)
        {
            DataTable tabla = ds.ObtenerTabla("Cliente", "SELECT * FROM Clientes WHERE Usuario_Cli='" + cl.getUsuario() + "'");
            cl.setDNI(tabla.Rows[0][0].ToString());
            cl.setNombre(tabla.Rows[0][1].ToString());
            cl.setApellido(tabla.Rows[0][2].ToString());
            cl.setCorreo(tabla.Rows[0][3].ToString());
            cl.setTelefono(tabla.Rows[0][4].ToString());
            cl.setUsuario(tabla.Rows[0][5].ToString());
            cl.setContraseña(tabla.Rows[0][6].ToString());

            return cl;
        }

        public bool existeCuenta(Clientes cl)
        {
            string consulta = "SELECT * FROM Clientes WHERE Usuario_Cli = '" + cl.getUsuario() + "' AND Contraseña = '" + cl.getContraseña() + "'";
            return ds.existe(consulta);
        }
        public bool existeClienteDNI(Clientes cli)
        {
            String consulta = "SELECT * FROM Clientes WHERE DNI_Cli='" + cli.getDNI() + "'";
            return ds.existe(consulta);
        }

        public bool existeClienteUsuario(Clientes cli)
        {
            String consulta = "SELECT * FROM Clientes WHERE Usuario_Cli='" + cli.getUsuario() + "'";
            return ds.existe(consulta);
        }

        public DataTable getTablaClientes()
        {
            DataTable tabla = ds.ObtenerTabla("CLIENTES", "SELECT * FROM Clientes");
            return tabla;
        }

        ///ELIMINAR CLIENTE:
        public int eliminarCliente(Clientes cli)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosClienteEliminar(ref comando, cli);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarCliente");
        }
        private void ArmarParametrosClienteEliminar(ref SqlCommand Comando, Clientes cli)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@DNI", SqlDbType.Int);
            SqlParametros.Value = cli.getDNI();
        }
        /*
           CREATE PROCEDURE spEliminarCliente
            @DNI char(8)
            AS
            DELETE FROM Clientes WHERE DNI_Cli=@DNI
           GO
        */


        ///AGREGAR CLIENTE
        public int agregarCliente(Clientes cli)
        {
            cli.setDNI(cli.getDNI());
            SqlCommand comando = new SqlCommand();
            ArmarParametrosClienteAgregar(ref comando, cli);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarCliente");
        }
        private void ArmarParametrosClienteAgregar(ref SqlCommand Comando, Clientes cli)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@DNI", SqlDbType.Char);
            SqlParametros.Value = cli.getDNI();
            SqlParametros = Comando.Parameters.Add("@Nombre", SqlDbType.Char);
            SqlParametros.Value = cli.getNombre();
            SqlParametros = Comando.Parameters.Add("@Apellido", SqlDbType.Char);
            SqlParametros.Value = cli.getApellido();
            SqlParametros = Comando.Parameters.Add("@Correo", SqlDbType.Char);
            SqlParametros.Value = cli.getCorreo();
            SqlParametros = Comando.Parameters.Add("@Telefono", SqlDbType.Char);
            SqlParametros.Value = cli.getTelefono();
            SqlParametros = Comando.Parameters.Add("@Usuario", SqlDbType.Char);
            SqlParametros.Value = cli.getUsuario();
            SqlParametros = Comando.Parameters.Add("@Contraseña", SqlDbType.Char);
            SqlParametros.Value = cli.getContraseña();
        }
        /*CREATE PROCEDURE spAgregarCliente
            @DNI char (8), @Nombre char (25), @Apellido char (25), @Correo char (25), @Telefono char (15), @Usuario char (15), @Contraseña char (15)
	        AS
            INSERT INTO Clientes(DNI_Cli, Nombre_Cli, Apellido_Cli, Correo_Cli, Telefono_Cli, Usuario_Cli, Contraseña)

            SELECT @DNI, @Nombre, @Apellido, @Correo, @Telefono, @Usuario, @Contraseña
            GO
        */


        ///MODIFICAR CLIENTE
        public int ModificarCliente(Clientes cli)
        {
            cli.setDNI(ds.ObtenerFilaClienteModificar("SELECT * FROM Clientes WHERE DNI_Cli='" + cli.getDNI() + "'").ToString());
            SqlCommand comando = new SqlCommand();
            ArmarParametrosClienteModificar(ref comando, cli);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spModificarCliente");
        }
        private void ArmarParametrosClienteModificar(ref SqlCommand Comando, Clientes cli)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@DNI", SqlDbType.Char);
            SqlParametros.Value = cli.getDNI();
            SqlParametros = Comando.Parameters.Add("@Nombre", SqlDbType.Char);
            SqlParametros.Value = cli.getNombre();
            SqlParametros = Comando.Parameters.Add("@Apellido", SqlDbType.Char);
            SqlParametros.Value = cli.getApellido();
            SqlParametros = Comando.Parameters.Add("@Correo", SqlDbType.Char);
            SqlParametros.Value = cli.getCorreo();
            SqlParametros = Comando.Parameters.Add("@Telefono", SqlDbType.Char);
            SqlParametros.Value = cli.getTelefono();
            SqlParametros = Comando.Parameters.Add("@Usuario", SqlDbType.Char);
            SqlParametros.Value = cli.getUsuario();
            SqlParametros = Comando.Parameters.Add("@Contraseña", SqlDbType.Char);
            SqlParametros.Value = cli.getContraseña();
        }
        /*CREATE PROCEDURE spModificarCliente
            @DNI char (8), @Nombre char (25), @Apellido char (25), @Correo char (25), @Telefono char (15), @Usuario char (15), @Contraseña char (15)
	        AS
            BEGIN
              UPDATE Clientes
               SET Nombre_Cli = @Nombre, Apellido_Cli = @Apellido, Correo_Cli = @Correo, Telefono_Cli = @Telefono, Usuario_Cli = @Usuario, Contraseña = @Contraseña
               WHERE DNI_Cli = @DNI
            END
          GO
        */
    }

}
