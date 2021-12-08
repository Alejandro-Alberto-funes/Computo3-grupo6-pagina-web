<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Computo3_grupo6_pagina_web.Consulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
&nbsp;Busqueda por Nombre &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Textnombre" runat="server" Height="18px" Width="292px"> </asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text=" Buscar " OnClick="Button1_Click" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" Height="262px" Width="409px" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="N#" HeaderText="N#" SortExpression="N#" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                <asp:BoundField DataField="Existencia" HeaderText="Existencia" SortExpression="Existencia" />
                <asp:BoundField DataField="Entradas" HeaderText="Entradas" SortExpression="Entradas" />
                <asp:BoundField DataField="Salidas" HeaderText="Salidas" SortExpression="Salidas" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexionBD %>" SelectCommand="SELECT id AS N#, descripcion AS Descripcion, existencia AS Existencia, entradas AS Entradas, salidas As Salidas, stock AS Stock FROM inventario"></asp:SqlDataSource>
    </p>
</asp:Content>
