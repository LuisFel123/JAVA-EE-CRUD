<%-- 
    Document   : editar
    Created on : 26 sep. 2024, 21:37:12
    Author     : luis
--%>

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
        <% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>
        <div
            class="max-w-md mx-auto relative overflow-hidden z-10 bg-gray-800 p-8 rounded-lg shadow-md before:w-24 before:h-24 before:absolute before:bg-purple-600 before:rounded-full before:-z-10 before:blur-2xl after:w-32 after:h-32 after:absolute after:bg-sky-400 after:rounded-full after:-z-10 after:blur-xl after:top-24 after:-right-12"
            >
            <h2 class="text-2xl font-bold text-white mb-6 ">EDITAR A USUARIO</h2>

            <form class="form" action="SvEditar" method="POST">
                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-300" for="name"
                           >DNI</label
                    >
                    <input
                        class="mt-1 p-2 w-full bg-gray-700 border border-gray-600 rounded-md text-white"
                        type="text"
                        name="dni"
                        required=""
                        value="<%=usu.getDni()%>"
                        />
                </div>

                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-300" for="email"
                           >NOMBRE</label
                    >
                    <input
                        class="mt-1 p-2 w-full bg-gray-700 border border-gray-600 rounded-md text-white"
                        name="nombre"
                        type="text"
                        required=""
                        value="<%=usu.getNombre()%>"
                        />
                </div>

                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-300" for="email"
                           >APELLIDO</label
                    >
                    <input
                        class="mt-1 p-2 w-full bg-gray-700 border border-gray-600 rounded-md text-white"
                        name="apellido"
                        type="text"
                        required=""
                        value="<%=usu.getApellido()%>"
                        />
                </div>


                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-300" for="email"
                           >TELEFONO</label
                    >
                    <input
                        class="mt-1 p-2 w-full bg-gray-700 border border-gray-600 rounded-md text-white"
                        name="telefono"
                        type="text"
                        required=""
                        value="<%=usu.getTelefono()%>"
                        />
                </div>



                <div class="flex justify-left">
                    <button
                        class="bg-gradient-to-r from-purple-600 via-purple-400 to-blue-500 text-white px-4 py-2 font-bold rounded-md hover:opacity-80"
                        type="submit"
                        >
                        Editar usuario
                    </button>
                </div>
            </form>
        </div>
    </body>
</html>
