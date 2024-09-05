<%-- 
    Document   : index
    Created on : 4 sep. 2024, 20:59:27
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/funtion.js" defer></script>
        <script src="https://cdn.tailwindcss.com"></script>

    </head>
    <body>

        <header>

        </header>

        <main>

            <div class="grid">

                <div class="g-col-12">
                    <h1 class="titulo">Datos del cliente</h1>
                </div>



                <div class="g-col-12">
                    <div class="form-container">

                        <form class="form" action="SvUsuarios" method="POST">

                            <div class="form-group">
                                <label for="dni">Dni:</label>
                                <input type="text" id="email" name="dni" required="" column='100'>
                            </div>

                            <div class="form-group">
                                <label for="nombre">Nombre:</label>
                                <input type="text" id="email" name="nombre" required="">
                            </div>

                            <div class="form-group">
                                <label for="apellido">Apellido:</label>
                                <input type="text" id="email" name="apellido" required="">
                            </div>

                            <div class="form-group">
                                <label for="telefono">Telefono:</label>
                                <input type="number" id="email" name="telefono" required="">
                            </div>

                            <button class="form-submit-btn bg-rose-500 text-white rounded-md px-4 py-2 hover:bg-rose-700 transition"  type="submit"  onclick="openModal('modelConfirm')">
                                Click to Open modal
                            </button>
                        </form>
                    </div>
                </div>


                <div class="g-col-12">
                    <h1>Ver lista de usuarios</h1>
                    <p>Para ver los datos de los usuarios cargados haga click en el el siguiente </p>
                    <form action="SvUsuarios" method="GET">
                        <button type="submit">Mostrar usuarios</button>
                    </form>
                </div>



            </div> 

        </main>

        <footer></footer>
    </body>
</html>
