<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<spring:url
	value="/web-resources/css/font-awesome-4.0.3/css/dashboard.css"
	var="dashboardCss" />

<link href="${dashboardCss}" rel="stylesheet" />

</head>
<body>

	<div class="container">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Reference Data <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Vehicle Registration</a></li>
							<li><a href="#">Driver Registration</a></li>
							<li><a href="#">Customer</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Reservation<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Vehicle Reservation</a></li>
							<li><a href="#">Reservation Confirmation</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Vehicle Allocation<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Allocate Hire</a></li>
							<li><a href="#">Close Hire</a></li>
							<li><a href="#">Vehicle Attendance</a></li>
							<li><a href="#">Driver Attendance</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Finance Management<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Income</a></li>
							<li><a href="#">Expenses</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Reports<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Income Reports</a></li>
							<li><a href="#">Expenses Reports</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">User Management<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">User Account</a></li>
							<li><a href="#">Change Password</a></li>
							<li><a href="#">Create User Role</a></li>
						</ul></li>

				</ul>
			</div>
		</nav>