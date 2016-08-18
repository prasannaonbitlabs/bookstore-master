<%@page import="np.com.mshrestha.bookstore.model.AdminUser"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="nav-bar">
	<div class="nav-bar-contain">
		<br> Booking Form
	</div>

</div>
<br>
<div class="content">
	<div class="row">
		<div class="form-group col-xs-6">
			<form:form method="GET" action="/bookstore/booking/listBooking">
				<input class="btn btn-primary" value="Booking List" type="submit">
			</form:form>
		</div>
	</div>
	<br>
	<div class="well left center">
		<div class="well-2 left">
			<h4>Booking Form</h4>
			<div class="row">

				<br>
				<c:url var="actionUrl" value="save" />

				<br>
				<form:form id="bookingForm" modelAttribute="booking" method="post"
					enctype="multipart/form-data"
					action="http://localhost:8080/bookstore/booking/save"
					class="pure-form pure-form-aligned">

					<fieldset>
						<c:if test="${massage ne null}">
							<div class="alert alert-danger">${massage}</div>
						</c:if>

						<div class="form-group col-xs-6">
							<label for="customerName">Customer Name</label>
							<form:input name="customerName" placeholder="Customer Name"
								path="customerName" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="telephonenumber">Tel</label>
							<form:input name="telephonenumber" path="telephonenumber"
								placeholder="Tel" maxlength="15" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="streetAdress">Address</label>
							<form:input name="streetAdress" path="streetAdress"
								placeholder="Adress" maxlength="10" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="modle">Address Line Two</label>
							<form:input name="adressLineTwo" placeholder="adressLineTwo"
								path="adressLineTwo" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="fuelType">City</label>
							<form:input name="city" placeholder="City" path="city"
								class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="destination">Destination</label>
							<form:input name="destination" placeholder="Destination"
								path="destination" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="dateFrom">Date From</label>
							<form:input type="date" name="dateFrom" placeholder="dateFrom"
								path="dateFrom" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="vehicalType">Vehicle Type</label>
							<form:select path="vehicalType" class="form-control">
								<option value=""></option>
								
								<c:forEach items="${vehicleTypeList}" var="vehicleType">
								<c:choose>
									<c:when test="${vehicleType.getKey() == vehicleTypeId}">
										<option id="${vehicleType.getKey()}" value="${vehicleType.getKey()}" selected>${vehicleType.getValue()}</option>
									</c:when>
									<c:otherwise>
										<option id="${vehicleType.getKey()}" value="${vehicleType.getKey()}">${vehicleType.getValue()}</option>
									</c:otherwise>
									</c:choose>
								</c:forEach>
								
							</form:select>
						</div>
						<div class="form-group col-xs-6">
							<label for="ComfortableType">Comfortable Type</label>
							<form:select path="comfortableType" class="form-control">
								<option value=""></option>
								
								<c:forEach items="${comfortableTypeList}" var="comfortableType">
								<c:choose>
									<c:when test="${comfortableType.getKey() == comfortableTypeId}">
										<option id="${comfortableType.getKey()}" value="${comfortableType.getKey()}" selected>${comfortableType.getValue()}</option>
									</c:when>
									<c:otherwise>
										<option id="${comfortableType.getKey()}" value="${comfortableType.getKey()}">${comfortableType.getValue()}</option>
									</c:otherwise>
									</c:choose>
								</c:forEach>
								
							</form:select>
						</div>
						<div class="form-group col-xs-6">
							<label for="email">Email</label>
							<form:input name="email" placeholder="email" path="email"
								class="form-control" />
						</div>

						<div class="form-group col-xs-6">
							<label for="status">Reservation Status</label>
							<form:select path="status" class="form-control">
								<option value=""></option>
								
								<c:forEach items="${statusList}" var="status">
								<c:choose>
									<c:when test="${status.getKey() == statusId}">
										<option id="${status.getKey()}" value="${status.getKey()}" selected>${status.getValue()}</option>
									</c:when>
									<c:otherwise>
										<option id="${status.getKey()}" value="${status.getKey()}">${status.getValue()}</option>
									</c:otherwise>
									</c:choose>
								</c:forEach>
								
							</form:select>
						</div>

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