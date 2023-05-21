using Microsoft.Reporting.WebForms;
using ProyectoFinal.ReportePacientesTableAdapters;
using ProyectoFinal.ReportesDoctoresTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static ProyectoFinal.ReportePacientes;
using static ProyectoFinal.ReportesDoctores;

namespace ProyectoFinal
{
    public partial class CitasporDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int medico = int.Parse(txtIDMedico.Text);
                DataTable1TableAdapter ta = new DataTable1TableAdapter();

                DataTable1DataTable table = new DataTable1DataTable();


                ta.Fill(table, medico);

                ReportViewer1.LocalReport.DataSources.Clear();
                ReportDataSource datasource = new ReportDataSource("DoctorPacienteCita", (DataTable)table);
                ReportViewer1.LocalReport.DataSources.Add(datasource);
                ReportViewer1.LocalReport.Refresh();
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡No existe esa identificación!');", true);
            }
            
        }

        protected void Buttone_Click(object sender, EventArgs e)
        {
            try
            {
                long paciente = long.Parse(txtIdPaciente.Text);
                DataTable2TableAdapter ta = new DataTable2TableAdapter();

                DataTable2DataTable table = new DataTable2DataTable();


                ta.Fill(table, paciente);

                ReportViewer2.LocalReport.DataSources.Clear();
                ReportDataSource datasource = new ReportDataSource("ReporteCitaPaciente", (DataTable)table);
                ReportViewer2.LocalReport.DataSources.Add(datasource);
                ReportViewer2.LocalReport.Refresh();
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('¡No existe esa identificación!');", true);
            }
        }
    }
}