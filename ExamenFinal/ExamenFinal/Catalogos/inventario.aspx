<%@ Page Title="" Language="C#" MasterPageFile="~/Menus/mainMenu.Master" AutoEventWireup="true" CodeBehind="inventario.aspx.cs" Inherits="ExamenFinal.Catalogos.inventario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <formview runat="server" style="background-color: #0094ff; width: auto 60px; text-align: center; height: 95%; margin: 30px 175px 0 175px">
        <h1 style="text-align: center">Inventario articulos</h1>
        <div class="container jumbotron bg-light" style="background-color: #0094ff; height: 95%; width: auto 90%; text-align: center; margin: 50px 175px 0 175px">
            <div class="row align-content-center">
                <div>
                    <asp:GridView ID="GridView1" runat="server" Width="100%"></asp:GridView>
                </div>
            </div>
        </div>
    </formview>
</asp:Content>
