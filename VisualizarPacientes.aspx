<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="VisualizarPacientes.aspx.cs" Inherits="ProyectoFinal.VisualizarPacientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="timeline">
                <div class="container">
                    <div class="section-header">
                        <h2>Tabla de Pacientes</h2>
                    
                    </div>
                    <center>

                         <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <tr style="background-color:#FFF8DC;">
                                <td>
                                    <asp:Label ID="Id_PacienteLabel" runat="server" Text='<%# Eval("Id_Paciente") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DireccionLabel" runat="server" Text='<%# Eval("Direccion") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color:#008A8C;color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                </td>
                                <td>
                                    <asp:Label ID="Id_PacienteLabel1" runat="server" Text='<%# Eval("Id_Paciente") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DireccionTextBox" runat="server" Text='<%# Bind("Direccion") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No se han devuelto datos.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                </td>
                                <td>
                                    <asp:TextBox ID="Id_PacienteTextBox" runat="server" Text='<%# Bind("Id_Paciente") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DireccionTextBox" runat="server" Text='<%# Bind("Direccion") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color:#DCDCDC;color: #000000;">
                                <td>
                                    <asp:Label ID="Id_PacienteLabel" runat="server" Text='<%# Eval("Id_Paciente") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DireccionLabel" runat="server" Text='<%# Eval("Direccion") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                <th runat="server">Id_Paciente</th>
                                                <th runat="server">Nombre</th>
                                                <th runat="server">Email</th>
                                                <th runat="server">Direccion</th>
                                                <th runat="server">Telefono</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                <td>
                                    <asp:Label ID="Id_PacienteLabel" runat="server" Text='<%# Eval("Id_Paciente") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DireccionLabel" runat="server" Text='<%# Eval("Direccion") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalNovenaConnectionString %>" SelectCommand="SELECT * FROM [Paciente]"></asp:SqlDataSource>

                    </center>
                   
                </div>
            </div>
            <!-- Timeline End -->
</asp:Content>
