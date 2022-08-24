<%@ Page Title="" Language="C#" MasterPageFile="~/Menus/mainMenu.Master" AutoEventWireup="true" CodeBehind="inventario.aspx.cs" Inherits="ExamenFinal.Catalogos.inventario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <formview runat="server" style="background-color: #0094ff; width: auto 60px; text-align: center; height: 95%; margin: 30px 175px 0 175px">
        <h1 style="text-align: center">Reporte articulos</h1>
        <div class="container jumbotron bg-light" style="background-color: #0094ff; height: 95%; width: auto 90%; text-align: center; margin: 50px 175px 0 175px">
            <section>
                
            </section>
            <div class="textbox col-4" >
                <asp:GridView ID="GridView2" Style="float:left; margin-inline:5px" runat="server" AutoGenerateColumns="False" DataSourceID="SqlCosto" BackColor="White" BorderWidth="5px" CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="Costo Inventario" HeaderText="Costo Inventario" ReadOnly="True" SortExpression="Costo Inventario" />
                    </Columns>
                    <HeaderStyle BackColor="Gray" />
                </asp:GridView>
                <asp:GridView ID="GridView3" Style="float:left; margin-block:5px" runat="server" AutoGenerateColumns="False" DataSourceID="SqlGanancias" BackColor="White" BorderStyle="Solid" BorderWidth="5px" Font-Bold="False" CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="Total Ganancias" HeaderText="Total Ganancias" ReadOnly="True" SortExpression="Total Ganancias" >
                        <HeaderStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BorderStyle="Dotted" ForeColor="Blue" />
                    <HeaderStyle BackColor="Gray" />
                </asp:GridView>
                &nbsp;<asp:Label ID="Label1" Style="float:left" runat="server" Text="Codigo Articulo" CssClass="me-5"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtArticulo" runat="server" CssClass="float-start" Width="58px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView4" Style="margin-block:5px; " runat="server" AutoGenerateColumns="False" BorderWidth="5px" CellSpacing="2" DataSourceID="SqlArtXCod" CssClass="float-start" Width="1278px">
                    <Columns>
                        <asp:BoundField DataField="Tipo Articulo" HeaderText="Tipo Articulo" SortExpression="Tipo Articulo" />
                        <asp:BoundField DataField="Descripcion Tipo Articulo" HeaderText="Descripcion Tipo Articulo" SortExpression="Descripcion Tipo Articulo" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:BoundField DataField="Costo Inventario" HeaderText="Costo Inventario" ReadOnly="True" SortExpression="Costo Inventario" />
                        <asp:BoundField DataField="Proyeccion Ganancias" HeaderText="Proyeccion Ganancias" ReadOnly="True" SortExpression="Proyeccion Ganancias" />
                        <asp:BoundField DataField="Ganancias" HeaderText="Ganancias" ReadOnly="True" SortExpression="Ganancias" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlArtXCod" runat="server" ConnectionString="<%$ ConnectionStrings:ExamenFinalConnectionString %>" SelectCommand="obtArticulosCod" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtArticulo" Name="codArticulo" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
&nbsp;
                <asp:SqlDataSource ID="SqlCosto" runat="server" ConnectionString="<%$ ConnectionStrings:ExamenFinalConnectionString %>" SelectCommand="costoInventario" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlGanancias" runat="server" ConnectionString="<%$ ConnectionStrings:ExamenFinalConnectionString %>" SelectCommand="ganancias" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                </div>

            <div class="row align-content-center">
                <h1>Inventario</h1>
                <div>
                    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlInventario">
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                            <asp:BoundField DataField="Tipo Articulo" HeaderText="Tipo Articulo" SortExpression="Tipo Articulo" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                            <asp:BoundField DataField="Costo" HeaderText="Costo" SortExpression="Costo" />
                            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlInventario" runat="server" ConnectionString="<%$ ConnectionStrings:ExamenFinalConnectionString %>" SelectCommand="obtArticulos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </formview>
</asp:Content>
