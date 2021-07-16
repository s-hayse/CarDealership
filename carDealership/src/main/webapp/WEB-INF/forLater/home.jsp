<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>Home</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.4/examples/cover/">

<!-- Bootstrap core CSS -->
<link
	href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


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
					<a class="nav-link active" href="/">Home</a>
					<a class="nav-link" href="logout">Logout</a> 
					<a class="nav-link"	href="inventory">Dealer Inventory</a> 
					<a class="nav-link"	href="reviews">Expert Reviews</a>
					<!-- 
					<a class="nav-link" href="customers">View Customers</a>
					 -->
				</nav>
			</div>
		</header>

		<main role="main" class="inner cover">
			<h1 class="cover-heading">Welcome, ${customer.getFirstName()} ${customer.getLastName()}. </h1>
			<p class="lead">That you for choosing Sally's Shuttle Shoppe!</p>
			<p class= "lead"><b>Where to boss?</b></p>
			<p class="lead">
			<a href="inventory" class="btn btn-lg btn-secondary">Show me the merch!</a>
			<a href="reviews" class="btn btn-lg btn-secondary">What are people saying?</a>
			<a href="/" class="btn btn-lg btn-secondary">Take me home, country road</a>
			
			<!--	<a href="#" class="btn btn-lg btn-secondary">Learn more</a>  -->
			</p>
			<p class="lead">
			<a href="logout" class="btn btn-lg btn-secondary">Get me outta here!</a>
			<a href="profile" class="btn btn-lg btn-secondary">Show me... ME</a>
		</main>

		<footer class="mastfoot mt-auto">
			<div class="inner">
			<!-- 
				<p>
					Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
					by <a href="https://twitter.com/mdo">@mdo</a>.
				</p>
				 -->
			</div>
		</footer>
	</div>

</body>

</html>