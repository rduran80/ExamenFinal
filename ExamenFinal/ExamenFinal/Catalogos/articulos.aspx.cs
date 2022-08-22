using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamenFinal;

namespace ExamenFinal.Catalogos
{
    public partial class articulos : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            clsar .insertarTipoArt(txtcodArt.Text, txtCodTipoArt.Text, txtDescArt.Text, txtPrecioArt.Text, txtCostoArt.Text, txtCantdArt.Text);
        }
    }
}