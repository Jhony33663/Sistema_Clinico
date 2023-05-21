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
    public partial class Pruebamaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                try
                {
                    SqlCommand comando = new SqlCommand();
                    comando.CommandType = CommandType.Text;

                    string tiempo = DateTime.Now.ToString("yyyy/MM/dd");


                    comando.Connection = ConexionBD.GetConexion();

                    comando.CommandText = "Delete from Cita where Fecha <= '"+ tiempo +" 00:00:00.000'";

                    if (ConexionBD.retornarEstado != false)
                    {
                        ConexionBD.GetConexion().Open();
                    }

                    comando.ExecuteNonQuery();
                    ConexionBD.CerrarConexion();
                    ConexionBD.retornarEstado = true;

                }
                catch (Exception)
                {
                  
                }
            }
           
        }
    }
}