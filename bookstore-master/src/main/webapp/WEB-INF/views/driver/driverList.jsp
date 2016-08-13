
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="nav-bar">
	<div class="nav-bar-contain">
		<br> Driver List
	</div>

</div>
<br>
<div class="content">
	<div class="row">
		<div class="form-group col-xs-6">
			<form:form method="GET" action="/bookstore/driver/register">
				<input class="btn btn-primary" value=" Add Driver +" type="submit">
			</form:form>
		</div>
	</div>

	<br><br>
		
<table class="table table-striped">
			<thead>
				<tr>
					<th width="4%">S.N</th>
					<th width="12%">First Name</th>
					<th width="12%">Last Name</th>
					<th width="12%">Join Date</th>
					<th width="12%">Nic</th>
					<th width="12%">Address</th>
					<th width="12%">Mobile</th>
					<th width="12%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${driverList}" var="driver" varStatus="loopCounter">
					<tr>
						<td><c:out value="${loopCounter.count}" /></td>
						<td><c:out value="${driver.firstName}" /></td>
						<td><c:out value="${driver.lastName}" /></td>
						<td><c:out value="${driver.joinDate}" /></td>
						<td><c:out value="${driver.nic}" /></td>
						<td><c:out value="${driver.address}" /></td>
						<td><c:out value="${driver.mobile}" /></td>

						<td><nobr>
								<a class="btn btn-primary"
									href="/bookstore/driver/get/${driver.id}"> <i class="fa fa-times"></i>Edit
								</a>

								<a class="btn btn-primary"
									onclick="return confirm('Are you sure you want to delete this driver?');"
									href="/bookstore/driver/delete/${driver.id}"> <i class="fa fa-times"></i>Delete
								</a>

							</nobr></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>