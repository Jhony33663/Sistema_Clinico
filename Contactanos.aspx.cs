using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal
{
    public partial class Contactanos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand comando = new SqlCommand();
                comando.CommandType = CommandType.Text;

                long id = long.Parse(txtID.Text);
                long telefono = long.Parse(txtTelefono.Text);
                comando.Connection = ConexionBD.GetConexion();
            
                comando.CommandText = "INSERT Paciente values(" + id + ", '"
                                         + txtNombre.Text + "' , '" + txtEmail.Text + "' ,'"
                                         + txtDireccion.Text + "'," + telefono + ")";

                if (ConexionBD.retornarEstado != false)
                {
                    ConexionBD.GetConexion().Open();
                }
                comando.ExecuteNonQuery();
                    ConexionBD.CerrarConexion();
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡Has sido registrado!');", true);

                ConexionBD.retornarEstado = true;
                txtID.Text = "";
                txtTelefono.Text = "";
                txtNombre.Text = "";
                txtEmail.Text = "";
                txtDireccion.Text = "";

            } catch(Exception) {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡Ya existe esa identificación!');", true);
            }
                       
        }
    }
}