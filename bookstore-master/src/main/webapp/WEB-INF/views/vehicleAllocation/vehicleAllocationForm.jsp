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
				action="/bookstore/booking/listConfirmBooking">
				<input class="btn btn-primary" value="Confirmed Booking List"
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
				<form:form id="vehicleAllocationForm"
					modelAttribute="vehicleAllocation" method="post"
					action="http://localhost:8080/bookstore/vehicleAllocation/save"
					class="pure-form pure-form-aligned">

					<fieldset>
						<c:if test="${massage ne null}">
							<div class="alert alert-danger">${massage}</div>
						</c:if>
						<div class="form-group col-xs-6">
							<label for="bookingId">BookingId</label>
							<form:input placeholder="Vehicle RegNumber" required="required" path="bookingId"
								 class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="Start from">Start From</label>
							<form:input placeholder="Vehicle RegNumber" required="required" path="startFrom"
								 class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="Start from">Destination</label>
							<form:input required="required" path="destination" 
								class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="Start from">vehicle Type</label>
							<form:input required="required" path="vehicletype" 
								class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="Start from">comfortable Type</label>
							<form:input required="required" path="comfortableType" 
								class="form-control" />
						</div>


						<div class="form-group col-xs-6">
							<label for="vehicleRegNumber">Vehicle RegNumber</label>
							<form:select required="required" path="vehicleRegNumber"
								class="form-control">
								<c:forEach items="${VehicaleRegNumberList}" var="vehicaleRegNumberList"
									varStatus="loopCounter">
									<option value='${vehicaleRegNumberList.regNumber}'>${vehicaleRegNumberList.regNumber}</option>
								</c:forEach>
							</form:select>
						</div>
						<div class="form-group col-xs-6">
							<label for="Driver Name">Driver Name</label>
							<%-- <form:input path="driverName" placeholder="Driver Name"
								class="form-control" /> --%>
								<form:select required="required" path="driverName"
								class="form-control">
								<c:forEach items="${DriversNameList}" var="driversNameList"
									varStatus="loopCounter">
									<option value='${driversNameList.firstName}'>${driversNameList.firstName}</option>
								</c:forEach>
							</form:select>
						</div>
						<div class="form-group col-xs-6">
							<label for="fromDate">From Date</label>
							<form:input required="required" path="fromDate" placeholder="fromDate"
								type="datetime-local" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="toDate">To Date</label>
							<form:input required="required" type="datetime-local" placeholder="To Date"
								path="toDate" class="form-control" />
						</div>
						<form:input path="status" type="hidden" value="allocate" />
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