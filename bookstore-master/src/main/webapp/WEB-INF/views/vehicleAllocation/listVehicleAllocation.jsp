
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="nav-bar">
	<div class="nav-bar-contain">
		<div class="row">
			<br>
			<div class="form-group col-xs-10">Allocated  List</div>
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
		<!-- <div class="form-group col-xs-6">
			<form:form method="GET" action="/bookstore/booking/adminBooking">
				<input class="btn btn-primary" value=" new booking" type="submit">
			</form:form>
		</div> -->
	</div>
		<br>

		<table class="table table-striped">
			<thead>
				<tr>
					<th width="4%">S.N</th>
					<th width="12%">Booking ID</th>
					<th width="12%">Date from</th>
					<th width="12%">Date to</th>
					<th width="12%">Start location</th>
					<th width="12%">Destination</th>
					<th width="12%">Vehicle Type</th>
					<th width="7%">Comfortable Type</th>
					<th width="12%">Status</th>
					<th width="12%">Vehicle Reg:No</th>
					<th width="12%">Driver Name</th>

					<th width="12%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${vehicleAllocationList}" var="vehicleAllocation"
					varStatus="loopCounter">
					<tr>
						<td><c:out value="${loopCounter.count}" /></td>
						<td><c:out value="${vehicleAllocation.bookingId}" /></td>
						<td><c:out value="${vehicleAllocation.fromDate}" /></td>
						<td><c:out value="${vehicleAllocation.toDate}" /></td>
						<td><c:out value="${vehicleAllocation.startFrom}" /></td>
						<td><c:out value="${vehicleAllocation.destination}" /></td>
						<td><c:out value="${vehicleAllocation.vehicletype}" /></td>
						<td><c:out value="${vehicleAllocation.comfortableType}" /></td>
						<td><c:out value="${vehicleAllocation.status}" /></td>
						<td><c:out value="${vehicleAllocation.vehicleRegNumber}" /></td>
						<td><c:out value="${vehicleAllocation.driverName}" /></td>

						<td><nobr>
								<a class="btn btn-primary"
									href="/bookstore/booking/get/${vehicleAllocation.id}"> <i
									></i>Close hire
								</a> <a class="btn btn-primary"
									onclick="return confirm('Are you sure you want to delete this booking?');"
									href="/bookstore/booking/delete/${vehicleAllocation.id}"> <i
									class="fa fa-times"></i>Cancel
								</a>

							</nobr></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>