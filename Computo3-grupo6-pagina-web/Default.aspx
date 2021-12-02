<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Computo3_grupo6_pagina_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Very Tasty</h1>
        <p class="lead">Somos tu mejor opcion tus comidas rapidas preferidas</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Ver Promociones &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2> New Hamburguesa de Pescado</h2>
            <p>
                Disfruta de Nuestra Hamburguesa de Pescado
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Comprar Ahora &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2> New Frosty de BlueBerrys</h2>
            <p>
               Disfruta nuestro Refrescante y Delicioso Frosty
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Comprar Ahora &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>New Hamburguesa de Pollo</h2>
            <p>
                Disfruta de Nuestra Hamburguesa de Pollo
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Comprar Ahora &raquo;</a>
            </p>
            <br />
            <div>
            <asp:Button ID="BtnCerrar" runat="server" Text="Cerrar Sesion" OnClick="BtnCerrar_Click"/>
        </div>
            <br />
            <div> 
            <asp:Label ID="LblBienvenida" CssClass="h3" runat ="server" Text=""></asp:Label>
        </div>
        </div>
    </div>

</asp:Content>
