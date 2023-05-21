<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Doctores.aspx.cs" Inherits="ProyectoFinal.Doctores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Blog Start -->
            <div class="blog">
                <div class="container">
                    <div class="section-header">
                        <h2>Administrar médicos</h2>
                    </div>
                    <div class="row blog-page">
                        <div class="col-lg-4 col-md-6 blog-item">
                             <h3>Agregar doctor</h3>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtIDAgregar" runat="server"  class="form-control" placeholder="Identificación"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtNombre" runat="server"  class="form-control" placeholder="Nombre" ></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox type="email" ID="txtEmail" runat="server"  class="form-control" placeholder="E-mail" ></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtDireccion" runat="server"  class="form-control" placeholder="Dirección" ></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                         <asp:TextBox ID="txtTelefono" runat="server"  class="form-control" placeholder="Teléfono" ></asp:TextBox>
                                    </div>
                                <div class="form-group">
                                         <asp:DropDownList ID="dropcategoria" runat="server" AutoPostBack="True" DataSourceID="IdentificadorCategoriaDoctores" DataTextField="descripcion" DataValueField="id_categoria">
                                         </asp:DropDownList>
                                         <asp:SqlDataSource ID="IdentificadorCategoriaDoctores" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalNovenaConnectionString %>" SelectCommand="SELECT * FROM [Categoria]"></asp:SqlDataSource>
                                    </div>
                                    <div>
                                       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn" Text="AGREGAR" Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF9900"/><i class="fas fa-angle-double-right"></i> 
                                    </div>
                        </div>
                        <div class="col-lg-4 col-md-6 blog-item">
                             <h3>Eliminar doctor</h3>
                             
                                    <div class="form-group">
                                        <asp:TextBox ID="txtIDBorrar" runat="server"  class="form-control" placeholder="Identificación"></asp:TextBox>
                                    </div>
                                    <div>
                                       <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" class="btn" Text="ELIMINAR" Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF9900"/><i class="fas fa-angle-double-right"></i> 
                                    </div>
                                
                        </div>
                        <div class="col-lg-4 col-md-6 blog-item">
                             <h3>Actualizar doctor</h3>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtIDActualizar" runat="server"  class="form-control" placeholder="Identificación" ></asp:TextBox>
                                        <br />
                                        &nbsp;<asp:DropDownList ID="dropactualizar" runat="server" AutoPostBack="True">
                                            <asp:ListItem Value="CC_Medico">Cédula</asp:ListItem>
                                            <asp:ListItem Value="Nombre">Nombre</asp:ListItem>
                                            <asp:ListItem>Email</asp:ListItem>
                                            <asp:ListItem Value="Direccion">Dirección</asp:ListItem>
                                            <asp:ListItem Value="Telefono">Teléfono</asp:ListItem>
                                            <asp:ListItem Value="id_categoria">Categoría</asp:ListItem>
                                             </asp:DropDownList>
                                        <br />
                                        <br />
                                         <asp:TextBox ID="txtdatoactualizar" runat="server"  class="form-control" placeholder="Nuevo dato" ></asp:TextBox>
                                        <br />
                                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" class="btn" Text="ACTUALIZAR" Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF9900"/><i class="fas fa-angle-double-right"></i>

                                    </div>
                        </div>
                </div>
                    <div class="blog-item">
                            <center>
                                 <div class="section-header">
                                     <h2>Tabla médicos</h2>
                                 </div>

                                <asp:GridView ID="datos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                      </asp:GridView>
                            </center> 
                                    
                        </div>
                    
                    
            </div>
           </div>
            <!-- Blog End -->
</asp:Content>
