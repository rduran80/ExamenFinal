using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ExamenFinal
{
    public class ClsTipoUsuario
    {
        public static void insertarTipoUsuario(int tipo, string descTipo)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("insertarTipoUsuario", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@tipoUsuario", SqlDbType.Int).Value = tipo;
            comando.Parameters.Add("@descTipoUsuario", SqlDbType.VarChar, 50).Value = descTipo;
            comando.ExecuteNonQuery();
            conexion.Close();
        }

        public static void actualizarTipoUsuario(int tipo, int id, string descTipo)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("insertarTipoUsuario", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@tipoUsuario", SqlDbType.Int).Value = tipo;
            comando.Parameters.Add("@id", SqlDbType.Int).Value = id;
            comando.Parameters.Add("@descTipoUsuario", SqlDbType.VarChar, 50).Value = descTipo;
            comando.ExecuteNonQuery();
            conexion.Close();
        }

        public static void eliminarUsuario(int id)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("eliminarUsuario", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@id", SqlDbType.Int).Value = id;
            comando.ExecuteNonQuery();
            conexion.Close();
        }

    }
}