<%@ Page Title="" Language="C#" MasterPageFile="~/Menus/mainMenu.Master" AutoEventWireup="true" CodeBehind="tipoArticulos.aspx.cs" Inherits="ExamenFinal.Catalogos.tipoArticulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<formview runat="server" style="background-color: #0094ff; width: auto 60px; text-align: center; margin: 30px 175px 0 175px">
        <h1 style="text-align: center">Tipo articulos</h1>
        <div class="container jumbotron bg-light" style="background-color: #0094ff; height: 500px; width: auto 90%; text-align: center; margin: 50px 175px 0 175px">
            <div class="row align-content-center">
                <div class="textbox">
                </div>
                <div class="boton">
                    <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Ingresar" />
                    <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Borrar" />
                    <asp:Button CssClass="btn btn-primary" ID="Button3" runat="server" Text="Modificar" />
                </div>
                <div>
                    <asp:GridView ID="GridView1" runat="server" Width="100%"></asp:GridView>
                </div>
            </div>
        </div>
    </formview>
</asp:Content>
