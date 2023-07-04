using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Clientes
    {
        private string DNI_Cli;
        private string Nombre_Cli;
        private string Apellido_Cli;
        private string Correo_Cli;
        private string Telefono_Cli;
        private string Usuario_Cli;
        private string Contraseña_Cli;

        public Clientes()
        {

        }

        public string getDNI()
        {
            return DNI_Cli;
        }
        public void setDNI(string dni)
        {
            DNI_Cli = dni;
        }

        public string getNombre()
        {
            return Nombre_Cli;
        }
        public void setNombre(string nom)
        {
            Nombre_Cli = nom;
        }

        public string getApellido()
        {
            return Apellido_Cli;
        }
        public void setApellido(string a)
        {
            Apellido_Cli = a;
        }

        public string getCorreo()
        {
            return Correo_Cli;
        }
        public void setCorreo(string c)
        {
            Correo_Cli = c;
        }

        public string getTelefono()
        {
            return Telefono_Cli;
        }
        public void setTelefono(string t)
        {
            Telefono_Cli = t;
        }

        public string getUsuario()
        {
            return Usuario_Cli;
        }
        public void setUsuario(string u)
        {
            Usuario_Cli = u;
        }

        public string getContraseña()
        {
            return Contraseña_Cli;
        }
        public void setContraseña(string contra)
        {
            Contraseña_Cli = contra;
        }
    }
}
