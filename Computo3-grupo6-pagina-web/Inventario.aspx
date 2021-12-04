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
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
