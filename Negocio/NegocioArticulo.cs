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
    public class NegocioArticulo
    {

        DaoArticulo daoArt = new DaoArticulo();

        public DataTable getTabla()
        {
            return daoArt.getTablaArticulos();
        }

        public DataTable getTablaLvl()
        {
            return daoArt.getTablaArticulosLvl();
        }
        public DataTable getTablaF(int codcat)
        {
            return daoArt.getTablaArticulosLvlFiltrada(codcat);
        }

        public Articulo get(int CodArt)
        {
            Articulo art = new Articulo();
            art.setCodArt(CodArt);
            return daoArt.getArticulo(art);
        }

        public bool eliminarCategoria(int CodArt)
        {
            Articulo art = new Articulo();
            art.setCodArt(CodArt);

            if (daoArt.existeArticulo(art))
            {
                int op = daoArt.eliminarArticulo(art);
                if (op == 1)
                    return true;
                else
                    return false;
            }
            return false;
        }

        public void agregarArticulo(int CodCat, String Nombre, String Descripcion, int Stock, decimal Precio, String ImagenURL, bool Estado)
        {

            Articulo art = new Articulo();
            art.setCodCat(CodCat);
            art.setDescripcion(Descripcion);
            art.setImagenUr(ImagenURL);
            art.setNombre(Nombre);
            art.setPrecio(Precio);
            art.setStock(Stock);
            art.setEstado(Estado);

            daoArt.agregarArticulo(art);

        }

        public Boolean CorroborarExistenciaId(int cod)
        {
            DaoArticulo daoArt = new DaoArticulo();
            Articulo codArt = new Articulo();
            codArt.setCodArt(cod);
            return daoArt.existeArticulo(codArt);

        }



        public void ModificarArticulo(int cod, string nombre, int codCat, string descripcion, int stock, decimal precio, string imagenURL, bool estado)
        {
            Articulo art = new Articulo();
            art.setCodArt(cod);
            art.setNombre(nombre);
            art.setCodCat(codCat);
            art.setDescripcion(descripcion);
            art.setStock(stock);
            art.setPrecio(precio);
            art.setImagenUr(imagenURL);
            art.setEstado(estado);

            daoArt.ModificarArticulo(art);
        }

        public bool eliminarArticulo(int codArticulo)
        {
            Articulo art = new Articulo();
            art.setCodArt(codArticulo);

            if (daoArt.existeArticulo(art))
            {
                int filasAfectadas = daoArt.eliminarArticulo(art);
                return filasAfectadas > 0;
            }

            return false;
        }

        public bool existeArticulo(int codArticulo)
        {
            Articulo art = new Articulo();
            art.setCodArt(codArticulo);

            if (daoArt.existeArticulo(art))
            {
                return true;
            }
            return false;
        }

        public DataTable getTablaFiltrada(int CodArt)
        {
            return daoArt.getTablaFiltrada(CodArt);
        }

        public DataTable getTablaOrdenada(string consulta)
        {
            return daoArt.getTablaArticulosOrdenada(consulta);
        }

        public void eliminarArticulosCategoria(int codCat)
        {
            Articulo art = new Articulo();
            art.setCodCat(codCat);
            daoArt.eliminarArticulosDeXCategoria(art);
        }

        public DataTable crearTabla()
        {
            DataTable dt = new DataTable();

            DataColumn columna = new DataColumn("Cod_Ar", System.Type.GetType("System.String"));
            dt.Columns.Add(columna);

            columna = new DataColumn("Nombre", System.Type.GetType("System.String"));
            dt.Columns.Add(columna);

            columna = new DataColumn("Descripcion", System.Type.GetType("System.String"));
            dt.Columns.Add(columna);

            columna = new DataColumn("Precio", System.Type.GetType("System.String"));
            dt.Columns.Add(columna);

            columna = new DataColumn("Cantidad", System.Type.GetType("System.String"));
            dt.Columns.Add(columna);

            return dt;
        }

        public void agregarFila(DataTable tablaCarrito, String id, String nombre, String descripcion, String precio, string cantidad)
        {
            DataRow dr = tablaCarrito.NewRow();
            dr["Cod_Ar"] = id;
            dr["Nombre"] = nombre;
            dr["Descripcion"] = descripcion;
            dr["Precio"] = precio;
            dr["Cantidad"] = cantidad.ToString();
            tablaCarrito.Rows.Add(dr);

        }

        public void ModificarFila(DataTable tablaCarrito, String id, string cantidad)
        {
            foreach (DataRow row in tablaCarrito.Rows)
            {
                if (row["Cod_Ar"].ToString() == id)
                {
                    row["Cantidad"] = cantidad;
                }
            }
            
        }
            

        public bool BuscarId(DataTable tablaCarrito, string id)
        {
            foreach (DataRow row in tablaCarrito.Rows)
            {
                if (row["Cod_Ar"].ToString() == id)
                {
                    return true;
                }
            }
            return false;
        }

        public int obtenerMaximoIDArticulo()
        {
            return daoArt.obtenerMayorID();
        }

        public DataTable tablaFiltradaOrdenada(string categoria, int indice)
        {
            string consulta = "SELECT * FROM Articulos";
            DataTable tablaArticulos = getTablaOrdenada(consulta);

            if(indice == 1)
            {
                if (categoria == "0")
                {
                    consulta = "SELECT * FROM Articulos ORDER BY Precio_Ar";
                    tablaArticulos = getTablaOrdenada(consulta);
                    return tablaArticulos;
                }
                else
                {
                    consulta = "SELECT CodArt_Ar, CodCat_Ar, Nombre_Ar, Descripcion_Ar, Precio_Ar, ImagenUr_Ar FROM Articulos WHERE CodCat_Ar='" + Convert.ToInt32(categoria) + "'" + " ORDER BY Precio_AR";
                    tablaArticulos = getTablaOrdenada(consulta);
                    return tablaArticulos;
                }

            }else if (indice == 2)
            {
                if (categoria == "0")
                {
                    consulta = "SELECT * FROM Articulos ORDER BY Precio_Ar DESC";
                    tablaArticulos = getTablaOrdenada(consulta);
                    return tablaArticulos;
                }
                else
                {
                    consulta = "SELECT CodArt_Ar, CodCat_Ar, Nombre_Ar, Descripcion_Ar, Precio_Ar, ImagenUr_Ar FROM Articulos WHERE CodCat_Ar='" + Convert.ToInt32(categoria) + "'" + " ORDER BY Precio_AR DESC";
                    tablaArticulos = getTablaOrdenada(consulta);
                    return tablaArticulos;
                }

            }
            else
            {
                return tablaArticulos;
            }
        }

        public DataTable buscarArticuloNombre(string nombre)
        {  
            string consulta = "SELECT * FROM Articulos WHERE Nombre_Ar LIKE '%" + nombre + "%'";
            return getTablaOrdenada(consulta);
        }

    }
}
