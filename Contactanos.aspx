<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Contactanos.aspx.cs" Inherits="ProyectoFinal.Contactanos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h2>Regístrate</h2>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->


            <!-- Contact Start -->
            <div class="contact">
                <div class="container">
                    <div class="section-header">
                        <h2>Digita tus datos</h2>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="contact-info">
                                <div class="contact-item">
                                    <i class="fa fa-map-marker-alt"></i>
                                    <div class="contact-text">
                                        <h2>Ubicación</h2>
                                        <p>123 Street, New York, USA</p>
                                    </div>
                                </div>
                                <div class="contact-item">
                                    <i class="fa fa-phone-alt"></i>
                                    <div class="contact-text">
                                        <h2>Teléfono</h2>
                                        <p>+012 345 67890</p>
                                    </div>
                                </div>
                                <div class="contact-item">
                                    <i class="fa fa-envelope"></i>
                                    <div class="contact-text">
                                        <h2>Email</h2>
                                        <p>hospitalnovena@novena.com</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="contact-form">
                                <form>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtID" runat="server"  class="form-control" placeholder="Identificación" required="Requerido"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtNombre" runat="server"  class="form-control" placeholder="Nombre" required="Requerido"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox type="email" ID="txtEmail" runat="server"  class="form-control" placeholder="E-mail" required="Requerido"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtDireccion" runat="server"  class="form-control" placeholder="Dirección" required="Requerido"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                         <asp:TextBox ID="txtTelefono" runat="server"  class="form-control" placeholder="Teléfono" required="Requerido"></asp:TextBox>
                                    </div>
                                    <div>
                                        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" class="btn" type="submit" Text="Registrarme" />
                                    </div>
                                    <br />
                                    <a href="Pacientes.aspx" class = "botones"; style="font-family: 'Segoe Script'; color: #808000; font-size: large;" >Ya estoy registrado</a><i class="fas fa-angle-double-right"></i>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Contact End -->

</asp:Content>
