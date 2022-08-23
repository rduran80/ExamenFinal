using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamenFinal;
using ExamenFinal.Clases;

namespace ExamenFinal.Pages
{
    
    public partial class login : System.Web.UI.Page
    {
        ClsUsuario persona = new ClsUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsUsuario persona = new ClsUsuario();
            persona.SetNombreUsuario(txtCorreo.Text);
            persona.SetClave(txtClave.Text);
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("obtUsuario", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@nombreUsuario", SqlDbType.VarChar, 50).Value = persona.GetNombre();
            comando.Parameters.Add("@claveUsuario", SqlDbType.VarChar, 50).Value = persona.GetClave();
            SqlDataReader registro = comando.ExecuteReader();

            if (registro.Read())
            {
                ClsUsuario.validarUsuario(persona.GetNombre(), persona.GetClave());
                Response.Redirect("~/Catalogos/usuarios.aspx");
            }
            else
            {
                Response.Write("<script>alert('Usuario o clave incorrectos');</script>");
            }
            conexion.Close();
        }
    }
}