<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="Computo3_grupo6_pagina_web.registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registrarse</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="CSS/s3.css" rel="stylesheet" />
</head>
<body class="form-control">
    <div class="container small">
        <div class="row">
            <h2 class="text-center">Formulario de Registro</h2>
            <div class="col">
                <form id="formulario_registro" class="form-check" runat="server">
                    <div>
                        <fieldset>
                            <legend>Datos Personales</legend>
                            <asp:Table runat="server">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" ID="lblNombres" Text="Nombres:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="tbNombres" placeholder="ej. Juan Pablo"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" ID="lblApellidos" Text="Apellidos:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="tbApellidos" placeholder="ej. Cruz Herrera"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" ID="lblFechaNacimiento" Text="Fecha de Nacimiento:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="tbFechaNacimiento" TextMode="Date"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </fieldset>
                        <br />
                        <fieldset>
                            <legend>Datos de Login</legend>
                            <asp:Table runat="server">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" ID="lblUsuario" Text="Nombre de Usuario:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" ID="tbUsuario" placeholder="ej. JuanH02"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" ID="lblContrasenia" Text="Clave:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" ID="tbContrasenia" TextMode="Password" placeholder="Password"></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:Label runat="server" ID="lblConfirmarContrasenia" Text="Confirme Clave:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" ID="tbConfirmarContrasenia" TextMode="Password" placeholder="Password"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell ColumnSpan="2">
                                        <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                                        <asp:Label runat="server" CssClass="alert-danger" ID="lblErrorContrasenia"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </fieldset>
                        <br />
                        <div>
                            <asp:Button ID="BtnRegistrar" CssClass="btn btn-primary btn-dark" runat="server" Text="Registrar" OnClick="BtnRegistrar_Click" />
                        </div>
                        <br />
                         <div>
                             <asp:Button ID="BtnRegresar" runat="server" Text="Regresar" CssClass="btn btn-primary btn-info"  OnClick="BtnRegresar_Click" />
            </div>
                    </div>
                </form>
            </div>
            <div class="col">
                <fieldset>
                    <legend>Registros existentes</legend>
                </fieldset>
                <br />
                <div>
                <asp:DataGrid runat="server" ID="gvUsuarios" CssClass="table"></asp:DataGrid>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
