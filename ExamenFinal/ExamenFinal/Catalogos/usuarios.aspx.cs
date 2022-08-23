﻿using System;
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
        //int tipoUsuario = 0;
        //SessionParameter tipoUsuario = new SessionParameter();
        ClsUsuario persona = new ClsUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbltipo.Text = persona.GetTipousuario().ToString();
            if (!IsPostBack)
            {
                if (lbltipo.Text == "2")
                {
                    Button1.Enabled = false;
                    Button1.Enabled = false;
                    Button1.Enabled = false;
                    GridView1.Enabled = false;
                }
            }

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

    }
}