<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="ExamenFinal.Pages.registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"/>
    <link href="../css/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 1.5rem;
            width: auto 95%;
            text-align:left;
            padding: 10px;
        }
        .auto-style3 {
            margin-bottom: 3rem;
            width: auto 95%;
            padding: 10px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #0094ff; width: auto 70px; text-align: center; margin: 100px 175px 0 175px">
        <div class="container jumbotron bg-light" style="width: 60%">
            <div class="row align-content-center">
                <h2 style="width: 95%; margin-top: 15px""><strong>Registro usuarios</strong></h2>
                <div class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Usuario" CssClass="from-inline"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Clave" CssClass="from-inline"></asp:Label>
                    <asp:TextBox ID="txtClave" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Tipo de usuario" CssClass="from-inline"></asp:Label>
                    <br />
                    <asp:DropDownList ID="drdTipo" runat="server" Width="175px">
                        <asp:ListItem Value="1">Administrador</asp:ListItem>
                        <asp:ListItem Value="2">Regular</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="auto-style3">
                    <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</html>
