<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ExamenFinal.Pages.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/style.css" rel="stylesheet" />
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"/>
        <title>Login</title>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #0094ff; width: auto 60px; text-align:center; margin: 100px 175px 0 175px" >
    <div class="container jumbotron bg-light" style="width: 60%">
        <div class="row align-content-center">
            <h2 style="margin-top: 15px">Bienvenido</h2>

            <div class="textbox">
                <asp:Label ID="Label1" runat="server" Text="Correo" CssClass="from-inline" ></asp:Label>
                <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="textbox"">
                <asp:Label ID="Label2" runat="server" Text="Clave" CssClass="form-inline"></asp:Label>
                <asp:TextBox ID="txtClave" runat="server" Type="Password" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="boton">
                <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Iniciar sesion" OnClick="Button1_Click" />
            </div>
            <div>
                <h4>Registrese <a href="registro.aspx"><strong>Aqui</strong></a></h4>
                <br />
            </div>
        </div>
    </div>
    </form>
</body>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</html>
