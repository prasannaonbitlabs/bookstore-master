<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<spring:url value="/web-resources/css/font-awesome-4.0.3/css/main.css"
	var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<spring:url
	value="/web-resources/css/font-awesome-4.0.3/css/wellcome.css"
	var="wellcomeCss" />
<link href="${wellcomeCss}" rel="stylesheet" />
</head>


<body>
	<header>
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

	<div class="blended_grid">
		<div class="topBanner">
		  <div class='container4'>
				<form:form method="POST" action="/bookstore/person/register">
					<input class ='btn-5 btn' type="submit" value="BOOK NOW" />

				</form:form>
			</div>
		</div>
		<div class="middleBanner"></div>

		<div class="leftBanner">left banner</div>
		<div class="centerBanner">center banner</div>
		<div class="rightBanner">right banner</div>
		<div class="bottomBanner">bottom banner</div>
	</div>


	<footer> Copyright © Smart Cabs Pvt Ltd </footer>

</body>
</html>