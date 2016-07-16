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
			<li><a href="/bookstore/booking/booking">Book now</a></li>
			<li><a href="contact.asp">Contact</a></li>
			<li><a href="about.asp">About2</a></li>
		</ul>
	</header>
	<br>
	<div class="well left">
		<c:url var="actionUrl" value="save" />

		<form:form id="vehicleForm"  method="post" enctype="multipart/form-data"
			action="${actionUrl }" class="pure-form pure-form-aligned">

			<fieldset>
				<c:if test="${massage ne null}">
					<div class="alert alert-danger">
						${massage}
					</div>
				</c:if>

				<div class="pure-control-group">
					<label for="regNumber">Reg Number</label>
					<input  name="regNumber" placeholder="Reg Number" />
				</div>
				<div class="pure-control-group">
					<label for="chassieNumber">Chassis Number</label>
					<input  name="chassieNumber" placeholder="Chassis Number" maxlength="15" />
				</div>
				<div class="pure-control-group">
					<label for="enginNumger">Engine Number</label>
					<input name="enginNumger" placeholder="Engine Number" maxlength="10" />
				</div>
				<div class="pure-control-group">
					<label for="modle">Model</label>
					<input name="modle" placeholder="Model" />
				</div>
				<div class="pure-control-group">
					<label for="fuelType">Fuel Type</label>
					<input name="fuelType" placeholder="Fuel Type" />
				</div>
				<div class="pure-control-group">
					<label >Compatible type</label>
					
					<input type="radio" name="acVehicle" value="y"/> AC
					<input type="radio" name="acVehicle" value="n"/> Non AC
				</div> 
				<div class="pure-control-group">
					<label for="seats">Seats</label>
					<input  name="seats" placeholder="Seats" />
				</div>
				<div class="pure-control-group">
					<label for="File to upload">File to upload</label>
					<input type="file" name='file'/>
					<label for="Name">Name</label>
					<input name='fileName'/>
				</div> 


				<input name="id" type="hidden" />
				<input type="submit" value="Register" />

			</fieldset>
		</form:form>
	</div>
	<footer> Copyright © W3Schools.com </footer>

</body>
</html>