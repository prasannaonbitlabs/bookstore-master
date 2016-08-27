
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="nav-bar">
	<div class="nav-bar-contain">
		<div class="row">
			<br>
			<div class="form-group col-xs-10">Vehicle List</div>
			<div class="form-group col-xs-2">
				<input type="image" src="../web-resources/css/images/profile.jpg"
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
			<form:form method="GET" action="/bookstore/vehicle/vehicleRegister">
				<input class="btn btn-primary" value=" Add Vehicle +" type="submit">
			</form:form>
		</div>
	</div>
	<br>


	<table class="table table-striped">
		<thead>
			<tr>
				<th width="4%">S.N</th>
				<th width="12%">RegNumber</th>
				<th width="12%">Engine Number</th>
				<th width="12%">Model</th>
				<th width="12%">Fuel Type</th>
				<th width="12%">Ac</th>
				<th width="12%">Seats</th>
				<th width="12%"></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${vehicleList}" var="vehicle"
				varStatus="loopCounter">
				<tr>
					<td><c:out value="${loopCounter.count}" /></td>
					<td><c:out value="${vehicle.regNumber}" /></td>
					<td><c:out value="${vehicle.enginNumger}" /></td>
					<td><c:out value="${vehicle.modle}" /></td>
					<td><c:out value="${vehicle.fuelType}" /></td>
					<td><c:out value="${vehicle.acVehicle}" /></td>
					<td><c:out value="${vehicle.seats}" /></td>

					<td><nobr>
							<a class="btn btn-primary"
								href="/bookstore/vehicle/get/${vehicle.id}"> <i></i>Edit
							</a> <a class="btn btn-primary"
								onclick="return confirm('Are you sure you want to delete this vehicle?');"
								href="/bookstore/vehicle/delete/${vehicle.id}"> <i
								class="fa fa-times"></i>Delete
							</a>

						</nobr></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
