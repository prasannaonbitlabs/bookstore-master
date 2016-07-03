<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<spring:url value="/web-resources/css/font-awesome-4.0.3/css/main.css"
	var="mainCss" />
<spring:url value="/web-resources/css/pure-0.4.2.css" var="customCss" />
<spring:url value="/web-resources/css/font-awesome-4.0.3/css/w3.css"
	var="w3Css" />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link href="${mainCss}" rel="stylesheet" />
<link href="${customCss}" rel="stylesheet" />
<link href="${w3Css}" rel="stylesheet" />
</head>

<body>
	<header>

		<h1>SMART CABS</h1>
		<ul>
			<li><a href="/bookstore/">Home</a></li>
			<li><a href="/bookstore/booking/booking">Book Now</a></li>
			<li><a href="/bookstore/vehicle/vehicleRegister">Register Vehicle</a></li>
			<li><a href="about.asp">About2</a></li>
		</ul>
	</header>
	<br>
	<div class="well left">
		<c:url var="actionUrl" value="save" />

		 <form:form id="bookingForm" modelAttribute="booking" method="post"
			action="${actionUrl }" class="pure-form pure-form-aligned">

			<fieldset>
				<c:if test="${massage ne null}">
					<div class="alert alert-danger">
						${massage}
					</div>
				</c:if>
				

				<div class="pure-control-group">
					<label for="customerName">Name</label>
					<form:input name="customerName" path="customerName"
						placeholder="Name" />
				</div>
				<div class="pure-control-group">
					<label for="telephonenumber">Phone Number</label>
					<form:input path="telephonenumber" placeholder="Phone Number" maxlength="10" />
				</div>

				<div class="pure-control-group">
				<label for="telephonenumber">Address (Hire Starting Location)</label>
					<form:input path="streetAdress" placeholder="Street Adress" />
				</div>
				
				<div class="pure-control-group">
				<label for="adressLineTwo">Adress Line</label>
					<form:input path="adressLineTwo" placeholder="Adress Line " />
				</div>
				<div class="pure-control-group">
				<label for="city">City</label>
					<form:input path="city" placeholder="City" />
				</div>
				
				 <div class="pure-control-group">
					<label for="destination">Hire Ends Location</label>
					<form:input path="destination" placeholder="Hire Ends Location" />
				</div>

               <div class="pure-control-group">
					<label for="dateFrom">Date From</label>
					<form:input type="date" path="dateFrom"  />
				</div>
				<%-- <div class="pure-control-group">
					<label for="dateTo">confirm email</label>
					<form:input type="date" path="dateTo"/>
				</div> --%>
				
				<div class="pure-control-group">
					<label for="time">Time</label>
					<form:input type="time" path="time"  />
				</div>
				<div class="pure-control-group">
					<label for="vehicalType">Vehical Type</label>
					<form:select  path="vehicalType"  />
				</div>
				<div class="pure-control-group">
					<label for="ComfortableType">Comfortable Type</label>
					<form:select  path="ComfortableType"  />
				</div>
				<div class="pure-control-group">
					<label for="email">Email</label>
					<form:input type = "email"  path="email"  />
				</div>

				<form:input path="id" type="hidden" />
				<input type="submit" value="Register" /> 


			</fieldset>
		</form:form> 
	</div>
	<footer> Copyright © W3Schools.com </footer>

</body>
</html>