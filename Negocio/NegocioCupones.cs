using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;
using System.Data;

namespace Negocio
{
    public class NegocioCupones
    {
        DaoCupones daoCu = new DaoCupones();

        public DataTable getTabla()
        {
            return daoCu.getTablaCupones();
        }

        public bool existeCupon(string cod)
        {
            Cupones cup = new Cupones();
            cup.setCodigo(cod);
            if (daoCu.existeCupon(cup))
            {
                return true;
            }
            return false;
        }

        public void crearCupon(string cod, decimal impDesc, decimal impMin, bool estado)
        {
            Cupones cup = new Cupones();
            cup.setCodigo(cod);
            cup.setDescuento(impDesc);
            cup.setImporteMinimo(impMin);
            cup.setEstado(estado);

            daoCu.agregarCupones(cup);
        }

        public Cupones getCupon(string cod)
        {
            Cupones cup = new Cupones();
            cup.setCodigo(cod);
            return daoCu.getCupon(cup);
        }

        public void ModificarCupones(string cod, decimal desc, decimal min, bool estado)
        {
            Cupones cup = new Cupones();
            cup.setCodigo(cod);
            cup.setDescuento(desc);
            cup.setImporteMinimo(min);
            cup.setEstado(estado);

            daoCu.ModificarCupones(cup);
        }

        public void eliminarCategoria(string cod)
        {
            Cupones cup = new Cupones();
            cup.setCodigo(cod);
            daoCu.eliminarCupon(cup);
        }


    }
}
