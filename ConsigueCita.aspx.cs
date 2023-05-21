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
    public partial class ConsigueCita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand comando = new SqlCommand();
                comando.CommandType = CommandType.Text;

              int id = int.Parse(txtID.Text);
              int medico = int.Parse(dropdoctores.SelectedValue);
         
                DateTime fecha = Convert.ToDateTime(txtfecha.Text);
                string fecha1 =  fecha.ToString("yyyy/MM/dd");

                string tiempo = DateTime.Now.ToString("yyyy/MM/dd");

                if(fecha1.CompareTo(tiempo) > 0)
                {
                    string hora = dropHorario.SelectedValue;
                    int numrandom = 0;

                    comando.Connection = ConexionBD.GetConexion();

                    comando.CommandText = "SELECT COUNT(*) FROM Consultorio";
                    if (ConexionBD.retornarEstado != false)
                    {
                        ConexionBD.GetConexion().Open();
                    }

                    int nconsultorios = (int)comando.ExecuteScalar();

                    bool existente = false;



                    while (existente == false)
                    {

                        Random random = new Random();
                        numrandom = random.Next(0, nconsultorios + 1);

                        comando.CommandText = "SELECT 1 FROM Consultorio WHERE Id_consultorio = " + numrandom;

                        //  string prueba = comando.ExecuteScalar().ToString();

                        if (comando.ExecuteScalar() != null)
                        {
                            comando.CommandText = "SELECT 1 FROM Cita WHERE Id_consultorio = " + numrandom + " and Fecha = '" + fecha1 + " " + hora + ".000'";
                            if (comando.ExecuteScalar() == null)
                            {
                                existente = true;
                            }

                        }
                    }


                    comando.CommandText = "SELECT 1 FROM Cita WHERE CC_Medico = " + medico + " and Fecha = '" + fecha1 + " " + hora + ".000'";

                    if (comando.ExecuteScalar() == null)
                    {
                        comando.CommandText = "INSERT Cita values(" + medico + ","
                                            + id + "," + numrandom + ",'" + fecha1 + " " + hora + ".000')";

                        comando.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡La cita ha sido registrada!');", true);

                        txtID.Text = "";

                        ConexionBD.retornarEstado = true;
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡Escoja otra fecha, horario o médico!');", true);
                    }

                    ConexionBD.CerrarConexion();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡Escoja una fecha después de hoy!');", true);
                }

                

            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡Alguno de los datos no es válido!');", true);
            } 
        }
    }
}