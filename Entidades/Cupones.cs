using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Cupones
    {
        private string codCupon_Cu;
        private decimal descuento_Cu;
        private decimal importeMinVenta_Cu;
        private bool estado_Cu;

        public Cupones()
        {

        }

        public string getCodigo()
        {
            return codCupon_Cu;
        }
        public void setCodigo(string cod)
        {
            codCupon_Cu = cod;
        }

        public decimal getDescuento()
        {
            return descuento_Cu;
        }
        public void setDescuento(decimal desc)
        {
            descuento_Cu = desc;
        }

        public decimal getImporteMinimo()
        {
            return importeMinVenta_Cu;
        }
        public void setImporteMinimo(decimal min)
        {
            importeMinVenta_Cu = min;
        }

        public bool getEstado()
        {
            return estado_Cu;
        }
        public void setEstado(bool est)
        {
            estado_Cu = est;
        }
    }
}
