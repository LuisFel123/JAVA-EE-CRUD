<%-- 
    Document   : mostrarUsuarios
    Created on : 4 sep. 2024, 20:59:50
    Author     : luis
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectonuevo.logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de usuarios registrados</h1>
        <%
            List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
            int cont = 1;
            for (Usuario usu : listaUsuarios) {
        %>
        <p><b>Usuario N° <%=cont%> </b></p>
        <p>Dni: <%=usu.getDni()%></p>
        <p>Nombre: <%=usu.getNombre()%></p>
        <p>Apellido <%=usu.getApellido()%></p>
        <p>Telefono: <%=usu.getTelefono()%></p>
        <p>__________________________________</p>
        <% cont = cont + 1; %>
        <%
            }
        %>
    </body>
</html>
