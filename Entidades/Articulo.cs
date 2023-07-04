using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Articulo
    {
        private int CodArt_Ar;
        private int CodCat_Ar;
        private String Nombre_Ar;
        private String Descripcion_Ar;
        private int Stock_Ar;
        private decimal Precio_Ar;
        private String ImagenUr_Ar;
        private bool Estado_Ar;

        public Articulo()
        {

        }

        public int getCodArt()
        {
            return CodArt_Ar;
        }

        public void setCodArt(int cod)
        {
            CodArt_Ar = cod;
        }

        public int getCodCat()
        {
            return CodCat_Ar;
        }

        public void setCodCat(int cod)
        {
            CodCat_Ar = cod;
        }

        public String getNombre()
        {
            return Nombre_Ar;
        }

        public void setNombre(String nom)
        {
            Nombre_Ar = nom;
        }

        public String getDescripcion()
        {
            return Descripcion_Ar;
        }

        public void setDescripcion(String des)
        {
            Descripcion_Ar = des;
        }

        public int getStock()
        {
            return Stock_Ar;
        }

        public void setStock(int stock)
        {
            Stock_Ar = stock;
        }

        public decimal getPrecio()
        {
            return Precio_Ar;
        }

        public void setPrecio(decimal precio)
        {
            Precio_Ar = precio;
        }

        public String getImagenUr()
        {
            return ImagenUr_Ar;
        }

        public void setImagenUr(String img)
        {
            ImagenUr_Ar = img;
        }

        public bool getEstado()
        {
            return Estado_Ar;
        }

        public void setEstado(bool est)
        {
            Estado_Ar = est;
        }

    }
}
