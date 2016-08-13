<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
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

		<!-- <nav class="navbar navbar-default">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Reference Data <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/bookstore/vehicle/vehicleRegister">Vehicle Registration</a></li>
							<li><a href="/bookstore/driver/register">Driver Registration</a></li>
							<li><a href="/bookstore/person/listPerson">Customer</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Reservation<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/bookstore/booking/adminBooking">Vehicle Reservation</a></li>
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
		</nav> -->
		
		
		

<div class="nav-side-menu">
    <div class="brand">Brand Logo</div>
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
  
        <div class="menu-list">
  
            <ul id="menu-content" class="menu-content collapse out">
                <li>
                  <a href="#">
                  <i class="fa fa-dashboard fa-lg"></i> Dashboard
                  </a>
                </li>

                <li  data-toggle="collapse" data-target="#ReferenceData" class="collapsed active">
                  <a href="#"><i class="fa fa-th fa-lg"></i> Reference Data <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="ReferenceData">
                    <li><a href="/bookstore/vehicle/vehicleRegister">Vehicle Registration</a></li>
					<li><a href="/bookstore/driver/register">Driver Registration</a></li>
					<li><a href="/bookstore/person/listPerson">Customer</a></li>
                </ul>
                
                <li  data-toggle="collapse" data-target="#Reservation" class="collapsed active">
                  <a href="#"><i class="fa fa-suitcase fa-lg"></i> Reservation<span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="Reservation">
                    <li><a href="/bookstore/booking/adminBooking">Vehicle Reservation</a></li>
					<li><a href="#">Reservation Confirmation</a></li>
                </ul>
                
                 <li  data-toggle="collapse" data-target="#vehicleAllocation" class="collapsed active">
                  <a href="#"><i class="fa fa-car fa-lg"></i> Vehicle Allocation<span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="vehicleAllocation">
                   <li><a href="#">Allocate Hire</a></li>
				   <li><a href="#">Close Hire</a></li>
					<li><a href="#">Vehicle Attendance</a></li>
				   <li><a href="#">Driver Attendance</a></li>
                </ul>
                
                <li  data-toggle="collapse" data-target="#financeManagement" class="collapsed active">
                  <a href="#"><i class="fa fa-money fa-lg"></i> Finance Management<span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="financeManagement">
                  <li><a href="#">Income</a></li>
				  <li><a href="#">Expenses</a></li>
                </ul>
                
                <li  data-toggle="collapse" data-target="#Reports" class="collapsed active">
                  <a href="#"><i class="fa fa-th-list fa-lg"></i> Reports<span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="Reports">
                  <li><a href="#">Income Reports</a></li>
				  <li><a href="#">Expenses Reports</a></li>
                </ul>
                
                <li  data-toggle="collapse" data-target="#userManagement" class="collapsed active">
                  <a href="#"><i class="fa fa-user fa-lg"></i> User Management<span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="userManagement">
                  <li><a href="#">User Account</a></li>
				  <li><a href="#">Change Password</a></li>
				  <li><a href="#">Create User Role</a></li>
                </ul>

            </ul>
     </div>
</div>