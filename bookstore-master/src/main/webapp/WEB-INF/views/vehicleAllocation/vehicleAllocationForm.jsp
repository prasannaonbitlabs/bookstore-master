<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="nav-bar">
	<div class="nav-bar-contain">
		<br> Vehicle Allocation
	</div>

</div>
<br>
<div class="content">

	<div class="row">
		<div class="form-group col-xs-6">
			<form:form method="GET"
				action="/bookstore/driver/vehicleAllocationList">
				<input class="btn btn-primary" value="Vehicle Allocation List"
					type="submit">
			</form:form>
			<br>
		</div>
	</div>
	<div class="well left center">
		<div class="well-2 left">
			<h4>Vehicle Allocation Form</h4>
			<div class="row">

				<br>
				<c:url var="actionUrl" value="save" />

				<br>
				<form:form id="vehicleAllocationForm" modelAttribute="vehicleAllocation" method="post"
					action="http://localhost:8080/bookstore/vehicleAllocation/save"
					class="pure-form pure-form-aligned">

					<fieldset>
						 <c:if test="${massage ne null}">
							<div class="alert alert-danger">${massage}</div>
						</c:if> 

						 <div class="form-group col-xs-6">
							<label for="vehicleRegNumber">Vehicle RegNumber</label>
							<form:input placeholder="Vehicle RegNumber"
								path="vehicleRegNumber" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="Driver Name">Driver Name</label>
							<form:input path="driverName" placeholder="Driver Name"
								class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="fromDate">From Date</label>
							<form:input path="fromDate" placeholder="fromDate" type="date"
								class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="toDate">To Date</label>
							<form:input type="date" placeholder="To Date" path="toDate"
								class="form-control" />
						</div> 
						<%-- 					<div class="form-group col-xs-6">
						<label for="address">Address</label> <form:input 
							placeholder="Address" path="address" class="form-control" />
					</div>
					<div class="form-group col-xs-6">
						<label for="mobile">Mobile</label> <form:input 
							placeholder="Mobile" path="mobile" class="form-control" />
					</div> --%>

						<div class="form-group col-xs-6">
							<form:input path="id" type="hidden" />
							<input type="submit" value="Submit" class="btn btn-primary" />
						</div>
					</fieldset>
				</form:form>
			</div>
		</div>
	</div>
</div>