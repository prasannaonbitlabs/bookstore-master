<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<spring:url
	value="/web-resources/css/font-awesome-4.0.3/css/dashboard.css"
	var="dashboardCss" />
<spring:url value="/web-resources/css/font-awesome-4.0.3/css/login.css"
	var="login" />

<link href="${dashboardCss}" rel="stylesheet" />
<link href="${login}" rel="stylesheet" />

</head>

<c:url var="actionUrl" value="adminlogin" />
<div class="container">
	<div class="row">
		<div class="col-sm-6 col-md-4 col-md-offset-4">
			<h1 class="text-center login-title">Sign in to continue to
				Smart Cabs Management System</h1>
			<div class="account-wall">
				<img class="profile-img"
					src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
					alt="">
					<c:if test="${msg ne null && stat eq -1 }">
							<div class="alert alert-danger">${msg}</div>
					</c:if>
					<c:if test="${msg ne null && stat eq 0 }">
							<div class="alert alert-info">${msg}</div>
					</c:if>

				<form:form id="logginForm" modelAttribute="adminUser" method="post"
					action="${actionUrl}" class="form-signin">

					<form:input class="form-control" path="userName" placeholder="User Name" />

					<form:password class="form-control" path="password"  placeholder="password" />

					<button class="btn btn-lg btn-primary btn-block" type="submit">
						Sign in</button>

					<label class="checkbox pull-left"> <input type="checkbox"
						value="remember-me"> Remember me
					</label>

					<a href="#" class="pull-right need-help">Need help? </a>
					<span class="clearfix"></span>
				</form:form>
			</div>
			<a href="#" class="text-center new-account">Create an account </a>
		</div>
	</div>
</div>