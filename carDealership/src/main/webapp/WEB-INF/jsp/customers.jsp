<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>Employee Portal</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.4/examples/cover/">

<!-- Bootstrap core CSS 
<link href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
		
			<div class="inner">
				<h3 class="masthead-brand">Employee Maintenance</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="/">Home</a> <a
						class="nav-link active" href="inventory">Inventory</a> <a
						class="nav-link active" href="empProfile">My Profile</a> <a
						class="nav-link active" href="logout">Logout</a>
				</nav>
			</div>
		

		<main role="main" class="inner cover">
			<h1 class="cover-heading">Customers</h1>

		</main>
		<div>

			<c:set var="customers" scope="session" />
			<c:choose>
				<c:when test="${customers != null}">

					<table
						class="table table-dark table-striped table-hover caption-top">
						<caption>List of customers</caption>

						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">First</th>
								<th scope="col">Last</th>
							</tr>
						</thead>

						<tbody>

							<c:forEach var="customer" items="${customer}">
								<tr>
									<td>${customers.indexOf(customers)}</td>
									<td>${customer.getFirstName()}</td>
									<td>${customer.getLastName()}</td>

								</tr>
							</c:forEach>

						</tbody>


					</table>

				</c:when>

				<c:otherwise>
					<h3>No Users found</h3>
				</c:otherwise>

			</c:choose>

		</div>

		<footer class="mastfoot mt-auto">
			<div class="inner">
				<p>
					Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
					by <a href="https://twitter.com/mdo">@mdo</a>.
				</p>
			</div>
		</footer>
		
	</div>