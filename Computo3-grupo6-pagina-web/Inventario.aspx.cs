using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



namespace Computo3_grupo6_pagina_web
{
    public partial class Inventario : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand ra = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
           con.ConnectionString= "Data Source=STERLING7;Initial Catalog=computo3;Integrated Security=True";
            con.Open();
            if (!Page.IsPostBack)
            {
                DataShow();
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            ra.CommandText = " Insert into inventario(descripcion,existencia,entradas,salidas,stock) values ('"+txtdes.Text.ToString()+ "','"+txtexi.Text.ToString()+ "','"+txtent.Text.ToString()+ "','"+txtsal.Text.ToString()+ "','"+txtsto.Text.ToString()+"')";
            ra.Connection = con;
            ra.ExecuteNonQuery();
            DataShow();
            lblsucces.Text = "Elemento Guardado";

        }
        public void DataShow()
        {
            ds = new DataSet();
            ra.CommandText = "Select * From inventario";
            ra.Connection = con;
            sda = new SqlDataAdapter(ra);
            sda.Fill(ds);
            ra.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            ra.CommandText = "Update inventario set descripcion='"+txtdes.Text.ToString()+ "',existencia='"+txtexi.Text.ToString()+ "',entradas='"+txtent.Text.ToString()+ "',salidas='"+txtsal.Text.ToString()+ "',stock=' "+txtsto.Text.ToString()+ "' Where descripcion='"+txtdes.Text.ToString()+"'";
            ra.Connection = con;
            ra.ExecuteNonQuery();
            DataShow();
            lblsucces.Text = "Elemento Actualizado";
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            ra.CommandText = "delete from inventario Where descripcion='" + txtdes.Text.ToString() + "'";
            ra.Connection = con;
            ra.ExecuteNonQuery();
            DataShow();
            lblsucces.Text = "Elemento Eliminado";
        }

        protected void btnlimpiar_Click(object sender, EventArgs e)
        {
            Clear();
        }
        public void Clear()
        {
            txtdes.Text = txtent.Text = txtexi.Text = txtsal.Text = txtsto.Text="";
            lblsucces.Text = "saved";

        }
    }
   

}