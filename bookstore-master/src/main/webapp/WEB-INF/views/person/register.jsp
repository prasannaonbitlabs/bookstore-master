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
		src='<c:url value="/web-resources/js/person/person.js"/>'></script>

<link href="${mainCss}" rel="stylesheet" />
<link href="${customCss}" rel="stylesheet" />
<link href="${w3Css}" rel="stylesheet" />
</head>


<body>
   <div class="container">
	<header >
		<%--  <% 
   AdminUser adminUser = new AdminUser();
   adminUser = (AdminUser)request.getSession().getAttribute("adminUser");
   adminUser.getUserName();
   System.out.print("adminUser.getUserName() " + adminUser.getUserName());
   out.print("<h6>well come " + adminUser.getUserName()+" </h6>");
   %> --%>

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
			   <h4>Registration Form</h4>
				<div class="row">
				 
				 <br>
					<c:url var="actionUrl" value="save" />

		<form:form id="personForm" method="post"
			action="${actionUrl }" class="pure-form pure-form-aligned">

			<fieldset>
				<c:if test="${massage ne null}">
					<div  class="alert alert-danger">
						${massage}
					</div>
				</c:if>
				<div id="display" class="alert alert-danger">
						
				</div>
				

				<div class="form-group col-xs-6">
					<label for="firstName">Fist Name</label>
					<input type="text" required="required" name="firstName" 
						placeholder="First Name" class="form-control" />
				</div>
				<div class="form-group col-xs-6">
					<label for="LastName">Last Name</label>
					<input type="text" required="required" name="lastName" id="lastName"
						placeholder="Last Name" maxlength="15" class="form-control" />
				</div>
				<div class="form-group col-xs-6">
					<label for="city">City</label>
					<input type="text" required="required"name="city" placeholder="City" maxlength="10"  class="form-control"/>
				</div>
				<div class="form-group col-xs-6">
					<label for="address">Address</label>
					<input type="text" required="required" name="address" placeholder="Address" class="form-control" />
				</div>
				<div class="form-group col-xs-6">
					<label for="age">Age</label>
					<input type="number" required="required" id="age"  name="age" placeholder="Age" class="form-control"/>
				</div>
				<div class="form-group col-xs-6">
					<label for="password">password</label>
					<input type="password" required="required" id ="password" name="password" placeholder="password" class="form-control" />
				</div>
				<div class="form-group col-xs-6">
					<label for="confirmpassword">confirm password</label>
					<input type="password" required="required" id ="confirmpassword" name="confirmpassword" placeholder="confirm password"  class="form-control"/>
				</div>

               <div class="form-group col-xs-6">
					<label for="email">email</label>
					<input type="email" name="email" id ="email"  required="required" placeholder="email" autocomplete="off" class="form-control" />
				</div>
				<div class="form-group col-xs-6">
					<label for="confirmemail">confirm email</label>
					<input type="email" required="required" id ="confirmemail" name="confirmemail"  placeholder="confirm email" autocomplete="off" class="form-control" />
				</div>


				<input type="hidden"  name="id" />
				<div class="form-group col-xs-6">
				<br>
							<input type="button" onclick="validatePerson()" class="btn btn-default" 
								value="Register" />
								<br><br><br><br>
				</div>

			</fieldset>
		</form:form>
				</div>
			</div>
			<div class ="well-2 left">
	      			<h3> Welcome to online booking service of  Smart Cabs (Pvt) Ltd. Please register before you placing a booking.</h3>
	   		</div>
	   	</div>
		
	</div>
	<footer> Copyright © Smart Cabs (Pvt) Ltd. </footer>

</body>
</html>