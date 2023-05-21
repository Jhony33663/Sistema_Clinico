<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Pacientes.aspx.cs" Inherits="ProyectoFinal.Pacientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- Timeline Start -->
            <div class="timeline">
                <div class="container">
                    <div class="section-header">
                        <h2>Actualizar mi registro</h2>
                    </div>
                    <div class="timeline-start">
                        <div class="timeline-container left">
                            <div class="timeline-content">
                                  <div class="form-group">
                                        <asp:TextBox ID="txtIDBorrar" runat="server"  class="form-control" placeholder="Identificación"></asp:TextBox>
                                    </div>
                                    <div>
                                       <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" class="btn" Text="ELIMINAR" Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF9900"/><i class="fas fa-angle-double-right"></i> 
                                    </div>
                            </div>
                        </div>
                        <div class="timeline-container right">
                            <div class="timeline-content">
                                 <div class="form-group">
                                        <asp:TextBox ID="txtIDActualizar" runat="server"  class="form-control" placeholder="Identificación" ></asp:TextBox>
                                        <br />
                                        &nbsp;<asp:DropDownList ID="dropactualizar" runat="server" AutoPostBack="True">
                                            <asp:ListItem Value="Id_Paciente">Identificación</asp:ListItem>
                                            <asp:ListItem Value="Nombre">Nombre</asp:ListItem>
                                            <asp:ListItem>Email</asp:ListItem>
                                            <asp:ListItem Value="Direccion">Dirección</asp:ListItem>
                                            <asp:ListItem Value="Telefono">Teléfono</asp:ListItem>
                                             </asp:DropDownList>
                                        <br />
                                        <br />
                                         <asp:TextBox ID="txtdatoactualizar" runat="server"  class="form-control" placeholder="Nuevo dato" ></asp:TextBox>
                                        <br />
                                        <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" class="btn" Text="ACTUALIZAR" Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF9900"/><i class="fas fa-angle-double-right"></i>

                                    </div>
                            </div>
                        </div>
                        <div class="timeline-container left">
                            <div class="timeline-content">
                                
                               <center>
                                   <h2>Tus datos son</h2>
                               </center>   
                                   <asp:GridView ID="datospaciente" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                                    </asp:GridView>
                                                          
                            </div>
                        </div>
                        <div class="timeline-container right">
                            <div class="timeline-content">
                                <h2><span>¡Ahora!</span>Una vez actualizado tu registro...</h2>
                                <p>
                                   Puedes pedir una cita médica virtual o presencial con el profesional que desees.
                                </p>
                            </div>
                        </div>
                       
                       
                    </div>
                </div>
            </div>
            <!-- Timeline End -->

</asp:Content>

  