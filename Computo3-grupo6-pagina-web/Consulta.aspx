<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Computo3_grupo6_pagina_web.Consulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
&nbsp;buscar por nombre&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Textnombre" runat="server" Height="18px" Width="292px"> </asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="buscar" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="415px">
            <Columns>
                <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conexionBD %>" SelectCommand="SELECT [Nombres], [Apellidos], [Usuario] FROM [Usuarios]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexionBD %>" SelectCommand="SELECT CODPER AS codigo, NOMPER AS Nombre, APERPER AS Apellido, PAIPER AS pais FROM Personas "></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexionBD %>" SelectCommand="SELECT CODPER AS codigo, NOMPER AS nombre, APEPER AS apellido, PAIPER AS Pais FROM PERSONAS "></asp:SqlDataSource>
    </p>
</asp:Content>
