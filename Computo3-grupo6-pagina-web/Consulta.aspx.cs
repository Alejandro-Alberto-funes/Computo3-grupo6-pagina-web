using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Computo3_grupo6_pagina_web
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT id AS N#, descripcion AS Descripcion, existencia AS Existencia, entradas AS Entradas, salidas As Salidas, stock AS Stock FROM inventario Where descripcion Like'%"+Textnombre.Text+"%'";
            SqlDataSource1.DataBind();
        }
    }
}