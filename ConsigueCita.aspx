<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ConsigueCita.aspx.cs" Inherits="ProyectoFinal.ConsigueCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- Feature Start -->
            <div class="feature">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="section-header">
                                <h2>Consigue una cita</h2>
                            </div>
                            <div class="row align-items-center feature-item">
                               
                                        <asp:TextBox ID="txtID" runat="server"  class="form-control" placeholder="Identificación" ></asp:TextBox>
                                  <br />
                                        <br />
                                 &nbsp;<asp:Label ID="Label1" runat="server" Text="Escoja una categoría"></asp:Label>
&nbsp;&nbsp;&nbsp;
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Categorias" DataTextField="descripcion" DataValueField="id_categoria">
                                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label2" runat="server" Text="Escoja un doctor"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:DropDownList ID="dropdoctores" runat="server" AutoPostBack="True" DataSourceID="Doctores" DataTextField="Nombre" DataValueField="CC_Medico">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="Categorias" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalNovenaConnectionString %>" SelectCommand="SELECT * FROM [Categoria]"></asp:SqlDataSource>
                                        <asp:SqlDataSource ID="Doctores" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalNovenaConnectionString %>" SelectCommand="SELECT [CC_Medico], [Nombre] FROM [Medico] WHERE ([id_categoria] = @id_categoria)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="id_categoria" PropertyName="SelectedValue" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
  
                                        &nbsp;<asp:Label ID="Label3" runat="server" Text="Elija fecha"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtfecha" runat="server" TextMode="Date"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Elija horario"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="dropHorario" runat="server" AutoPostBack="True">
                                            <asp:ListItem Value="08:00:00">08:00:00 AM</asp:ListItem>
                                            <asp:ListItem Value="09:00:00">09:00:00 AM</asp:ListItem>
                                            <asp:ListItem Value="10:00:00">10:00:00 AM</asp:ListItem>
                                            <asp:ListItem Value="11:00:00">11:00:00 AM</asp:ListItem>
                                            <asp:ListItem Value="14:00:00">02:00:00 PM</asp:ListItem>
                                            <asp:ListItem Value="15:00:00">03:00:00 PM</asp:ListItem>
                                            <asp:ListItem Value="16:00:00">04:00:00 PM</asp:ListItem>
                                            <asp:ListItem Value="17:00:00">05:00:00 PM</asp:ListItem>
                                            <asp:ListItem Value="18:00:00">06:00:00 PM</asp:ListItem>
                                            <asp:ListItem Value="19:00:00">07:00:00 PM</asp:ListItem>
                                            <asp:ListItem Value="20:00:00">08:00:00 PM</asp:ListItem>
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />                               
                            </div>
                            <center>
                                 <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" class="btn" Text="AGENDAR" Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF9900" Width="137px"/><i class="fas fa-angle-double-right"></i>               
                            </center>
                                    
                        </div>
                        <div class="col-md-5">
                            <div class="feature-img">
                                <img src="Fotos Adicionales/dos.jpg" alt="Feature">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Feature End -->
</asp:Content>
