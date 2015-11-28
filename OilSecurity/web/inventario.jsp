<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
    Solid State by HTML5 UP
    html5up.net | @n33co
    Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
    <head>
        <title>Inventario</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="assets/css/main.css" />
        <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    </head>
    <body>

        <!-- Page Wrapper -->
        <div id="page-wrapper">

            <!-- Header -->
            <%@ include file="partials/_header.jsp" %>

            <!-- Menu -->
            <%@ include file="partials/_menu.jsp" %>

            <!-- Content -->
            <div class="wrapper">
                <div class="inner">
                    <section>
                        <h1>Productos y Servicios</h1>
                        <p>El inventario Actual</p>
                        <p>
                            <a href="new.html" class="button special">Agregar Nuevo</a>
                        </p>
                        <div class="table-wrapper">
                            <table class="alt">
                                <thead>
                                    <tr>
                                        <th>Tipo</th>
                                        <th>Existencias</th>
                                        <th>Ubicación</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Diesel</td>
                                        <td>4123</td>
                                        <td>Almacén A</td>
                                        <td><a href="#" class="button special small">Editar</a> <a href="#" class="button small">Eliminar</a></td>
                                    </tr>
                                    <tr>
                                        <td>Pemex Magna</td>
                                        <td>8124</td>
                                        <td>Almacén B</td>
                                        <td><a href="#" class="button special small">Editar</a> <a href="#" class="button small">Eliminar</a></td>
                                    </tr>
                                    <tr>
                                        <td>Pemex Premium</td>
                                        <td>12123</td>
                                        <td>Almacén C</td>
                                        <td><a href="#" class="button special small">Editar</a> <a href="#" class="button small">Eliminar</a></td>
                                    </tr>
                                    <tr>
                                        <td>Gas licuado</td>
                                        <td>4412</td>
                                        <td>Almacén A</td>
                                        <td><a href="#" class="button special small">Editar</a> <a href="#" class="button small">Eliminar</a></td>
                                    </tr>
                                    <tr>
                                        <td>Gas natural</td>
                                        <td>4001</td>
                                        <td>Almacén B</td>
                                        <td><a href="#" class="button special small">Editar</a> <a href="#" class="button small">Eliminar</a></td>
                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </section>
                </div>
            </div>

        </section>

        <!-- Footer -->
        <section id="footer">
            <div class="inner">
                <ul class="copyright">
                    <li>&copy; Untitled Inc. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                </ul>
            </div>
        </section>

    </div>

    <!-- Scripts -->
    <script src="assets/js/skel.min.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.scrollex.min.js"></script>
    <script src="assets/js/util.js"></script>
    <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
    <script src="assets/js/main.js"></script>
</body>
</html>