<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%AdminUser adminUser = new AdminUser();
	adminUser = (AdminUser)request.getSession().getAttribute("adminUser");
%>

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

<div class="nav-side-menu">
    <div class="brand"><font style="color:olive;">SMART CABS</font></div>
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
                
                 <li  data-toggle="collapse" data-target="#VehicleAllocation" class="collapsed active">
                  <a href="#"><i class="fa fa-car fa-lg"></i> Vehicle Allocation<span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="VehicleAllocation">
                   <li><a href="/bookstore/vehicleAllocation/vehicleAllocation">Allocate Hire</a></li>
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


<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">HELLO <%=adminUser.getUserName().toUpperCase()%> </h4>
				<br>
				<button type="button" class="btn btn-default">EDIT PROFILE</button>
				<a href="/bookstore/admin/logout" class="btn btn-default"
					role="button">LOGOUT</a>
			</div>
			<div class="modal-body">
				<p>Some text in the modal.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
</div>