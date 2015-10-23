<%-- 
    Document   : new
    Created on : Oct 23, 2015, 11:37:00 AM
    Author     : ivandiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">

		<title>Petromex - Agregar Nuevo</title>

		<!-- Bootstrap core CSS -->
		<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">

		<!-- Custom styles for this template -->
		<link href="../css/other.css" rel="stylesheet">
	</head>

	<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="">OilMex</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="#">Acerca de <span class="sr-only">(current)</span></a></li>
				<li><a href="#">Productos y servicios</a></li>
				<li><a href="#">Proveedores</a></li>
				<li><a href="#">Responsabilidad</a></li>
				<li><a href="#">Comentarios</a></li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Buscar dentro de OilMex">
				</div>
				<button type="submit" class="btn btn-default">Buscar</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Admin <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Información</a></li>
						<li><a href="#">Acerca de</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Logout</a></li>
					</ul>
				</li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div>
	</nav>

	<div class="container">
		<div class="blog-header">
			<h1>Agregar nuevo elemento</h1>
		</div>

		<div class="row">
				<div class="col-sm-11 blog-main">
					<div class="blog-post">
						<p>Llene el formulario que se presenta a continuación para añadir un nuevo elemento al inventario actual de la petroquímica.</p>
						<hr>

                        <form method="POST" action="${pageContext.request.contextPath}/new">
							<div class="form-group">
								<label for="exampleInputEmail1">Tipo</label>
                                <input name="type"
                                    type="text" class="form-control" id="exampleInputEmail1" placeholder="Introduzca el nombre la substancia">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Cantidad</label>
								<input
                                    name="quantity"
                                    type="text" class="form-control" id="exampleInputEmail1" placeholder="Introduzca la cantidad a almacenar.">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Ubicación</label>
								<input
                                    name="location"
                                    type="text" class="form-control" id="exampleInputEmail1" placeholder="Introduzca el almacén en el que se guardarán.">
							</div>
							<button type="submit" class="btn btn-primary btn-lg">Agregar</button>
						</form>
					</div><!-- /.blog-post -->

				</div><!-- /.blog-main -->
	</div>

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</body>
</html>