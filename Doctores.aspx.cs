using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal
{
    public partial class Doctores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargardatos();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand comando = new SqlCommand();
                comando.CommandType = CommandType.Text;

                int id = int.Parse(txtIDAgregar.Text);
                int categoria = int.Parse(dropcategoria.SelectedValue);
                long telefono = long.Parse(txtTelefono.Text);


                comando.CommandText = "INSERT Medico values(" + id + ", '"
                                         + txtNombre.Text + "' , '" + txtEmail.Text + "' ,'"
                                         + txtDireccion.Text + "'," + telefono + ","+ categoria + ")";

                comando.Connection = ConexionBD.GetConexion();

                if (ConexionBD.retornarEstado != false)
                {
                    ConexionBD.GetConexion().Open();
                }
                comando.ExecuteNonQuery();
                ConexionBD.CerrarConexion();
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡El doctor ha sido registrado!');", true);

                txtIDAgregar.Text = "";
                txtTelefono.Text = "";
                txtNombre.Text = "";
                txtEmail.Text = "";
                txtDireccion.Text = "";
                ConexionBD.retornarEstado = true;
                cargardatos();
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡Alguno de los datos no es válido!');", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand comando = new SqlCommand();
                comando.CommandType = CommandType.Text;

                int id = int.Parse(txtIDBorrar.Text);

                comando.CommandText = "DELETE FROM Medico WHERE CC_Medico = " + id + "";

                comando.Connection = ConexionBD.GetConexion();

                if (ConexionBD.retornarEstado != false)
                {
                    ConexionBD.GetConexion().Open();
                }

                comando.ExecuteNonQuery();
                ConexionBD.CerrarConexion();
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡El doctor ha sido eliminado!');", true);

                txtIDBorrar.Text = "";
                ConexionBD.retornarEstado = true;
                cargardatos();
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡El médico con esa identificación no existe!');", true);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand comando = new SqlCommand();
                comando.CommandType = CommandType.Text;

                int id = int.Parse(txtIDActualizar.Text);
                String datoactualizar = dropactualizar.SelectedValue;

                comando.Connection = ConexionBD.GetConexion();

                if (datoactualizar.Equals("CC_Medico") || datoactualizar.Equals("id_categoria"))
                {
                    int dato = int.Parse(txtdatoactualizar.Text);
                    comando.CommandText = "UPDATE Medico SET " + datoactualizar + " = " +dato+" WHERE CC_Medico = " +id;

                } else if (datoactualizar.Equals("Telefono"))
                {
                    long dato = long.Parse(txtdatoactualizar.Text);
                    comando.CommandText = "UPDATE Medico SET " + datoactualizar + " = " + dato + " WHERE CC_Medico = " + id;
                } else
                {
                    String dato = txtdatoactualizar.Text;
                    comando.CommandText = "UPDATE Medico SET " + datoactualizar + " = '" + dato + "' WHERE CC_Medico = " + id;
                }
                

                if (ConexionBD.retornarEstado != false)
                {
                    ConexionBD.GetConexion().Open();
                }


                if(comando.ExecuteNonQuery() == 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡El médico con esa identificación no existe!');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡El doctor ha sido actualizado!');", true);
                }

                ConexionBD.CerrarConexion();
                
                txtIDActualizar.Text = "";
                txtdatoactualizar.Text = "";
                ConexionBD.retornarEstado = true;
                cargardatos();
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡El médico con esa identificación no existe!');", true);
            }
        }

        public void cargardatos()
        {
            String seleccion = "SELECT * FROM Medico";
            SqlDataAdapter adaptador = new SqlDataAdapter();
            DataTable tabladedatos = new DataTable();
            try
            {
                adaptador = new SqlDataAdapter(seleccion, ConexionBD.GetConexion());
                adaptador.Fill(tabladedatos);
                datos.DataSource = tabladedatos;
                datos.DataBind();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Mensaje de error: " + ex.Message);
            }
        }
    }
}