<%@page import="com.emergentes.modelo.Producto"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>)session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primer Parcial</title>
    </head>
    <body>
      
            <div style="width:400px;text-align: center; border:4px outset purple;  ">
                <h2 >PRIMER PARCIAL TEM-742</h2>
                <h3 >Nombre: Ruth Coronel Huanca </h3>
                <h3 >C.I. 7063957</h3>
            </div>
            
        <h3 style="color: orange">Productos</h3>
        <a href="MainController?op=nuevo"">Nuevo Registro</a><br>
        <p></p>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th >Descripcion</th>
                    <th >Cantidad</th>
                    <th >Precio</th>
                    <th >Categoria</th>
                    <th >Modificar</th>
                    <th >Eliminar</th>
                </tr>
            </thead>
            <tbody>
            <%
                if (lista != null) {
                    for(Producto item : lista){
                    
            %>
                <tr>
                    <td ><%= item.getId() %></td>
                    <td ><%= item.getDescripcion() %></td>
                    <td ><%= item.getCantidad() %></td>
                    <td ><%= item.getPrecio() %></td>
                    <td ><%= item.getCategoria() %></td>
                    <td ><a href="MainController?op=editar&id=<%= item.getId() %>">Modificar</a></td>
                    <td ><a href="MainController?op=eliminar&id=<%= item.getId() %>" onclick="return confirm('Esta seguro de eliminar el registro?')">Eliminar</a></td>
                </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
     

    </body>
</html>

