<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>


<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Fonts -->
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">

<link rel="stylesheet" href="css/style.css">

<link rel="icon" href="Favicon.png">

<!-- Bootstrap CSS 
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	-->
	
	<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
	
	

<title>Login</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
		<div class="container">
		<h1 style="color:#C428C0;text-align:center;">Log In</h1>
		
		<!-- 
			<a class="navbar-brand">Log In</a>
			
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
 -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="sign-up">Register</a></li>
					<li class="nav-item"><a class="nav-link active" href="/">Home</a></li>
					
				</ul>

			</div>
		</div>
	</nav>

	<main class="login-form">
		<div class="cotainer">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="card">
					
						<div class="card-header1"></div>
				
						<div class="card-body">
						
							<form:form action="login" modelAttribute="customer" method="post"> 
								<div class="form-group row">
									<label for="inputEmail4"
										class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
									<div class="col-md-6">
										<form:input path="email" type="email" id="inputEmail4" class="form-control" required="true"/>
									</div>
								</div>

								<div class="form-group row">
									<label for="inputPassword4"
										class="col-md-4 col-form-label text-md-right">Password</label>
									<div class="col-md-6">
										<form:input path="password" type="password" id="inputPassword4" class="form-control" required="true"/>
									</div>
								</div>

<!-- Add check box for []buying  []selling with script: buying adds to CustomerRepository, selling adds to SellerRepository-->

								<div class="col-md-6 offset-md-4">
									<!-- <a href="home" class="btn btn-primary" >Login</a>  -->
									<button type="submit" class="btn btn-primary">Login</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>