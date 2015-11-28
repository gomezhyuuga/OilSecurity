<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Solid State by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Petromex</title>
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

				<!-- Banner -->
					<section id="banner">
						<div class="inner">
							<div class="logo"><span class="icon fa-diamond"></span></div>
							<h2>Bienvenido a Petromex</h2>
							<p>Petromex, también conocida como Petromex, es una empresa dedicada a la extracción y manejo del petróleo dentro de la República Mexicana. Nuestro objetivo es que el petróleo sea utilizado de la mejor manera posible al mejor precio.</a></p>
						</div>
					</section>

				<!-- Wrapper -->
					<section id="wrapper">

						<!-- One -->
							<section id="one" class="wrapper spotlight style1">
								<div class="inner">
									<a href="#" class="image"><img src="images/pic01.jpg" alt="" /></a>
									<div class="content">
										<h2 class="major">Proveedores</h2>
									  <p>Contamos con el apoyo de los proveedores más confiables en el país.</p>
										<a href="proveedores.html" class="special">Más información</a>
									</div>
								</div>
							</section>

						<!-- Two -->
							<section id="two" class="wrapper alt spotlight style2">
								<div class="inner">
									<a href="#" class="image"><img src="images/pic02.jpg" alt="" /></a>
									<div class="content">
										<h2 class="major">Responsabilidad</h2>
										<p> Dentro de la empresa, estamos comprometidos con la salud de todos y el cuidado de nuestro medio ambiente. Es por esto que hemos establecido una reglamentación estricta para el manejo de todas las substancias químicas.</p>
										<a href="responsabilidad.html" class="special">Más información</a>
									</div>
								</div>
							</section>
					</section>

				<!-- Footer -->
					<section id="footer">
						<div class="inner">
							<h2 class="major">Comentarios</h2>
							<p>¡Que tu opinión sea escuchada!</p>
							<form method="post" action="#">
								<div class="field">
									<label for="name">Nombre</label>
									<input type="text" name="name" id="name" />
								</div>
								<div class="field">
									<label for="name">Apellido</label>
									<input type="text" name="lastn" id="lastn" />
								</div>
								<div class="field">
									<label for="email">Email</label>
									<input type="email" name="email" id="email" />
								</div>
								<div class="field">
									<label for="message">Comentario</label>
									<textarea name="message" id="message" rows="4"></textarea>
								</div>
								<ul class="actions">
									<li><input type="submit" value="Enviar" /></li>
								</ul>
							</form>
							<ul class="contact">
								<li class="fa-home">
									Petromex <br />
									1234 Somewhere in México<br />
									Estado de México
								</li>
								<li class="fa-phone"> 01-800 PETROMEX</li>
								<li class="fa-envelope"><a href="#">help@petromex.com</a></li>
								<!--
								<li class="fa-twitter"><a href="#">twitter.com/untitled-tld</a></li>
								<li class="fa-facebook"><a href="#">facebook.com/untitled-tld</a></li>
								<li class="fa-instagram"><a href="#">instagram.com/untitled-tld</a></li>
							-->
							</ul>
							<ul class="copyright">
								<li>&copy; Petromex Inc. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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
