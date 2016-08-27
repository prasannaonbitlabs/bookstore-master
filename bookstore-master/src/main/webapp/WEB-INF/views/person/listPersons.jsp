
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="nav-bar">
	<div class="nav-bar-contain">
		<div class="row">
			<br>
			<div class="form-group col-xs-10">Customer List</div>
			<div class="form-group col-xs-2">
				<input type="image" src="http://localhost:8080/bookstore/web-resources/css/images/profile.jpg"
					class="img-circle" alt="Cinque Terre" data-toggle="modal"
					data-target="#myModal" width="35" height="35" alt="Submit">
			</div>
		</div>
	</div>
</div>

<br><br>
<div class="content">

<table class="table table-striped">
			<thead>
				<tr>
					<th width="4%">S.N</th>
					<th width="12%">First Name</th>
					<th width="12%">Last Name</th>
					<th width="12%">Address</th>
					<th width="12%">Age</th>
					<th width="12%">City</th>
					<th width="12%">Email</th>
					<th width="12%">User Status</th>
					<th width="12%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${personList}" var="person" varStatus="loopCounter">
					<tr>
						<td><c:out value="${loopCounter.count}" /></td>
						<td><c:out value="${person.firstName}" /></td>
						<td><c:out value="${person.lastName}" /></td>
						<td><c:out value="${person.address}" /></td>
						<td><c:out value="${person.age}" /></td>
						<td><c:out value="${person.city}" /></td>
						<td><c:out value="${person.email}" /></td>
						<td><c:out value="${person.userStatus}" /></td>

						<td><nobr>
								<a class="btn btn-primary"
									href="/bookstore/person/get/${person.id}"> <i></i>Edit
								</a>

								<a class="btn btn-primary"
									onclick="return confirm('Are you sure you want to delete this person?');"
									href="/bookstore/person/delete/${person.id}"> <i class="fa fa-times"></i>Delete
								</a>

							</nobr></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>