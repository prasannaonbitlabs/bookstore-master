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

<link href="${mainCss}" rel="stylesheet" />
<link href="${customCss}" rel="stylesheet" />
<link href="${w3Css}" rel="stylesheet" />
</head>


<body>
   <div class="container">
	<header >
<%-- 		  <% 
   AdminUser adminUser = new AdminUser();
   adminUser = (AdminUser)request.getSession().getAttribute("adminUser");
   adminUser.getUserName();
   System.out.print("adminUser.getUserName() " + adminUser.getUserName());
   out.print("<h6>well come " + adminUser.getUserName()+" </h6>");
   %>  --%>

		<h1>SMART CABS</h1>
		<ul>
			<li><a href="/bookstore/">Home</a></li>
			<li><a href="/aboutus/">About</a></li>
			<li><a href="/booking/">Book Now</a></li>
			<li><a href="/contactus/">Contact</a></li>
		</ul>
		
	</header>

	<!-- <div class="blended_grid"> -->


	<div class="well left center">
		<img
			src="/bookstore/web-resources/css/font-awesome-4.0.3/css/taxi-2.jpg"
			width="1300px" height="20px" class="img-responsive"
			alt="Banner Image" />
	</div>
	<div class="well left center">
		<div class="well-2 left">
			   <h4>Login Form</h4>
				<div class="row">
				 
				 <br>
					<form:form method="POST" modelAttribute="person"
						action="/bookstore/person/personlogin">
						<c:if test="${msg ne null && status eq -1 }">
							<div class="alert alert-danger">${msg}</div>
						</c:if>
						<c:if test="${msg ne null && status eq 0 }">
							<div class="alert alert-info">${msg}</div>
						</c:if>
						<div class="form-group col-xs-6">
							<label for="email">Email</label>
							<form:input type="email" required="required" path="email" placeholder="email"
								autocomplete="off" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="password">Password</label>
							<form:password path="password" required="required" placeholder="password"
								class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<form:input class="btn btn-default" path="" type="submit"
								value="Login" />
								<br><br>
						</div>
					</form:form>
				</div>
			</div>
			<div class ="well-2 left">
					<a href="/bookstore/person/register"> Create an account </a><br>
					<a href="/bookstore/">Forgot your username?</a><br>
					<a href="/bookstore/">Forgot your password?</a><br><br>
	      			<h3> Welcome to online booking service of  Smart Cabs (Pvt) Ltd. Please register before you placing a booking.</h3>
	   		</div>
	   	</div>
		
	</div>
	<footer> Copyright © Smart Cabs (Pvt) Ltd. </footer>

</body>
</html>