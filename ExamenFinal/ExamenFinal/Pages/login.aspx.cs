using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal.Pages
{
    
    public partial class login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("obtUsuario", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@nombreUsuario", SqlDbType.VarChar, 50).Value = txtCorreo.Text;
            comando.Parameters.Add("@claveUsuario", SqlDbType.VarChar, 50).Value = txtClave.Text;
            SqlDataReader registro = comando.ExecuteReader();

            if (registro.Read())
            {
                Response.Redirect("~/Catalogos/articulos.aspx");
            }
            else
            {
                Response.Write("<script>alert('Usuario o clave incorrectos');</script>");
            }
            conexion.Close();
        }
    }
}