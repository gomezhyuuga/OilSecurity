<%--
Document   : login
Created on : Oct 23, 2015, 10:49:44 AM
Author     : gomezhyuuga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>member Login</title>

		<!-- Bootstrap -->
		<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
	</head>

	<body style="background: #eee;">
		<div class="container">
			<p><br/></p>
			
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="page-header">
							<h3>Login Area</small></h3>
							</div>
							<form role="form">
									<div class="form-group">
												<label for="exampleInputEmail1">Email</label>
												<div class="input-group input-group-lg">
														<span class="input-group-addon" id="sizing-addon1"><span class="glyphicon glyphicon-user"></span></span>
														<input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon1">
												</div>

									</div>
									<div class="form-group">
												<label for="exampleInputPassword1">Password</label>
												<div class="input-group input-group-lg">
														<span class="input-group-addon" id="sizing-addon1"><span class="glyphicon glyphicon-star"></span></span>
														<input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon1">
												</div>
									
									</div>
									<hr/>
									<button type="button" class="btn btn-success"><span class="glyphicon glyphicon-arrow-left"></span>Back</button>
									<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock"></span>Login</button>
									<p><br/></p>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</body>
</html>
