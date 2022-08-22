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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsUsuario.insertarUsuario(txtUser.Text,txtClave.Text,int.Parse(drdTipoUsuario.Text));
            txtUser.Text = "";
            txtClave.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClsUsuario.eliminarUsuario(txtUser.Text);
            txtUser.Text = "";
            txtClave.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ClsUsuario.actualizarUsuario(txtUser.Text, txtClave.Text, int.Parse(drdTipoUsuario.Text));
            txtUser.Text = "";
            txtClave.Text = "";
        }
        public void SPLlenargrid(DataTable dat)
        {
            string constr = ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("consultaUsuario", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        }

    }
}