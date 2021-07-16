<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>Sign Up</title>

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
				<h3 class="masthead-brand">User Services Registration</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="/">Home</a> 
				  	<a class="nav-link"	href="inventory">Dealer Inventory</a> 
					<a class="nav-link" href="reviews">Expert Reviews</a>
					<a class="nav-link" href="login">Login</a>
				</nav>
			</div>
		</header>

		<main role="main" class="inner cover">
		
			<h2>Sign Up</h2>
			<form:form action="/sign-up" modelAttribute="customer" method="post"> 

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputFirstName">First Name</label>
						<form:input path="firstName" type="text" class="form-control" id="inputFirstName" />
					</div>
					
					<div class="form-group col-md-6">
						<label for="inputLastName">Last Name</label>
						<form:input path="lastName" type="text" class="form-control" id="inputLastName" />
					</div>
				</div>


				<div class="form-row">
						<div class="form-group col-md-6">
						<label for="inputEmail4">Email</label>
						<form:input path="email" type="email" class="form-control" id="inputEmail4" />
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputPassword4">Password</label>
						<form:input path="password" type="password" class="form-control" id="inputPassword4" />
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="inputAddress">Street</label>
					<form:input path="address.streetName" type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" />
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputCity">City</label>
						<form:input path="address.city" type="text" class="form-control" id="inputCity" />
					</div>
					<div class="form-group col-md-4">
						<label for="inputState">State</label>
						<form:select path="address.state" id="inputState" class="form-control">
							<option selected>Choose...</option>
							<option value="AL">AL</option>
							<option value="AK">AK</option><option value="AR">AR</option><option value="AZ">AZ</option><option value="CA">CA</option>
							<option value="CO">CO</option><option value="CT">CT</option><option value="DE">DE</option><option value="FL">FL</option><option value="GA">GA</option>
							<option value="HI">HI</option><option value="ID">ID</option><option value="IL">IL</option><option value="IN">IN</option><option value="IA">IA</option>
							<option value="KS">KS</option><option value="KY">KY</option><option value="LA">LA</option><option value="ME">ME</option><option value="MD">MD</option>
							<option value="MA">MA</option><option value="MI">MI</option><option value="MN">MN</option><option value="MS">MS</option><option value="MO">MO</option>
							<option value="MT">MT</option><option value="NE">NE</option><option value="NV">NV</option><option value="NH">NH</option><option value="NJ">NJ</option>
							<option value="NM">NM</option><option value="NC">NC</option><option value="ND">ND</option><option value="NY">NY</option><option value="OH">OH</option>
							<option value="OK">OK</option><option value="OR">OR</option><option value="PA">PA</option><option value="RI">RI</option><option value="SC">SC</option>
							<option value="SD">SD</option><option value="TN">TN</option>
						</form:select>
					</div>
					<div class="form-group col-md-2">
						<label for="inputZip">Zip code</label>
						<form:input path="address.zipCode" type="text" class="form-control"
							id="inputZip" />
					</div>
				</div>

				<button type="submit" class="btn btn-prmary">Sign up</button>
			<!-- 	<a href="thank-you" class="btn btn-primary" >Sign up</a>   -->

			</form:form>


		</main>

		<footer class="mastfoot mt-auto">
			<div class="inner">
			<!-- 
				<p>Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
					by <a href="https://twitter.com/mdo">@mdo</a>.</p>
					 -->
			</div>
		</footer>
	</div>


</body>

</html>