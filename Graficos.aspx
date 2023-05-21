<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Graficos.aspx.cs" Inherits="ProyectoFinal.Graficos" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- Blog Start -->
            <div class="blog">
                <div class="container">
                    <div class="section-header">
                        <h2>Gráficos</h2>
                    </div>
                    <div class="row blog-page">
                        <div class="col-lg-4 col-md-6 blog-item">
                       <center>
                            <h3>Cita/Doctores</h3>
                       </center>
                           
                            <div class="meta">
                                <br />
                                  <asp:TextBox ID="txtFecha" runat="server"  class="form-control" TextMode="Date"></asp:TextBox>
                                 <br />
                                        <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <center>
 <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" class="btn" Text="Ver gráfica" Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF9900"/><i class="fas fa-angle-double-right"></i> 
                                </center>
                               
                                 <br />
                                        <br />
                                <asp:Chart ID="GraficoFecha1" runat="server" BorderlineColor="Black" Palette="Fire">
        <series>
            <asp:Series Name="Series1">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>

                            </div>

                        </div>
                        <div class="col-lg-4 col-md-6 blog-item">
                       <center>
                            <h3>Cita/Pacientes</h3>
                       </center>
                           
                            <div class="meta">
                                <br />
                                  <asp:TextBox ID="txtFecha2" runat="server"  class="form-control" TextMode="Date"></asp:TextBox>
                                 <br />
                                        <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <center>
 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn" Text="Ver gráfica" Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF9900"/><i class="fas fa-angle-double-right"></i> 
                                </center>
                               
                                 <br />
                                        <br />
                                <asp:Chart ID="GraficaFecha2" runat="server" BorderlineColor="Black" Palette="SeaGreen">
        <series>
            <asp:Series Name="Series1" ChartType="Bubble" YValuesPerPoint="2">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>

                            </div>

                        </div>
                        <div class="col-lg-4 col-md-6 blog-item">
                       <center>
                            <h3>Instrumentos/Consultorio</h3>
                       </center>
                           
                            <div class="meta">
                                <br />
                                  <asp:TextBox ID="txtIdConsultorio" runat="server"  class="form-control"  placeholder="Id Consultorio"></asp:TextBox>
                                 <br />
                                        <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <center>
 <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" class="btn" Text="Ver gráfica" Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF9900"/><i class="fas fa-angle-double-right"></i> 
                                </center>
                               
                                 <br />
                                        <asp:Chart ID="GraficoConsultorio" runat="server">
                                            <Series>
                                                <asp:Series ChartType="Bar" Name="Series1">
                                                </asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea Name="ChartArea1">
                                                </asp:ChartArea>
                                            </ChartAreas>
                                </asp:Chart>
                                        <br />
                                

                            </div>

                        </div>
                       
                    
                      
                    </div>
            
                </div>
            </div>
            <!-- Blog End -->
   
</asp:Content>
