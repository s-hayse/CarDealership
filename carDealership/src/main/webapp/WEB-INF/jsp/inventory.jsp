<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>Dealer Inventory</title>
<link href="/assets/css/style.css" rel="stylesheet">

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.4/examples/cover/">

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
<link href="cover.css" rel="stylesheet">
</head>



<body class="text-center">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		
			<div class="inner">
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="/">Home</a> <a class="nav-link"
						href="login">Login</a> <a class="nav-link" href="sign-up">Register</a>
					<a class="nav-link" href="reviews">Expert Reviews</a>
				</nav>
			</div>
		


		<main role="main" class="inner cover text-center">

			<h1 class="cover-heading text-center">Cars in stock</h1>
		</main>
	<div>
			<c:set var="vehicles" scope="session" />
			<c:choose>
				<c:when test="${vehicles != null}">

					<table class="table table-dark table-striped table-hover">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Make</th>
								<th scope="col">Model</th>
								<th scope="col">Year</th>
								<th scope="col">Mileage</th>
								<th scope="col">Color</th>
								<th scope="col">VIN</th>
							</tr>
						</thead>

						<tbody>

							<c:forEach var="vehicle" items="${vehicle}">
								<tr>
									<td>${vehicles.indexOf(vehicles)}</td>
									<td>${vehicle.getMake()}</td>
									<td>${vehicle.getModel()}</td>
									<td>${vehicle.getYear()}</td>
									<td>${vehicle.getMileage()}</td>
									<td>${vehicle.getColor()}</td>
									<td>${vehicle.getVIN()}</td>
									
								
									<td>
									<form action="/details" modelAttribute="vehicle" method="get">
									<input placeholder="View Details">
									<button type="submit" value="vehicle" class="btn-link">View Details</button>
									</form>
									</td>
									
									<!--
									
									<form action="/details" modelAttribute="vehicle" method="get">
									<input placeholder="View Details">
									</form>
									
									<button type="submit" value="vehicle" class="btn-link">View Details</button></form>
									
									<form action ="/details" method ="get">
									<input placeholder="search"/>
							
									
									<td><a href="/details" modelAttribute="vehicle" method="post">View Deets</a><td>
									
									<form:form action="/details" modelAttribute="vehicle" method="post">	
									<td>
								 
									<label for="inputVIN">${vehicle.getVIN()}</label>
									
										<form:input path="VIN" type="text" class="form-control" id="inputVIN"/>
										
										</td>
										
									<td>
									<button type="submit" value="VIN" class="btn-link">View Details</button>
									
									</td>
									</form:form>
									
									
									
									<form action="details" modelAttribute="vehicle" method="post">
									<button type="submit" value="VIN" class="btn-link">View Details</button></form>
									</td>
									
									<td><a href="#" style="color: #fff" >View Details</a></td>  -->
									
								</tr>
							</c:forEach>
						</tbody>

					</table>
				</c:when>

				<c:otherwise>
					<h3>No Vehicles found</h3>
				</c:otherwise>

			</c:choose>
		</div>
</div>
