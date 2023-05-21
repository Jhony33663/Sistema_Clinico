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
    public partial class EliminarCita : System.Web.UI.Page
    {
        private static long id;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            id = long.Parse(txtID.Text);
            cargardatos(id);
        }

        public void cargardatos(long id)
        {
           
            String seleccion = " SELECT Cita.Id_Cita AS Cita, Medico.Nombre AS Medico, Cita.Id_Consultorio AS Consultorio, Cita.Fecha " +
                "FROM Cita INNER JOIN Medico ON Cita.CC_Medico = Medico.CC_Medico WHERE Cita.Id_Paciente =" + id;
            SqlDataAdapter adaptador = new SqlDataAdapter();
            DataTable tabladedatos = new DataTable();
            try
            {
                adaptador = new SqlDataAdapter(seleccion, ConexionBD.GetConexion());
                adaptador.Fill(tabladedatos);
                mostrarCitas.DataSource = tabladedatos;
                mostrarCitas.DataBind();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Mensaje de error: " + ex.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridViewRow row = mostrarCitas.SelectedRow;

            string dato = row.Cells[1].Text;

            try
            {
                SqlCommand comando = new SqlCommand();
                comando.CommandType = CommandType.Text;

                comando.Connection = ConexionBD.GetConexion();

                comando.CommandText = "DELETE FROM Cita WHERE Id_Cita = " + dato + "";

                comando.Connection = ConexionBD.GetConexion();

                if (ConexionBD.retornarEstado != false)
                {
                    ConexionBD.GetConexion().Open();
                }

                comando.ExecuteNonQuery();
                ConexionBD.CerrarConexion();
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡Tu cita se ha eliminado!');", true);

                cargardatos(id);
                txtID.Text = "";
                ConexionBD.retornarEstado = true;
               
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡No existe esa identificación!');", true);
            }

        }

    }
}