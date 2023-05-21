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
    public partial class Pacientes : System.Web.UI.Page
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

                long id = long.Parse(txtIDBorrar.Text);

                comando.Connection = ConexionBD.GetConexion();

                comando.CommandText = "DELETE FROM Paciente WHERE Id_Paciente = " + id + "";

                comando.Connection = ConexionBD.GetConexion();

                if (ConexionBD.retornarEstado != false)
                {
                    ConexionBD.GetConexion().Open();
                }

                if (comando.ExecuteNonQuery() == 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('No existe esa identificación!');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡Tu registro ha sido eliminado!');", true);
                }

                txtIDBorrar.Text = "";
                ConexionBD.retornarEstado = true;
                ConexionBD.CerrarConexion();
                cargardatos(id);

            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡No existe esa identificación!');", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand comando = new SqlCommand();
                comando.CommandType = CommandType.Text;

                long id = long.Parse(txtIDActualizar.Text);
                String datoactualizar = dropactualizar.SelectedValue;
                long dato = 0;

                comando.Connection = ConexionBD.GetConexion();

                if (datoactualizar.Equals("Id_Paciente") )
                {
                    dato = long.Parse(txtdatoactualizar.Text);
                    comando.CommandText = "alter table Cita nocheck constraint ConexionPaciente " +
                        "update Paciente set Id_Paciente = " + dato + " where Id_Paciente = " + id +
                        " alter table Cita nocheck constraint ConexionPaciente update Cita " +
                        " set Id_Paciente = " + dato + " where Id_Paciente = " + id;

                } else if (datoactualizar.Equals("Telefono"))
                {
                    long tel = long.Parse(txtdatoactualizar.Text);
                    comando.CommandText = "UPDATE Paciente SET " + datoactualizar + " = " + tel + " WHERE Id_Paciente = " + id;
                }
                else
                {
                    String dato1 = txtdatoactualizar.Text;
                    comando.CommandText = "UPDATE Paciente SET " + datoactualizar + " = '" + dato1 + "' WHERE Id_Paciente = " + id;
            
                }


                if (ConexionBD.retornarEstado != false)
                {
                    ConexionBD.GetConexion().Open();
                }

                
                if(comando.ExecuteNonQuery() == 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('No existe esa identificación!');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡Tu registro ha sido actualizado!');", true);
                }


                ConexionBD.CerrarConexion();
                if (datoactualizar.Equals("Id_Paciente"))
                {
                    cargardatos(dato);
                }
                else
                {
                    cargardatos(id);
                }
                
                txtIDActualizar.Text = "";
                txtdatoactualizar.Text = "";
                ConexionBD.retornarEstado = true;
                
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('No existe esa identificación!');", true);
            }
        }

        public void cargardatos(long id)
        {
            String seleccion = "SELECT * FROM Paciente WHERE Id_Paciente = "+id;
            SqlDataAdapter adaptador = new SqlDataAdapter();
            DataTable tabladedatos = new DataTable();
            try
            {
                adaptador = new SqlDataAdapter(seleccion, ConexionBD.GetConexion());
                adaptador.Fill(tabladedatos);
                datospaciente.DataSource = tabladedatos;
                datospaciente.DataBind();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Mensaje de error: " + ex.Message);
            }
        }
    }
}