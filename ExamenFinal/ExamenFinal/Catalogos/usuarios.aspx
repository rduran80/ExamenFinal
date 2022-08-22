<%@ Page Title="" Language="C#" MasterPageFile="~/Menus/mainMenu.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="ExamenFinal.Catalogos.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <formview runat="server" style="background-color: #0094ff; width: auto 60px; text-align: center; margin: 30px 175px 0 175px">
        <h1 style="text-align: center">Usuarios</h1>
        <div class="container jumbotron bg-light" style="background-color: #0094ff; height: 500px; width: auto 90%; text-align: center; margin: 50px 175px 0 175px">
            <div class="row align-content-center">
                <div class="textbox">
                    <div class="textbox">
                        <asp:Label ID="Label1" runat="server" Text="Usuario" CssClass="from-inline"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="No se admiten campos vacio" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtUser" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="textbox">
                        <asp:Label ID="Label2" runat="server" Text="Clave" CssClass="from-inline"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtClave" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="textbox">
                        <asp:Label ID="Label3" runat="server" Text="Tipo de usuario" CssClass="from-inline"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="drdTipoUsuario" runat="server" DataSourceID="SqlDrdTipo" DataTextField="tipoUsuario" DataValueField="tipoUsuario">
                            <asp:ListItem Value="1">Administaror</asp:ListItem>
                            <asp:ListItem Value="2">Regular</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDrdTipo" runat="server" ConnectionString="<%$ ConnectionStrings:ExamenFinalConnectionString %>" SelectCommand="SELECT [tipoUsuario] FROM [usuario]"></asp:SqlDataSource>
                    </div>

                </div>
                <div class="boton">
                    <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Ingresar" OnClick="Button1_Click" />
                    <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Borrar" OnClick="Button2_Click" />
                    <asp:Button CssClass="btn btn-primary" ID="Button3" runat="server" Text="Modificar" OnClick="Button3_Click" />
                </div>
                <div>
                    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="codUsuario" DataSourceID="SqlLlenarGrid">
                        <AlternatingRowStyle BorderStyle="Solid" />
                        <Columns>
                            <asp:BoundField DataField="codUsuario" HeaderText="codUsuario" InsertVisible="False" ReadOnly="True" SortExpression="codUsuario" />
                            <asp:BoundField DataField="nombreUsuario" HeaderText="nombreUsuario" SortExpression="nombreUsuario" />
                            <asp:BoundField DataField="tipoUsuario" HeaderText="tipoUsuario" SortExpression="tipoUsuario" />
                            <asp:BoundField DataField="claveUsuario" HeaderText="claveUsuario" SortExpression="claveUsuario" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlLlenarGrid" runat="server" ConnectionString="<%$ ConnectionStrings:ExamenFinalConnectionString %>" SelectCommand="SELECT * FROM [usuario]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </formview>
</asp:Content>
