<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<spring:url value="/web-resources/css/font-awesome-4.0.3/css/wellcome.css" var="wellcomeCss" />
<link href="${wellcomeCss}" rel="stylesheet" />
<spring:url value="/web-resources/css/font-awesome-4.0.3/css/main.css" var="mainCss" />
<spring:url value="/web-resources/css/pure-0.4.2.css" var="customCss" />
<spring:url value="/web-resources/css/font-awesome-4.0.3/css/w3.css" var="w3Css" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link href="${mainCss}" rel="stylesheet" />
<link href="${customCss}" rel="stylesheet" />
<link href="${w3Css}" rel="stylesheet" />
</head>

<body>
 <div class="container">
	<header>

		<h1>SMART CABS</h1>
		<ul>
			<li><a href="/bookstore/">Home</a></li>
			<li><a href="/aboutus/">About</a></li>
			<li><a href="/bookstore/booking/booking">Book Now</a></li>
			<li><a href="/contactus/">Contact</a></li>
			<li><a href="/bookstore/person/logout">logout</a></li>
		</ul>
<!-- 		<ul>
			<li><a href="/bookstore/person/logout">logout</a></li>
		</ul> -->
	</header>
	<div class="well left center">
		
			<img
			src="/bookstore/web-resources/css/font-awesome-4.0.3/css/taxi-2.jpg"
			width="1300px" height="20px" class="img-responsive"
			alt="Banner Image" />

		<br><br>
		<c:url var="actionUrl" value="save" />
		 <h4>Booking Form</h4>
		<div class="row">

		 <form:form id="bookingForm" modelAttribute="booking" method="post"
			action="${actionUrl }" class="pure-form pure-form-aligned">

			<fieldset>
				<c:if test="${msg ne null && status eq -1 }">
					<div class="alert alert-danger">
						${msg}
					</div>
				</c:if>
				<c:if test="${msg ne null && status eq 0 }">
					<div class="alert alert-info">
						${msg}
					</div>
				</c:if>
				

				<div class="form-group col-xs-6">
					<label for="customerName">Name</label>
					<form:input name="customerName" path="customerName"
						placeholder="Name" class="form-control"/>
				</div>
				<div class="form-group col-xs-6">
					<label for="telephonenumber">Phone Number</label>
					<form:input path="telephonenumber" placeholder="Phone Number" maxlength="10" class="form-control" />
				</div>

				<div class="form-group col-xs-6">
				<label for="telephonenumber">Address (Hire Starting Location)</label>
					<form:input path="streetAdress" placeholder="Street Adress" class="form-control" />
				</div>
				
				<div class="form-group col-xs-6">
				<label for="adressLineTwo">Address Line</label>
					<form:input path="adressLineTwo" placeholder="Address Line " class="form-control" />
				</div>
				<div class="form-group col-xs-6">
				<label for="city">City</label>
					<form:input path="city" placeholder="City" class="form-control"/>
				</div>
				
				 <div class="form-group col-xs-6">
					<label for="destination">Hire Ends Location</label>
					<form:input path="destination" placeholder="Hire Ends Location" class="form-control" />
				</div>

               <div class="form-group col-xs-6">
					<label for="dateFrom">Date From</label>
					<form:input type="date" path="dateFrom" class="form-control" />
				</div>
				<%-- <div class="pure-control-group">
					<label for="dateTo">confirm email</label>
					<form:input type="date" path="dateTo"/>
				</div> --%>
				
				<div class="form-group col-xs-6">
					<label for="time">Time</label>
					<form:input type="time" path="time" class="form-control"  />
				</div>
				<div class="form-group col-xs-6">
					<label for="vehicalType">Vehicle Type</label>
					<form:select  path="vehicalType" class="form-control" />
				</div>
				<div class="form-group col-xs-6">
					<label for="ComfortableType">Comfortable Type</label>
					<form:select  path="ComfortableType"  class="form-control" />
				</div>
				<div class="form-group col-xs-6">
					<label for="email">Email</label>
					<form:input type = "email"  path="email"  class="form-control" />
				</div>

				<form:input path="id" type="hidden" />
				<div class="form-group col-xs-6">
					<%-- <form:input class="btn btn-default" path="" type="submit"
						value="Submit" /> --%>
				</div>
				
				<div class="form-group col-xs-6">
				<br>
					 <form:input class="btn btn-default" path="" type="submit"
						value="Submit" /> 
				</div>


			</fieldset>
		</form:form> 
		</div>
	</div>
	</div>
	<footer> Copyright © Smart Cabs Pvt Ltd </footer>

</body>
</html>