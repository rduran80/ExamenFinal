using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamenFinal;
using ExamenFinal.Clases;



namespace ExamenFinal.Catalogos
{

    public partial class usuarios : System.Web.UI.Page
    {
        //ClsUsuario persona = new ClsUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsUsuario.insertarUsuario(txtUser.Text,txtClave.Text,int.Parse(drdTipoUsuario.Text));
            txtUser.Text = "";
            txtClave.Text = "";
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClsUsuario.eliminarUsuario(txtUser.Text);
            txtUser.Text = "";
            txtClave.Text = "";
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ClsUsuario.actualizarUsuario(txtUser.Text, txtClave.Text, int.Parse(drdTipoUsuario.Text));
            txtUser.Text = "";
            txtClave.Text = "";
            GridView1.DataBind();
        }
        /*
        public void validarUsuario(string nombre, string clave)
        {
            ClsUsuario persona = new ClsUsuario();
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            SqlCommand comando = new SqlCommand("obtUsuario", conexion)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            conexion.Open();
            comando.Parameters.Add("@nombreUsuario", SqlDbType.VarChar, 50).Value = nombre;
            comando.Parameters.Add("@claveUsuario", SqlDbType.VarChar, 50).Value = clave;
            SqlDataReader registro = comando.ExecuteReader();

            if (registro.Read())
            {
                
                ClsUsuario.SetCod(registro[0].ToString());
                ClsUsuario.SetNombreUsuario(registro[1].ToString());
                ClsUsuario.SetTipousuario(registro[2].ToString());
                ClsUsuario.SetClave(registro[3].ToString());
            }
            conexion.Close();
        }
        */
    }
}