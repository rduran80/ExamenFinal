using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ExamenFinal.Clases
{
    public class ClsUsuario
    {
        private static string codUsuario { get; set; }
        private static string nombreUsuario { get; set; }
        private static string tipoUsuario { get; set; }
        private static string claveUsuario { get; set; }

        public ClsUsuario() { }

        public ClsUsuario(string cod, string nombre, string tipo, string clave)
        {
            codUsuario = cod;
            nombreUsuario = nombre;
            tipoUsuario = tipo;
            claveUsuario = clave;
        }

        public static string GetCod() { return codUsuario; }
        public static string GetNombre() { return nombreUsuario; }
        public static string GetTipousuario() { return tipoUsuario; }
        public static string GetClave() { return claveUsuario; }

        public static void SetEmail(string cod)
        {
            codUsuario = cod;
        }

        public static void SetIdusuario(string nombre)
        {
            nombreUsuario = nombre;
        }

        public static void SetTipousuario(string Tipouser)
        {
            tipoUsuario = Tipouser;
        }

        public static void SetClave(string clave)
        {
            claveUsuario = clave;
        }

        public static void insertarUsuario(string nombre, string clave, int tipo)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("insertarUsuario", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@nombreUsuario", SqlDbType.VarChar, 50).Value = nombre;
            comando.Parameters.Add("@tipoUsuario", SqlDbType.Int).Value = tipo;
            comando.Parameters.Add("@claveUsuario", SqlDbType.VarChar, 50).Value = clave;
            comando.ExecuteNonQuery();
            conexion.Close();

        }

        public static void actualizarUsuario(string nombre, string clave, int tipo)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("actualizarUsuario", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@nombreUsuario", SqlDbType.VarChar, 50).Value = nombre;
            comando.Parameters.Add("@tipoUsuario", SqlDbType.Int).Value = tipo;
            comando.Parameters.Add("@claveUsuario", SqlDbType.VarChar, 50).Value = clave;
            comando.ExecuteNonQuery();
            conexion.Close();

        }
        public static void eliminarUsuario(string nombre)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("eliminarUsuario", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@nombreUsuario", SqlDbType.VarChar, 50).Value = nombre;
            comando.ExecuteNonQuery();
            conexion.Close();
        }
          


    }
}