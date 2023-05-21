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
    public partial class Graficos : System.Web.UI.Page
    {
        private static List<int> Enteros1 = new List<int>();
        private static List<string> Nombres1 = new List<string>();

        private static List<int> Enteros2 = new List<int>();
        private static List<string> Nombres2 = new List<string>();

        private static List<int> Enteros3 = new List<int>();
        private static List<string> Nombres3 = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                Enteros1.Add(0);
                Nombres1.Add("");
                Enteros2.Add(0);
                Nombres2.Add("");
                Enteros3.Add(0);
                Nombres3.Add("");
                
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                GraficaFecha2.Series["Series1"].Points.DataBindXY(Nombres2, Enteros2);
                GraficoConsultorio.Series["Series1"].Points.DataBindXY(Nombres3, Enteros3);

                SqlCommand comando = new SqlCommand();
                comando.CommandType = CommandType.Text;

                DateTime fecha = Convert.ToDateTime(txtFecha.Text);
                string fecha1 = "" + fecha.ToString("yyyy/M/d");


                Enteros1 = new List<int>();
                Nombres1 = new List<string>();


                comando.Connection = ConexionBD.GetConexion();

                comando.CommandText = "SELECT Medico.Nombre AS Medico, COUNT(1) AS Cantidad " +
                    "FROM Cita INNER JOIN Medico on Medico.CC_Medico = Cita.CC_Medico WHERE Cita.Fecha >= '"+ fecha1 +" 00:00:00.000'" +
                    "GROUP BY Medico.Nombre HAVING COUNT(1) >= 1";

                comando.Connection = ConexionBD.GetConexion();
                if (ConexionBD.retornarEstado != false)
                {
                    ConexionBD.GetConexion().Open();
                }

                SqlDataReader lector = comando.ExecuteReader();

           
                while (lector.Read())
                {
                    Nombres1.Add(lector.GetString(0));
                    Enteros1.Add(lector.GetInt32(1));
                }
                lector.Close();
                ConexionBD.CerrarConexion();

                if(Nombres1.Count() == 0 && Enteros1.Count() == 0)
                {
                    Enteros1.Add(0);
                    Nombres1.Add("");

                    GraficoFecha1.Series["Series1"].Points.DataBindXY(Nombres1, Enteros1);
                } 
                else
                     GraficoFecha1.Series["Series1"].Points.DataBindXY(Nombres1, Enteros1);

                ConexionBD.retornarEstado = true;
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡No ha digitado ningún dato!');", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                GraficoFecha1.Series["Series1"].Points.DataBindXY(Nombres1, Enteros1);
                GraficoConsultorio.Series["Series1"].Points.DataBindXY(Nombres3, Enteros3);

        
                SqlCommand comando = new SqlCommand();
                comando.CommandType = CommandType.Text;

                DateTime fecha = Convert.ToDateTime(txtFecha2.Text);
                string fecha1 = "" + fecha.ToString("yyyy/M/d");


                Enteros2 = new List<int>();
                Nombres2 = new List<string>();


                comando.Connection = ConexionBD.GetConexion();

                comando.CommandText = "SELECT Paciente.Nombre AS Paciente, COUNT(1) AS Cantidad " +
                    "FROM Cita INNER JOIN Paciente on Paciente.Id_Paciente = Cita.Id_Paciente WHERE Cita.Fecha <= '" + fecha1 + " 00:00:00.000'" +
                    "GROUP BY Paciente.Nombre HAVING COUNT(1) >= 1";

                comando.Connection = ConexionBD.GetConexion();
                if (ConexionBD.retornarEstado != false)
                {
                    ConexionBD.GetConexion().Open();
                }

                SqlDataReader lector = comando.ExecuteReader();


                while (lector.Read())
                {
                    Nombres2.Add(lector.GetString(0));
                    Enteros2.Add(lector.GetInt32(1));
                }
                lector.Close();
                ConexionBD.CerrarConexion();

                if (Nombres2.Count() == 0 && Enteros2.Count() == 0)
                {
                    Enteros2.Add(0);
                    Nombres2.Add("");

                    GraficaFecha2.Series["Series1"].Points.DataBindXY(Nombres2, Enteros2);
                }
                else
                    GraficaFecha2.Series["Series1"].Points.DataBindXY(Nombres2, Enteros2);

                ConexionBD.retornarEstado = true;
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡No ha digitado ningún dato!');", true);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                GraficoFecha1.Series["Series1"].Points.DataBindXY(Nombres1, Enteros1);
                GraficaFecha2.Series["Series1"].Points.DataBindXY(Nombres2, Enteros2);

                Enteros3 = new List<int>();
                Nombres3 = new List<string>();

                SqlCommand comando = new SqlCommand();
                comando.CommandType = CommandType.Text;

                int id = int.Parse(txtIdConsultorio.Text);

                comando.Connection = ConexionBD.GetConexion();

                comando.CommandText = "SELECT 'Pinzas' AS Instrumento, Pinzas as Cantidad FROM Consultorio  where Id_Consultorio = "+id+ 
                    " UNION ALL SELECT 'Agujas' AS Instrumento, Agujas as Cantidad FROM Consultorio  where Id_Consultorio = " + id +
                    " UNION ALL SELECT 'Jeringas' AS Instrumento, Jeringas as Cantidad FROM Consultorio  where Id_Consultorio = " + id +
                    " UNION ALL SELECT 'Desinfectante' AS Instrumento, Desinfectante  as Cantidad FROM Consultorio where Id_Consultorio = "+id;

                comando.Connection = ConexionBD.GetConexion();
                if (ConexionBD.retornarEstado != false)
                {
                    ConexionBD.GetConexion().Open();
                }

                SqlDataReader lector = comando.ExecuteReader();


                while (lector.Read())
                {
                    Nombres3.Add(lector.GetString(0));
                    Enteros3.Add(lector.GetInt32(1));
                }
                lector.Close();
                ConexionBD.CerrarConexion();

                if (Nombres3.Count() == 0 && Enteros3.Count() == 0)
                {
                    Enteros3.Add(0);
                    Nombres3.Add("");

                    GraficoConsultorio.Series["Series1"].Points.DataBindXY(Nombres3, Enteros3);
                }
                else
                    GraficoConsultorio.Series["Series1"].Points.DataBindXY(Nombres3, Enteros3);

                ConexionBD.retornarEstado = true;
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡No ha digitado ningún dato!');", true);
            }
        }

    }
}