using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal.Catalogos
{
    public partial class tipoUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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