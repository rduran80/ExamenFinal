using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ExamenFinal.Clases
{
    public class ClsArticulo
    {
        public static void insertarArticulo(int codArt, int codTipo, string desc, float precio, float costo, int cantidad)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("insertarArticulo", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@codArticulo", SqlDbType.Int).Value = codArt;
            comando.Parameters.Add("@codTipoArticulo", SqlDbType.Int).Value = codTipo;
            comando.Parameters.Add("@descArticulo", SqlDbType.VarChar, 50).Value = desc;
            comando.Parameters.Add("@precioArticulo", SqlDbType.Money).Value = precio;
            comando.Parameters.Add("@costo_Articulo", SqlDbType.Money).Value = costo;
            comando.Parameters.Add("@cantidadArticulo", SqlDbType.Int).Value = cantidad;
            comando.ExecuteNonQuery();
            conexion.Close();
        }
        public static void actualizarArticulo(int codArt, int codTipo, string desc, float precio, float costo, int cantidad)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("actualizarArticulo", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@codArticulo", SqlDbType.Int).Value = codArt;
            comando.Parameters.Add("@codTipoArticulo", SqlDbType.Int).Value = codTipo;
            comando.Parameters.Add("@descArticulo", SqlDbType.VarChar, 50).Value = desc;
            comando.Parameters.Add("@precioArticulo", SqlDbType.Money).Value = precio;
            comando.Parameters.Add("@costo_Articulo", SqlDbType.Money).Value = costo;
            comando.Parameters.Add("@cantidadArticulo", SqlDbType.Int).Value = cantidad;
            comando.ExecuteNonQuery();
            conexion.Close();
        }

        public static void eliminarArticulo(int codArt)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("eliminarArticulo", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@codArticulo", SqlDbType.Int, 50).Value = codArt;
            comando.ExecuteNonQuery();
            conexion.Close();
        }

        public static void LlenarGrid()
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("obtArticulos", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(comando);
            da.Fill(dt);
            conexion.Close();

            //GridView1.DataSource = dt;

        }
    }
}