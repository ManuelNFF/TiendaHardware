using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Productos
    {
        private int IdProducto;
        private String NombreProducto;
        private String Descripcion;
        private string Categoria;
        private int Stock;
        private decimal Precio;
        private int Estado;

        public Productos()
        { }
        public int getIdProductos()
        {
            return IdProducto;
        }
        public void setIdProductos (int idProducto)
        {
            IdProducto = idProducto;
        }
        public String getNombreProductos()
        {
            return NombreProducto;
        }
        public void setNombreProductos(String nombreProducto)
        {
            NombreProducto = nombreProducto;
        }
        public String getDescripcion()
        {
            return Descripcion;
        }
        public void setDescripcion(String descripcion)
        {
            Descripcion = descripcion;
        }
        public string GetCategoria()
        {
            return Categoria;
        }

        public void SetCategoria(string categoria)
        {
            Categoria = categoria;
        }

        public int GetStock()
        {
            return Stock;
        }

        public void SetStock(int stock)
        {
            Stock = stock;
        }

        public decimal GetPrecio()
        {
            return Precio;
        }

        public void SetPrecio(decimal precio)
        {
            Precio = precio;
        }

        public int GetEstado()
        {
            return Estado;
        }

        public void SetEstado(int estado)
        {
            Estado = estado;
        }
    }
}
