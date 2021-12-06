using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Computo3_grupo6_pagina_web
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string patron = "computo3";
        protected void BtnIngresar_Click(object sender, EventArgs e)
        {

            SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionBD"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_ValidarUsuario",sqlcConectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@Usuario", SqlDbType.VarChar, 50).Value = tbUsuario.Text;
            cmd.Parameters.Add("@Contrasenia", SqlDbType.VarChar, 50).Value = tbPassword.Text;
            cmd.Parameters.Add("@Patron", SqlDbType.VarChar, 50).Value = patron;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Agregamos una sesion de usuario
                Session["usuariologueado"] = tbUsuario.Text;
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblError.Text = "Error de Usuario o Contrasenia";
            }

            cmd.Connection.Close();
        }
        protected void BtnRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("registro.aspx");
        }
    }
}