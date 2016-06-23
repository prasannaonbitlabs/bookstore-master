<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<spring:url value="/web-resources/css/font-awesome-4.0.3/css/main.css" var="mainCss" />
	<link href="${mainCss}" rel="stylesheet" />
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
  <li><a href="default.asp">Home</a></li>
  <li><a href="news.asp">News</a></li>
  <li><a href="contact.asp">Contact</a></li>
  <li><a href="about.asp">About2</a></li>
</ul>
</header>

<form:form method="POST" action="/bookstore/person/register">
   <div class="pure-control-group">
			<input type="submit" value="Submit" />
   </div>
</form:form>

<footer>
Copyright © W3Schools.com
</footer>

</body>
</html>