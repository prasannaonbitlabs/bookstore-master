<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="nav-bar">
	<div class="nav-bar-contain">
		<div class="row">
			<br>
			<div class="form-group col-xs-10">Driver Register</div>
			<div class="form-group col-xs-2">
				<input type="image" src="http://localhost:8080/bookstore/web-resources/css/images/profile.jpg"
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
		<input class="btn btn-primary" value="Driver List"  type="submit">
</form:form>
<br>
</div>
</div>
<div class="well left center">
	<div class="well-2 left">
		<h4>Driver Registration Form</h4>
		<div class="row">

			<br>
			<c:url var="actionUrl" value="save" />

			<br>
			<form:form id="vehicleForm" modelAttribute="driver" method="post"
				enctype="multipart/form-data" action="http://localhost:8080/bookstore/driver/save"
				class="pure-form pure-form-aligned">

				<fieldset>
					<c:if test="${massage ne null}">
						<div class="alert alert-danger">${massage}</div>
					</c:if>

					<div class="form-group col-xs-6">
						<label for="regNumber">First Name</label> 
						<form:input 
							placeholder="First Name" required="required" path="firstName" class="form-control" />
					</div>
					<div class="form-group col-xs-6">
						<label for="Last Name">Last Name</label> <form:input
							path="lastName" required="required" placeholder="Last Name" 
							class="form-control" />
					</div>
					<div class="form-group col-xs-6">
						<label for="joinDate">Join Date</label> <form:input
							 path="joinDate" required="required" placeholder="Join Date"  type="date"
							class="form-control" />
					</div>
					<div class="form-group col-xs-6">
						<label for="modle">Nic</label> <form:input 
							placeholder="Nic" required="required" path="nic"  class="form-control" />
					</div>
					<div class="form-group col-xs-6">
						<label for="address">Address</label> <form:input 
							placeholder="Address" required="required" path="address" class="form-control" />
					</div>
					<div class="form-group col-xs-6">
						<label for="mobile">Mobile(format: xxx-xxxxxxx)</label> <form:input 
							placeholder="Mobile" maxlength="11" pattern="^\d{3}-\d{7}$" required="required"  type="text"
							path="mobile" class="form-control" />
					</div>

					<div class="form-group col-xs-6">
						<form:input path="id" type="hidden" />
						 <input type="submit" value="Register" class="btn btn-primary" />
					</div>
				</fieldset>
			</form:form>
		</div>
	</div>
	</div>
	</div>