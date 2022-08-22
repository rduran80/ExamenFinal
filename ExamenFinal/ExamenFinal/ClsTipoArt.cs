using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ExamenFinal
{
    public class ClsTipoArt
    {
        public ClsTipoArt() { }

        public static void insertarTipoArt(string codTipo, string descTipo)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("insertarTipoArticulo", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@codTipoArticulo", SqlDbType.VarChar, 50).Value = codTipo;
            comando.Parameters.Add("@descTipoArticulo", SqlDbType.VarChar, 50).Value = descTipo;
            comando.ExecuteNonQuery();
            conexion.Close();

        }

        public static void actualizarTipoArt(string id, string codTipo, string descTipo)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("actualizarTipoArticulo", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@codTipoArticulo", SqlDbType.VarChar, 50).Value = codTipo;
            comando.Parameters.Add("@descTipoArticulo", SqlDbType.Int).Value = descTipo;
            comando.ExecuteNonQuery();
            conexion.Close();

        }

        public static void eliminarTipoArt(string codTipo)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("eliminarTipoArticulo", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@codTipoArticulo", SqlDbType.VarChar, 50).Value = codTipo;
            comando.ExecuteNonQuery();
            conexion.Close();
        }
    }


}