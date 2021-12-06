<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Computo3_grupo6_pagina_web.Consulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
&nbsp;Busqueda por Nombre &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Textnombre" runat="server" Height="18px" Width="292px"> </asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text=" Buscar " OnClick="Button1_Click" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Height="217px" Width="352px">
            <Columns>
                <asp:BoundField DataField="N#" HeaderText="N#" SortExpression="N#" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                <asp:BoundField DataField="Existencia" HeaderText="Existencia" SortExpression="Existencia" />
                <asp:BoundField DataField="Entradas" HeaderText="Entradas" SortExpression="Entradas" />
                <asp:BoundField DataField="Salidas" HeaderText="Salidas" SortExpression="Salidas" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexionBD %>" SelectCommand="SELECT id AS N#, descripcion AS Descripcion, existencia AS Existencia, entradas AS Entradas, salidas As Salidas, stock AS Stock FROM inventario"></asp:SqlDataSource>
    </p>
</asp:Content>
