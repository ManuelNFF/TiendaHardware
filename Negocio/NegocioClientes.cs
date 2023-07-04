using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;
using System.Data;


namespace Negocio
{
    public class NegocioClientes
    {
        DaoClientes daoCli = new DaoClientes();

        public bool existeUsuario(string usuario)
        {
            Clientes cli = new Clientes();
            cli.setUsuario(usuario);
            if (daoCli.existeClienteUsuario(cli))
            {
                return true;
            }
            return false;
        }

        public bool existeDNI(string dni)
        {
            Clientes cli = new Clientes();
            cli.setDNI(dni);
            if (daoCli.existeClienteDNI(cli))
            {
                return true;
            }
            return false;
        }
    
        public bool contraseñaCorrecta(string contraseña, string usuario)
        {
            Clientes cli = new Clientes();
            cli.setUsuario(usuario);
            cli.setContraseña(contraseña);

            if (daoCli.existeCuenta(cli))
            {
                return true;
            }
            return false;
        }

        public void crearUsuario(string dni, string nom, string ap, string co, string tel, string us, string cont)
        {
            Clientes cliente = new Clientes();
            cliente.setDNI(dni);
            cliente.setNombre(nom);
            cliente.setApellido(ap);
            cliente.setCorreo(co);
            cliente.setTelefono(tel);
            cliente.setUsuario(us);
            cliente.setContraseña(cont);

            daoCli.agregarCliente(cliente);
        }
   
        public void reestablecerUsuarioYContraseña(string dni, string usuario, string contraseña)
        {
            Clientes cliente = new Clientes();
            cliente.setDNI(dni);
            daoCli.getCliente(cliente);
            //se obtienen todos los datos del cliente y se resetean los nuevos ingresados:
            cliente.setUsuario(usuario);
            cliente.setContraseña(contraseña);

            daoCli.ModificarCliente(cliente);
        }

        public Clientes getClienteConUsuario(string usuario)
        {
            Clientes cli = new Clientes();
            cli.setUsuario(usuario);
            return daoCli.getClienteConUsuario(cli);
        }
    }
}
