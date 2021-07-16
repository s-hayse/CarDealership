<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>Vehicle Details</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.4/examples/cover/">

<!-- Bootstrap core CSS 
<link
	href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
-->

<link href="/assets/css/bootstrap.min.css" rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="cover.css" rel="stylesheet">
</head>


<body class="text-center">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
			<div class="inner">
				<h3 class="masthead-brand">...</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="/">Home</a> <a class="nav-link"
						href="logout">Logout</a> <a class="nav-link" href="inventory">Dealer
						Inventory</a> <a class="nav-link" href="reviews">Expert Reviews</a>
					<!-- 
					<a class="nav-link" href="customers">View Customers</a>
					 -->
				</nav>
			</div>
		</header>

		<main role="main" class="inner cover">
			<p class="lead">
				<a href="buyNow" class="btn btn-lg btn-secondary">Buy Now!</a> <a
					href="bid" class="btn btn-lg btn-secondary">Place a bid</a>
		</main>

		<c:set var="vehicle" scope="session" />
		<main class="login-form">
			<div class="cotainer">
				<div class="row justify-content-center">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header1">${vehicle()}</div>

							<div class="card-body">
								<div class="form-group row">
									<label for="vehicle"
										class="col-md-4 col-form-label text-md-right">${vehicle.toString()}.</label>
								</div>

								<div class="form-group row">
									<label for="vehicle"
										class="col-md-4 col-form-label text-md-right">${vehicle}</label>
								</div>

								<div class="col-md-6 offset-md-4">
									<!-- <a href="home" class="btn btn-primary" >Login</a>  
									<button type="submit" class="btn btn-primary">Login</button>
									-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
</body>
</html>