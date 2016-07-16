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
			<li><a href="/bookstore/admin">Home</a></li>
			<li><a href="/bookstore/booking/booking">Book now</a></li>
			<li><a href="contact.asp">Contact</a></li>
			<li><a href="about.asp">About2</a></li>
		</ul>
	</header>
	<br>
	<div class="well left">
		<c:url var="actionUrl" value="save" />

		<form:form id="personForm" modelAttribute="person" method="post"
			action="${actionUrl }" class="pure-form pure-form-aligned">

			<fieldset>
				<c:if test="${massage ne null}">
					<div class="alert alert-danger">
						${massage}
					</div>
				</c:if>
				

				<div class="pure-control-group">
					<label for="firstName">Fist Name</label>
					<form:input name="personId" path="firstName"
						placeholder="First Name" />
				</div>
				<div class="pure-control-group">
					<label for="LastName">Last Name</label>
					<form:input name="lastName" id="lastName" path="lastName"
						placeholder="Last Name" maxlength="15" />
				</div>
				<div class="pure-control-group">
					<label for="city">City</label>
					<form:input path="city" placeholder="City" maxlength="10" />
				</div>
				<div class="pure-control-group">
					<label for="adress">Adress</label>
					<form:input path="adress" placeholder="Adress" />
				</div>
				<div class="pure-control-group">
					<label for="age">Age</label>
					<form:input path="age" placeholder="Age" />
				</div>
				<div class="pure-control-group">
					<label for="password">password</label>
					<form:password path="password" placeholder="password" />
				</div>
				<div class="pure-control-group">
					<label for="confirmpassword">confirm password</label>
					<form:password path="confirmpassword" placeholder="confirm password" />
				</div>

               <div class="pure-control-group">
					<label for="email">email</label>
					<input type="email" path="email" placeholder="email" autocomplete="off" />
				</div>
				<div class="pure-control-group">
					<label for="confirmemail">confirm email</label>
					<input type="email" path="confirmemail" placeholder="confirm email" autocomplete="off" />
				</div>


				<form:input path="id" type="hidden" />
				<input type="submit" value="Register" />


			</fieldset>
		</form:form>
	</div>
	<footer> Copyright © W3Schools.com </footer>

</body>
</html>