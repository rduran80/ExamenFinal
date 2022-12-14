using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamenFinal;
using ExamenFinal.Clases;

namespace ExamenFinal.Catalogos
{
    public partial class tipoUsuarios : System.Web.UI.Page
    {
        ClsUsuario persona = new ClsUsuario();
        string tipo;
        protected void Page_Load(object sender, EventArgs e)
        {
            tipo = persona.GetTipousuario().ToString();
            if (!IsPostBack)
            {
                if (tipo == "2")
                {
                    Button1.Enabled = false;
                    Button2.Enabled = false;
                    Button3.Enabled = false;
                    GridView1.Enabled = false;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsTipoUsuario.insertarTipoUsuario(int.Parse(txtId.Text), txtDescTipo.Text);
            txtId.Text = "";
            txtTipo.Text = "";
            txtDescTipo.Text = "";
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ClsTipoUsuario.actualizarTipoUsuario(int.Parse(txtTipo.Text), int.Parse(txtId.Text), txtDescTipo.Text);
            txtId.Text = "";
            txtTipo.Text = "";
            txtDescTipo.Text = "";
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClsTipoUsuario.eliminarUsuario(int.Parse(txtId.Text));
            txtId.Text = "";
            GridView1.DataBind();
        }
    }
}