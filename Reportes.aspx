<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="ProyectoFinal.CitasporDoctor" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


       <!-- Single Page Start -->
            <div class="single">
                <div class="container">
                    <div class="section-header">
                        <h2>Reportes</h2>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            
                            <center>
                                 <asp:TextBox ID="txtIDMedico" runat="server"  class="form-control" placeholder="Identificación del doctor"></asp:TextBox>
<br />
 <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" class="btn" Text="Ver citas" Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF9900"/> 

                           
                             <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>

    <br />
       <br />
                     
                            <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Width="1026px" style="margin-left: 0px">
                                <localreport reportpath="ReporteCitaDoctor.rdlc">
                                    <datasources>
                                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DoctorPacienteCita" />
                                    </datasources>
                                </localreport>
                            </rsweb:ReportViewer>
                                 <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProyectoFinal.ReportesDoctoresTableAdapters.DataTable1TableAdapter">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="txtIDMedico" Name="parametro" PropertyName="Text" Type="Int32" />
                                     </SelectParameters>
                                 </asp:ObjectDataSource>
    <br />
       <br />
  
       
      </center>
                        </div>

                        <div class="col-12">
                            
                            <center>
                                 <asp:TextBox ID="txtIdPaciente" runat="server"  class="form-control" placeholder="Identificación del paciente"></asp:TextBox>
<br />
 <asp:Button ID="Buttone" runat="server" class="btn" Text="Ver citas" Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF9900" OnClick="Buttone_Click"/><i class="fas fa-angle-double-right"></i> 

                           
    <br />
       <br />
                            <rsweb:ReportViewer ID="ReportViewer2" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Width="1026px" style="margin-left: 0px" Height="345px">
                                <localreport reportpath="ReporteCitaPacientes.rdlc">
                                    <datasources>
                                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="ReporteCitaPaciente" />
                                    </datasources>
                                </localreport>
                            </rsweb:ReportViewer>
                                 <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="ProyectoFinal.ReportePacientesTableAdapters.DataTable2TableAdapter" OldValuesParameterFormatString="original_{0}">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="txtIdPaciente" Name="parametro" PropertyName="Text" Type="Decimal" />
                                     </SelectParameters>
                                 </asp:ObjectDataSource>
    <br />
       <br />
    
      </center>
                        </div>

                    </div>
                </div>
            </div>
            <!-- Single Page End -->


</asp:Content>
