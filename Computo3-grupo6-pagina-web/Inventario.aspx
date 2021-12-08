<%@ Page Title="Inventario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="Computo3_grupo6_pagina_web.Inventario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div> 
    <table> 
      <tr>
       <td>
           Descripcion:
       </td>
       <td> 
           <asp:TextBox ID="txtdes" runat="server"></asp:TextBox>
           <br />
       </td>
      </tr>
         <tr>
       <td>
           Existencia:
       </td>
       <td> 
           <asp:TextBox ID="txtexi" runat="server"></asp:TextBox>
           <br />
       </td>
      </tr>
         <tr>
       <td>
           Entradas:
       </td>
       <td> 
           <asp:TextBox ID="txtent" runat="server"></asp:TextBox>
           <br />
       </td>
      </tr>
         <tr>
       <td>
           Salidas:
       </td>
       <td> 
           <asp:TextBox ID="txtsal" runat="server"></asp:TextBox>
           <br />
       </td>
      </tr>
         <tr>
       <td>
          Stock:
       </td>
       <td> 
           <asp:TextBox ID="txtsto" runat="server"></asp:TextBox>
           <br />
       </td>
      </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
      <tr>
        <td>
            <asp:Button ID="btnadd" runat="server" Text="Agregar" OnClick="btnadd_Click" />
             <asp:Button ID="btnupdate" runat="server" Text="Actualizar" OnClick="btnupdate_Click" />
             <asp:Button ID="btndelete" runat="server" Text="Eliminiar" OnClick="btndelete_Click" />
            <asp:Button ID="btnlimpiar" runat="server" Text="Limpiar" OnClick="btnlimpiar_Click"  />

        &nbsp;
        </td>
          <td colspan="2">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblsucces" runat="server" Text="" ForeColor="Green"></asp:Label>
          </td>
      </tr>
    </table>
   &nbsp;&nbsp;
   </div> 

&nbsp;<br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="191px" Width="585px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
