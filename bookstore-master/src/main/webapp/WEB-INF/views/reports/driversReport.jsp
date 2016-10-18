<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/birt.tld" prefix="birt"%>

<div class="nav-bar">
	<div class="nav-bar-contain">
		<div class="row">
			<br>
			<div class="form-group col-xs-10">Drivers Report</div>
			<div class="form-group col-xs-2">
				<input type="image"
					src="http://localhost:8080/bookstore/web-resources/css/images/profile.jpg"
					class="img-circle" alt="Cinque Terre" data-toggle="modal"
					data-target="#myModal" width="35" height="35" alt="Submit">
			</div>
		</div>
	</div>
</div>

<br>
<div class="content">

	<div class="row">
		<div class="form-group col-xs-6">
			<form:form method="GET" action="/bookstore/driver/driverList">
				<input class="btn btn-primary" value="Driver List" type="submit">
			</form:form>
			<br>
		</div>
	</div>
	<%-- <div class="well left center">
		<div class="well-2 left">
			<h4>Driver Registration Form</h4>
			<div class="row">

				<br>
				<c:url var="actionUrl" value="save" />

				<br>
				<form:form id="vehicleForm"  method="post"
				enctype="multipart/form-data" action="http://localhost:8080/bookstore/driver/save"
				class="pure-form pure-form-aligned">

				<fieldset>
					<c:if test="${massage ne null}">
						<div class="alert alert-danger">${massage}</div>
					</c:if>

					<div class="form-group col-xs-6">
						<form:input path="id" type="hidden" />
						 <input type="submit" value="Register" class="btn btn-primary" />
					</div>
				</fieldset>
			</form:form>

				<birt:viewer id="birtViewer" reportDesign="TopNPercent.rptdesign"
					pattern="frameset" height="450" width="700" format="html"
					baseURL="/birt">
				</birt:viewer>
			</div>
		</div>
	</div> --%>

	<birt:viewer id="birtViewer" reportDesign="test.rptdesign"
		pattern="frameset" height="800" width="990" format="html"
		baseURL="http://localhost:8080/bookingReport/frameset?__report=test.rptdesig">
	</birt:viewer>
</div>