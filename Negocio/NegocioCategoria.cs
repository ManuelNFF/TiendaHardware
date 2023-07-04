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
    public class NegocioCategoria
    {
        DaoCategoria daoCat = new DaoCategoria();

        public DataTable getTabla()
        {
            return daoCat.getTablaCategorias();
        }

        public Categoria getCategoria(int codCat)
        {
            Categoria cat = new Categoria();
            cat.setCod(codCat);
            return daoCat.getCategoria(cat);

        }

        public Boolean existeCategoria(int cat)
        {
            Categoria codCat = new Categoria();
            codCat.setCod(cat);
            return daoCat.existeCategoría(codCat);

        }

        public void agregarCategoria(String Nombre, bool Estado)
        {
            Categoria cat = new Categoria();

            cat.setEstado(Estado);
            cat.setNombre(Nombre);

            daoCat.agregarCategoria(cat);
        }

        public bool eliminarCategoria(int CodCat)
        {
            Categoria cat = new Categoria();
            cat.setCod(CodCat);
            if (daoCat.existeCategoría(cat))
            {
                int filasAfectadas = daoCat.eliminarCategoria(cat);
                return true;
            }

            return false;
        }

        public void ModificarCategoria(int codcat, string nombre, bool estado)
        {
            Categoria cat = new Categoria();
            cat.setCod(codcat);
            cat.setNombre(nombre);
            cat.setEstado(estado);

            daoCat.ModificarCategoria(cat);
        }

        public DataTable getTablaEspecifica(int codCat)
        {
            return daoCat.getTablaEspecifica(codCat);
        }

    }
}
