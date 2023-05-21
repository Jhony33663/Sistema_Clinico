<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="EliminarCita.aspx.cs" Inherits="ProyectoFinal.EliminarCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!-- Feature Start -->
            <div class="feature">
                <div class="container">
                    <div class="row">
                         <div class="section-header">
                                <h2>Elimina tu cita</h2>
                            </div>
                        <div class="col-md-7">  
                            <div class="row align-items-center feature-item">
                                     <asp:TextBox ID="txtID" runat="server"  class="form-control" placeholder="Identificación" ></asp:TextBox>
                                     <br />
                                     <br />
                                 <br />
                                <center>
                    <asp:GridView ID="mostrarCitas" runat="server" OnSelectedIndexChanged="Button2_Click">
                          <Columns>
                               <asp:CommandField ShowSelectButton="True" />
                          </Columns>
                      </asp:GridView>
                                </center>
                            
                            </div>

                        </div>
                        <div class="col-md-5">
                            <center>
                                <br />
                           <asp:Button ID="Button1" runat="server" OnClick="Button3_Click" class="btn" Text="Consultar Citas" Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF9900"/><i class="fas fa-angle-double-right"></i>
                                <br />
                                <br />
                                <br />
                            <p>
                                    Seleccione la cita que desee eliminar.
                                </p>
                            </center>
                                
                            </div>
                       
                    </div>
                </div>
            </div>
            <!-- Feature End -->
</asp:Content>

