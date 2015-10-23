<%-- 
    Document   : index
    Created on : Oct 23, 2015, 2:25:15 PM
    Author     : gomezhyuuga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Petromex</title>

		<!-- Bootstrap -->
		<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">


	</head>
	<body style="background: #eee;">
	 
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
	
	<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<div class="container">
					<h1>Bienvenido a OilMex!</h1>
					<p>Oilmex, también conocida como Petromex, es una empresa dedicada a la extracción y manejo del petróleo dentro de la República Mexicana. Nuestro objetivo es que el petróleo sea utilizado de la mejor manera posible al mejor precio.</p>
					<p><a class="btn btn-success btn-lg" href="#" role="button">Conocer más &raquo;</a></p>
				</div>
			</div>

			<div class="container">
				<!-- Example row of columns -->
				<div class="row">
					<div class="col-md-4">
						<h2>Proveedores</h2>
						<p>Contamos con el apoyo de los proveedores más confiables en el país.</p>
						<p><a class="btn btn-primary" href="#" role="button">Más información &raquo;</a></p>
					</div>
					<div class="col-md-4">
						<h2>Responsabilidad</h2>
						<p>Dentro de la empresa, estamos comprometidos con la salud de todos y el cuidado de nuestro medio ambiente. Es por esto que hemos establecido una reglamentación estricta para el manejo de todas las substancias químicas.</p>
						<p><a class="btn btn-primary" href="#" role="button">Conocer Políticas &raquo;</a></p>
				 </div>
					<div class="col-md-4">
						<h2>Opinión</h2>
						<div class="list-group">
							<a href="#" class="list-group-item active">
								<h4 class="list-group-item-heading">Gran Responsabilidad Social!</h4>
								<p class="list-group-item-text">Tuve la oportunidad de conocer las instalaciones de Petromex en Polanco y se ve claramente cómo cumplen lo que indican en cuanto a los cuidados y...</p>
								<br>
								<p>Ver todo &raquo;</p>
							</a>

							<a href="#" class="list-group-item">
								<h4 class="list-group-item-heading">Trato amigable</h4>
								<p class="list-group-item-text">Cuando hubo un incidente con una transacción, acudí a las oficinas del corporativo y la atención fue rápida y amigable. Quiero decir que...</p>
								<br>
								<p>Ver todo &raquo;</p>
							</a>

							<a href="#" class="list-group-item">
								<h4 class="list-group-item-heading">El futuro en el manejo del petróleo</h4>
								<p class="list-group-item-text">Es de las pocas empresas dedicadas a la Química en México que se comprometen con la sociedad y el medio ambiento. Pienso que...</p>
								<br>
								<p>Ver todo &raquo;</p>
							</a>
							</div>
						<p><a class="btn btn-primary" href="#" role="button">Enviar un comentario &raquo;</a></p>
					</div>
				</div>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</body>
</html>