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
    public partial class articulos : System.Web.UI.Page
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
            Clases.ClsArticulo.insertarArticulo(int.Parse(txtcodArt.Text), int.Parse(txtCodTipoArt.Text), txtDescArt.Text, float.Parse(txtPrecioArt.Text), float.Parse(txtCostoArt.Text), int.Parse(txtCantdArt.Text));
            txtcodArt.Text = "";
            txtCodTipoArt.Text = "";
            txtDescArt.Text = "";
            txtPrecioArt.Text = "";
            txtCostoArt.Text = "";
            txtCantdArt.Text = "";
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Clases.ClsArticulo.actualizarArticulo(int.Parse(txtcodArt.Text), int.Parse(txtCodTipoArt.Text), txtDescArt.Text, float.Parse(txtPrecioArt.Text), float.Parse(txtCostoArt.Text), int.Parse(txtCantdArt.Text));
            txtcodArt.Text = "";
            txtCodTipoArt.Text = "";
            txtDescArt.Text = "";
            txtPrecioArt.Text = "";
            txtCostoArt.Text = "";
            txtCantdArt.Text = "";
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Clases.ClsArticulo.eliminarArticulo(int.Parse(txtcodArt.Text));
            txtcodArt.Text = "";
            GridView1.DataBind();
        }
    }
}