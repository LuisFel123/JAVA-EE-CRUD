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
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body>





        <div class="shadow-lg rounded-lg overflow-hidden mx-4 md:mx-10">
            <table class="w-full table-fixed">
                <thead>
                    <tr class="bg-gray-100">
                        <th class="w-1/4 py-4 px-6 text-left text-gray-600 font-bold uppercase">DNI</th>
                        <th class="w-1/4 py-4 px-6 text-left text-gray-600 font-bold uppercase">NOMBRE</th>
                        <th class="w-1/4 py-4 px-6 text-left text-gray-600 font-bold uppercase">APELLIDO</th>
                        <th class="w-1/4 py-4 px-6 text-left text-gray-600 font-bold uppercase">TELEFONO</th>
                        <th class="w-1/4 py-4 px-6 text-left text-gray-600 font-bold uppercase">ESTATUS</th>
                    </tr>
                </thead>
                <%
                    List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                    int cont = 1;
                    for (Usuario usu : listaUsuarios) {
                %>
                <tbody class="bg-white">
                    <tr>
                        <td class="py-4 px-6 border-b border-gray-200"> <%=usu.getDni()%></td>
                        <td class="py-4 px-6 border-b border-gray-200 truncate"><%=usu.getNombre()%></td>
                        <td class="py-4 px-6 border-b border-gray-200"><%=usu.getApellido()%></td>
                        <td class="py-4 px-6 border-b border-gray-200"><%=usu.getTelefono()%></td>
                        <td class="py-4 px-6 border-b border-gray-200">
                            <span class="bg-green-500 text-white py-1 px-2 rounded-full text-xs">Active</span>
                        </td>
                    </tr>
                </tbody>
                <% cont = cont + 1; %>
                <%
                    }
                %>
            </table>
        </div>

    </body>
</html>
