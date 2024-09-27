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
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script src="https://cdn.tailwindcss.com"></script>

    </head>
    <body>

        <header>

        </header>

        <main>

            <div
                class="max-w-md mx-auto relative overflow-hidden z-10 bg-gray-800 p-8 rounded-lg shadow-md before:w-24 before:h-24 before:absolute before:bg-purple-600 before:rounded-full before:-z-10 before:blur-2xl after:w-32 after:h-32 after:absolute after:bg-sky-400 after:rounded-full after:-z-10 after:blur-xl after:top-24 after:-right-12"
                >
                <h2 class="text-2xl font-bold text-white mb-6 ">Ingresa tus datos</h2>

                <form class="form" action="SvUsuarios" method="POST">
                    <div class="mb-4">
                        <label class="block text-sm font-medium text-gray-300" for="name"
                               >DNI</label
                        >
                        <input
                            class="mt-1 p-2 w-full bg-gray-700 border border-gray-600 rounded-md text-white"
                            type="text"
                            name="dni"
                            required=""
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
                            />
                    </div>



                    <div class="flex justify-left">
                        <button
                            class="bg-gradient-to-r from-purple-600 via-purple-400 to-blue-500 text-white px-4 py-2 font-bold rounded-md hover:opacity-80"
                            type="submit"
                            >
                            Registrar usuarios
                        </button>
                    </div>
                </form>
            </div>
            <div class="flex justify-center mt-2" >
                <form action="SvUsuarios" method="GET">
                    <button class="group group-hover:before:duration-500 group-hover:after:duration-500 after:duration-500 hover:border-rose-300 hover:before:[box-shadow:_20px_20px_20px_30px_#a21caf] duration-500 before:duration-500 hover:duration-500 underline underline-offset-2 hover:after:-right-8 hover:before:right-12 hover:before:-bottom-8 hover:before:blur hover:underline hover:underline-offset-4  origin-left hover:decoration-2 hover:text-rose-300 relative bg-neutral-800 h-16 w-64 border text-left p-3 text-gray-50 text-base font-bold rounded-lg  overflow-hidden  before:absolute before:w-12 before:h-12 before:content[''] before:right-1 before:top-1 before:z-10 before:bg-violet-500 before:rounded-full before:blur-lg  after:absolute after:z-10 after:w-20 after:h-20 after:content['']  after:bg-rose-300 after:right-8 after:top-3 after:rounded-full after:blur-lg">
                        Mostrar Usuarios
                    </button>
                </form>

                <form class="form ml-1" action="SvEliminar" method="POST">
                    <button 
                        class="group group-hover:before:duration-500 group-hover:after:duration-500 after:duration-500 hover:border-rose-300 hover:before:[box-shadow:_20px_20px_20px_30px_#a21caf] duration-500 before:duration-500 hover:duration-500 underline underline-offset-2 hover:after:-right-8 hover:before:right-12 hover:before:-bottom-8 hover:before:blur hover:underline hover:underline-offset-4  origin-left hover:decoration-2 hover:text-rose-300 relative bg-neutral-800 h-16 w-64 border text-left p-3 text-gray-50 text-base font-bold rounded-lg  overflow-hidden  before:absolute before:w-12 before:h-12 before:content[''] before:right-1 before:top-1 before:z-10 before:bg-violet-500 before:rounded-full before:blur-lg  after:absolute after:z-10 after:w-20 after:h-20 after:content['']  after:bg-rose-300 after:right-8 after:top-3 after:rounded-full after:blur-lg"
                        type="submit"
                        >
                        Eliminar usuarios
                    </button>
                    <input
                        class="bg-[#222630] px-4 py-3 outline-none w-[200px] text-white rounded-lg border-2 transition-colors duration-100 border-solid focus:border-[#596A95] border-[#2B3040]"
                        name="id_usuario"
                        placeholder="Ingrese el id "
                        type="text"
                        required=""
                        />
                </form>

                <form class="form ml-1" action="SvEditar" method="GET">
                    <button 
                        class="group group-hover:before:duration-500 group-hover:after:duration-500 after:duration-500 hover:border-rose-300 hover:before:[box-shadow:_20px_20px_20px_30px_#a21caf] duration-500 before:duration-500 hover:duration-500 underline underline-offset-2 hover:after:-right-8 hover:before:right-12 hover:before:-bottom-8 hover:before:blur hover:underline hover:underline-offset-4  origin-left hover:decoration-2 hover:text-rose-300 relative bg-neutral-800 h-16 w-64 border text-left p-3 text-gray-50 text-base font-bold rounded-lg  overflow-hidden  before:absolute before:w-12 before:h-12 before:content[''] before:right-1 before:top-1 before:z-10 before:bg-violet-500 before:rounded-full before:blur-lg  after:absolute after:z-10 after:w-20 after:h-20 after:content['']  after:bg-rose-300 after:right-8 after:top-3 after:rounded-full after:blur-lg"
                        type="submit"
                        >
                        Editar usuario
                    </button>

                    <input
                        class="bg-[#222630] px-4 py-3 outline-none w-[200px] text-white rounded-lg border-2 transition-colors duration-100 border-solid focus:border-[#596A95] border-[#2B3040]"
                        name="usuarioEdit"
                        placeholder="Ingrese el id"
                        type="text"
                        required=""
                        />

                </form>
            </div>
        </main>

        <footer></footer>

    </body>
</html>
