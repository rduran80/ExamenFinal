<%@ Page Title="" Language="C#" MasterPageFile="~/Menus/mainMenu.Master" AutoEventWireup="true" CodeBehind="tipoUsuarios.aspx.cs" Inherits="ExamenFinal.Catalogos.tipoUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <formview runat="server" style="background-color: #0094ff; width: auto 60px; text-align: center; height: 95%; margin: 30px 175px 0 175px">

        <h1 style="text-align: center">Tipo de usuarios</h1>
        <div class="container jumbotron bg-light" style="background-color: #0094ff; height: 95%; width: auto 90%; text-align: center; margin: 50px 175px 0 175px">
            <div class="row align-content-center">
                <div class="textbox">
                    <asp:Label ID="Label1" runat="server" Text="ID Usuario" CssClass="from-inline"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtId" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="textbox">
                    <asp:Label ID="Label2" runat="server" Text="Tipo Usuario" CssClass="from-inline"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTipo" ErrorMessage="No se admiten campos vacio" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtTipo" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="textbox">
                    <asp:Label ID="Label3" runat="server" Text="Descripcion" CssClass="from-inline"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDescTipo" ErrorMessage="No se admiten campos vacio" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtDescTipo" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="boton">
                    <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Ingresar" OnClick="Button1_Click" />
                    <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Borrar" OnClick="Button2_Click" />
                    <asp:Button CssClass="btn btn-primary" ID="Button3" runat="server" Text="Modificar" OnClick="Button3_Click" />
                </div>
                <div>
                    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="Tipo Articulo" DataSourceID="SqlTipoUsuarios">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Tipo Articulo" HeaderText="Tipo Articulo" ReadOnly="True" SortExpression="Tipo Articulo" />
                            <asp:BoundField DataField="Descripcion Tipo" HeaderText="Descripcion Tipo" SortExpression="Descripcion Tipo" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlTipoUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ExamenFinalConnectionString %>" SelectCommand="obtTipoArticulo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </formview>
</asp:Content>
