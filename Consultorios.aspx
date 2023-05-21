<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Consultorios.aspx.cs" Inherits="ProyectoFinal.Consultorios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Contact Start -->
            <div class="contact">
                <div class="container">
                    <div class="section-header">
                        <h2>Consultorios</h2>
                    </div>
                            <div class="contact-info">
                           <br />
                          <center>
                               <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Id_consultorio" DataSourceID="InformacionConsultorios" Font-Bold="True" Font-Italic="True" Height="195px" Width="253px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                                    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                                    <Fields>
                                        <asp:BoundField DataField="Id_consultorio" HeaderText="Id_consultorio" ReadOnly="True" SortExpression="Id_consultorio" />
                                        <asp:BoundField DataField="Numero_Consultorio" HeaderText="Numero_Consultorio" SortExpression="Numero_Consultorio" />
                                        <asp:BoundField DataField="Piso_Consultorio" HeaderText="Piso_Consultorio" SortExpression="Piso_Consultorio" />
                                        <asp:BoundField DataField="Pinzas" HeaderText="Pinzas" SortExpression="Pinzas" />
                                        <asp:BoundField DataField="Agujas" HeaderText="Agujas" SortExpression="Agujas" />
                                        <asp:BoundField DataField="Jeringas" HeaderText="Jeringas" SortExpression="Jeringas" />
                                        <asp:BoundField DataField="Desinfectante" HeaderText="Desinfectante" SortExpression="Desinfectante" />
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                                    </Fields>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                </asp:DetailsView>

                               <asp:SqlDataSource ID="InformacionConsultorios" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HospitalNovenaConnectionString %>" DeleteCommand="DELETE FROM [Consultorio] WHERE [Id_consultorio] = @original_Id_consultorio AND [Numero_Consultorio] = @original_Numero_Consultorio AND [Piso_Consultorio] = @original_Piso_Consultorio AND [Pinzas] = @original_Pinzas AND [Agujas] = @original_Agujas AND [Jeringas] = @original_Jeringas AND (([Desinfectante] = @original_Desinfectante) OR ([Desinfectante] IS NULL AND @original_Desinfectante IS NULL))" InsertCommand="INSERT INTO [Consultorio] ([Id_consultorio], [Numero_Consultorio], [Piso_Consultorio], [Pinzas], [Agujas], [Jeringas], [Desinfectante]) VALUES (@Id_consultorio, @Numero_Consultorio, @Piso_Consultorio, @Pinzas, @Agujas, @Jeringas, @Desinfectante)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Consultorio]" UpdateCommand="UPDATE [Consultorio] SET [Numero_Consultorio] = @Numero_Consultorio, [Piso_Consultorio] = @Piso_Consultorio, [Pinzas] = @Pinzas, [Agujas] = @Agujas, [Jeringas] = @Jeringas, [Desinfectante] = @Desinfectante WHERE [Id_consultorio] = @original_Id_consultorio AND [Numero_Consultorio] = @original_Numero_Consultorio AND [Piso_Consultorio] = @original_Piso_Consultorio AND [Pinzas] = @original_Pinzas AND [Agujas] = @original_Agujas AND [Jeringas] = @original_Jeringas AND (([Desinfectante] = @original_Desinfectante) OR ([Desinfectante] IS NULL AND @original_Desinfectante IS NULL))">
                                   <DeleteParameters>
                                       <asp:Parameter Name="original_Id_consultorio" Type="Int32" />
                                       <asp:Parameter Name="original_Numero_Consultorio" Type="Int32" />
                                       <asp:Parameter Name="original_Piso_Consultorio" Type="Int32" />
                                       <asp:Parameter Name="original_Pinzas" Type="Int32" />
                                       <asp:Parameter Name="original_Agujas" Type="Int32" />
                                       <asp:Parameter Name="original_Jeringas" Type="Int32" />
                                       <asp:Parameter Name="original_Desinfectante" Type="Int32" />
                                   </DeleteParameters>
                                   <InsertParameters>
                                       <asp:Parameter Name="Id_consultorio" Type="Int32" />
                                       <asp:Parameter Name="Numero_Consultorio" Type="Int32" />
                                       <asp:Parameter Name="Piso_Consultorio" Type="Int32" />
                                       <asp:Parameter Name="Pinzas" Type="Int32" />
                                       <asp:Parameter Name="Agujas" Type="Int32" />
                                       <asp:Parameter Name="Jeringas" Type="Int32" />
                                       <asp:Parameter Name="Desinfectante" Type="Int32" />
                                   </InsertParameters>
                                   <UpdateParameters>
                                       <asp:Parameter Name="Numero_Consultorio" Type="Int32" />
                                       <asp:Parameter Name="Piso_Consultorio" Type="Int32" />
                                       <asp:Parameter Name="Pinzas" Type="Int32" />
                                       <asp:Parameter Name="Agujas" Type="Int32" />
                                       <asp:Parameter Name="Jeringas" Type="Int32" />
                                       <asp:Parameter Name="Desinfectante" Type="Int32" />
                                       <asp:Parameter Name="original_Id_consultorio" Type="Int32" />
                                       <asp:Parameter Name="original_Numero_Consultorio" Type="Int32" />
                                       <asp:Parameter Name="original_Piso_Consultorio" Type="Int32" />
                                       <asp:Parameter Name="original_Pinzas" Type="Int32" />
                                       <asp:Parameter Name="original_Agujas" Type="Int32" />
                                       <asp:Parameter Name="original_Jeringas" Type="Int32" />
                                       <asp:Parameter Name="original_Desinfectante" Type="Int32" />
                                   </UpdateParameters>
                               </asp:SqlDataSource>

                          </center>     
                                
                            </div>
  
</asp:Content>
