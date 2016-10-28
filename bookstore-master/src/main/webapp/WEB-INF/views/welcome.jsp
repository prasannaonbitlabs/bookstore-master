<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<spring:url
	value="/web-resources/css/font-awesome-4.0.3/css/wellcome.css"
	var="wellcomeCss" />
<link href="${wellcomeCss}" rel="stylesheet" />
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
<script type="text/javascript"
	src='<c:url value="/web-resources/js/booking/booking.js"/>'></script>


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
				<li><a href="#">About</a></li>
				<li><a href="/bookstore/booking/booking">Book Now</a></li>
				<li><a href="#">Contact</a></li>
				<li><a href="/bookstore/person/logout">logout</a></li>
			</ul>
		</header>
		<div class="well left center">

			<img
				src="/bookstore/web-resources/css/font-awesome-4.0.3/css/taxi-2.jpg"
				width="1300px" height="20px" class="img-responsive"
				alt="Banner Image" />
			<c:url var="actionUrl" value="save" />
			<!-- <div class="topBanner"> -->
			<div class='container4'>
				<form:form method="POST" action="/bookstore/person/login">
					<input class='btn-5 btn' type="submit" value="BOOK NOW" />

				</form:form>
			</div>
			<!-- </div> -->

		</div>
		<br>
		<br>
		<div class="well left center container4">
			<div class='container4'>
				About Us
				<center>Smart Cabs</center>
				<br> Welcome to the official website of Kangaroo Cabs, the
				pioneer and market leader of the Cab taxi service industry in Sri
				Lanka. If you require a reliable, cost effective and comfortable cab
				taxi service provider in Colombo, then Kangaroo Cabs is your first
				choice among the taxi service providers in the city. We at kangaroo
				Cabs guarantee the provision of exceptional quality of service
				together with the most exclusive rates for Airport Transfers and
				Tour packages within Sri Lanka. You can now instantly book your cabs
				online using our “Quick Booking” tab. Bookings placed will be
				attended to immediately as would be over our hotline. Confirmation
				of your booking will be done via an SMS. For customized packages and
				tours please email us on bookings@2588588.com or call us on
				+94112588588.
			</div>
		</div>

		<div class="well left center container4">
			<div class='container4'>
				<br>
				<br> Contact Us
				<br>
				<br>
				
				 Address:- No:527,Galle Road, 
				 <br>
				 Mount Lavinia Sri
				 <br>
				  Lanka Telephone:- +94 112 733 659
			</div>
		</div>
	</div>
	<footer> Copyright © Smart Cabs Pvt Ltd </footer>

</body>
</html>