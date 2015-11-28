<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
    Solid State by HTML5 UP
    html5up.net | @n33co
    Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
    <head>
        <title>Nuevo producto</title>
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
            <%@include file="/partials/_header.jsp" %>

            <!-- Menu -->
            <%@include file="/partials/_menu.jsp" %>


            <!-- Content -->
            <div class="wrapper">
                <div class="inner">
                    <section>
                        <h3 class="major">Agregar un nuevo Elemento</h3>
                        <p>Llene el formulario que se presenta a continuación para añadir un nuevo elemento al inventario actual de la petroquímica.</p>
                        <form method="POST" action="${pageContext.request.contextPath}/new">
                            <div class="row uniform">
                                <div class="12u$">
                                    <label for="demo-name">Tipo</label>
                                    <input type="text" name="type" id="type" value="" />
                                </div>
                                <div class="12u$">
                                    <label for="demo-email">Cantidad</label>
                                    <input type="email" name="quantity" id="quantity" value="" />
                                </div>
                                <div class="12u$">
                                    <label for="demo-email">Ubicación</label>
                                    <input type="text" name="location" id="location" value="" />
                                </div>
                                <div class="12u$">
                                    <ul class="actions">
                                        <li><input type="submit" value="Agregar" class="special" /></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
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