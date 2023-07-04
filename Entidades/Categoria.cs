using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Categoria
    {
        private int CodCat_Ca;
        private String Nombre_Ca;
        private bool Estado_Ca;

        public Categoria()
        {

        }

        public int getCod()
        {
            return CodCat_Ca;
        }

        public void setCod(int cod)
        {
            CodCat_Ca = cod;
        }

        public String getNombre()
        {
            return Nombre_Ca;
        }

        public void setNombre(String nom)
        {
            Nombre_Ca = nom;
        }

        public bool getEstado()
        {
            return Estado_Ca;
        }

        public void setEstado(bool est)
        {
            Estado_Ca = est;
        }
    }
}
