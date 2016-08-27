
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="nav-bar">
	<div class="nav-bar-contain">
		<div class="row">
			<br>
			<div class="form-group col-xs-10">Booking List</div>
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
			<form:form method="GET" action="/bookstore/booking/adminBooking">
				<input class="btn btn-primary" value=" new booking" type="submit">
			</form:form>
		</div>
			</div>
		<br>

		<table class="table table-striped">
			<thead>
				<tr>
					<th width="4%">S.N</th>
					<th width="12%">Customer Name</th>
					<th width="12%">Tel</th>
					<th width="12%">Address</th>
					<th width="12%">Destination</th>
					<th width="12%">Date</th>
					<th width="12%">Vehicle Type</th>
					<th width="7%">Comfortable Type</th>
					<th width="12%">Status</th>

					<th width="12%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${bookingList}" var="booking"
					varStatus="loopCounter">
					<tr>
						<td><c:out value="${loopCounter.count}" /></td>
						<td><c:out value="${booking.customerName}" /></td>
						<td><c:out value="${booking.telephonenumber}" /></td>
						<td><c:out value="${booking.streetAdress}" /></td>
						<td><c:out value="${booking.destination}" /></td>
						<td><c:out value="${booking.dateFrom}" /></td>
						<td><c:out value="${booking.vehicalType}" /></td>
						<td><c:out value="${booking.comfortableType}" /></td>
						<td><c:out value="${booking.status}" /></td>

						<td><nobr>
								<a class="btn btn-primary"
									href="/bookstore/booking/get/${booking.id}"> <i
									></i>Edit
								</a> <a class="btn btn-primary"
									onclick="return confirm('Are you sure you want to delete this booking?');"
									href="/bookstore/booking/delete/${booking.id}"> <i
									class="fa fa-times"></i>Delete
								</a>

							</nobr></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>