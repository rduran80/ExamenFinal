<%@ Page Title="" Language="C#" MasterPageFile="~/Menus/mainMenu.Master" AutoEventWireup="true" CodeBehind="auditoria.aspx.cs" Inherits="ExamenFinal.Catalogos.auditoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <formview runat="server" style="background-color: #0094ff; width: auto 60px; text-align: center; height: 95%; margin: 30px 175px 0 175px">
    <h1 style="text-align: center">Auditoria articulos</h1>
        <div class="container jumbotron bg-light" style="background-color: #0094ff; height: 95%; width: auto 90%; text-align: center; margin: 50px 175px 0 175px">
        <div class="row align-content-center">
            <div class="textbox">
                <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlAuditoria">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                        <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlAuditoria" runat="server" ConnectionString="<%$ ConnectionStrings:ExamenFinalConnectionString %>" SelectCommand="obtArticuloAuditoria" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</formview>
</asp:Content>
