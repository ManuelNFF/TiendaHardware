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
    public class NegocioProducto
    {
        public DataTable getTabla()
        {
            DaoProductos dao = new DaoProductos();
            return dao.getTablaProductos();
        }

        public Productos get(int id)
        {
            DaoProductos dao = new DaoProductos();
            Productos cat = new Productos();
            cat.setIdProductos(id);
            return dao.getProductos(cat);
        }

        public bool eliminarCategoria(int id)
        {

            DaoProductos dao = new DaoProductos();
            Productos cat = new Productos();
            cat.setIdProductos(id);
            int op = dao.eliminarProductos(cat);
            if (op == 1)
                return true;
            else
                return false;
        }

        public bool agregarProductos(String nombre, string categoria, string desc, int stock, decimal precio, int estado)
        {
            int cantFilas = 0;

            Productos cat = new Productos();
            cat.setNombreProductos(nombre);
            cat.setDescripcion(desc);
            cat.SetCategoria(categoria);
            cat.SetStock(stock);
            cat.SetPrecio(precio);
            cat.SetEstado(estado);


            DaoProductos dao = new DaoProductos();
            if (dao.existeProductos(cat) == false)
            {
                cantFilas = dao.agregarProductos(cat);
            }

            if (cantFilas == 1)
                return true;
            else
                return false;
        }

    }
}
