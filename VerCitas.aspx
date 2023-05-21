<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="VerCitas.aspx.cs" Inherits="ProyectoFinal.VerCitas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="timeline">
                <div class="container">
                    <div class="section-header">
                        <h2>Tabla de Citas</h2>
                    
                    </div>
                    <center>

                         
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="IdentificadorVerCitas" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="CC_Medico" HeaderText="CC_Medico" SortExpression="CC_Medico" />
                                <asp:BoundField DataField="Id_Paciente" HeaderText="Id_Paciente" SortExpression="Id_Paciente" />
                                <asp:BoundField DataField="Id_Consultorio" HeaderText="Id_Consultorio" SortExpression="Id_Consultorio" />
                                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="IdentificadorVerCitas" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalNovenaConnectionString %>" SelectCommand="SELECT * FROM [Cita]"></asp:SqlDataSource>

                         
                    </center>
                   
                </div>
            </div>
            <!-- Timeline End -->
</asp:Content>
