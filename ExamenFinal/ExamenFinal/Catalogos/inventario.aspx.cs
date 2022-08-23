using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamenFinal;
using ExamenFinal.Clases;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ExamenFinal.Catalogos
{
    public partial class inventario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClsArticulo.LlenarGrid();
            GridView1.DataBind();

        }

    }
}