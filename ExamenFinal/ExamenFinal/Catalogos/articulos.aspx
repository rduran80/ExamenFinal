<%@ Page Title="" Language="C#" MasterPageFile="~/Menus/mainMenu.Master" AutoEventWireup="true" CodeBehind="articulos.aspx.cs" Inherits="ExamenFinal.Catalogos.articulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <formview runat="server" style="background-color: #0094ff; width: auto 60px; text-align: center; height: 95%; margin: 30px 175px 0 175px">
        <h1 style="text-align: center">Articulos</h1>
        <div class="container jumbotron bg-light" style="background-color: #0094ff; height: 95%; width: auto 90%; text-align: center; margin: 50px 175px 0 175px">
            <div class="row align-content-center">
                <div class="textbox">
                    <asp:Label ID="Label2" runat="server" Text="Codigo" CssClass="from-inline"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtcodArt" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="textbox">
                    <asp:Label ID="Label1" runat="server" Text="Tipo Articulo" CssClass="from-inline"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtCodTipoArt" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="textbox">
                    <asp:Label ID="Label3" runat="server" Text="Descripcion" CssClass="from-inline"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtDescArt" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="textbox">
                    <asp:Label ID="Label4" runat="server" Text="Precio" CssClass="from-inline"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtPrecioArt" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="textbox">
                    <asp:Label ID="Label5" runat="server" Text="Cantidad" CssClass="from-inline"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtCostoArt" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="textbox">
                    <asp:Label ID="Label6" runat="server" Text="Costo" CssClass="from-inline"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtCantdArt" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="boton">
                    <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Ingresar" OnClick="Button1_Click" />
                    <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Borrar" OnClick="Button2_Click" />
                    <asp:Button CssClass="btn btn-primary" ID="Button3" runat="server" Text="Modificar" OnClick="Button3_Click" />
                </div>
                <div>
                    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="Tipo Articulo" DataSourceID="SqlInventario" Height="161px">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" ReadOnly="True" InsertVisible="False" />
                            <asp:BoundField DataField="Tipo Articulo" HeaderText="Tipo Articulo" SortExpression="Tipo Articulo" ReadOnly="True" />
                            <asp:BoundField DataField="Descripcion Tipo" HeaderText="Descripcion Tipo" SortExpression="Descripcion Tipo" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlInventario" runat="server" ConnectionString="<%$ ConnectionStrings:ExamenFinalConnectionString %>" SelectCommand="obtTipoArticulo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </formview>
</asp:Content>
