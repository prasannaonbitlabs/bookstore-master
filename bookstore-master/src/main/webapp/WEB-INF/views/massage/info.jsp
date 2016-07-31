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
	<div class="well left center">
		<img
			src="/bookstore/web-resources/css/font-awesome-4.0.3/css/taxi-2.jpg"
			width="1300px" height="20px" class="img-responsive"
			alt="Banner Image" />
	</div>
	<div class="well left center">
		<div class="well-2 left">
			   <h4><c:if test="${massageHeader ne null}">
						<div>
							${massageHeader}
						</div>
					</c:if>
			   </h4>
					<c:if test="${massage ne null}">
						<div class="alert alert-info">
							${massage}
						</div>
					</c:if>
				</div>
			</div>
	   	</div>
	<footer> Copyright © Smart Cabs (Pvt) Ltd. </footer>

</body>
</html>