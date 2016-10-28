

<div class="nav-bar">
	<div class="nav-bar-contain">
		<div class="row">
			<br>
			<div class="form-group col-xs-10">Vehicle Register</div>
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
			<form:form method="GET" action="/bookstore/vehicle/vehicleList">
				<input class="btn btn-primary" value="Vehicle List" type="submit">
			</form:form>
		</div>
	</div>
	<br>

	<div class="well left center">
		<div class="well-2 left">
			<h4>Registration Form</h4>
			<div class="row">

				<br>
				<c:url var="actionUrl" value="save" />

				<br>
				<form:form id="vehicleForm" modelAttribute="vehicle" method="post"
					enctype="multipart/form-data"
					action="http://localhost:8080/bookstore/vehicle/save"
					class="pure-form pure-form-aligned">

					<fieldset>
						<c:if test="${massage ne null}">
							<div class="alert alert-danger">${massage}</div>
						</c:if>
						<c:if test="${img ne null}">
							<div class="form-group col-xs-12">
								<%-- <img src="${imgPath}" class="img-rounded" alt="Cinque Terre" width="204" height="136"> --%>
								<img src="/bookstore/vehicle/getImage?img=${img}" width="204"
									height="136" alt="myImage" class="img-rounded" />
							</div>
						</c:if>

						<div class="form-group col-xs-6">
							<label for="regNumber">Reg Number</label>
							<form:input name="regNumber" required="required" placeholder="Reg Number"
								path="regNumber" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="chassieNumber">Chassis Number</label>
							<form:input name="chassieNumber" required="required" path="chassieNumber"
								placeholder="Chassis Number" maxlength="15" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="enginNumger">Engine Number</label>
							<form:input name="enginNumger" required="required" path="enginNumger"
								placeholder="Engine Number" maxlength="10" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="modle">Model</label>
							<form:input name="modle" required="required" placeholder="Model" path="modle"
								class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label for="fuelType">Fuel Type</label>
							<form:input name="fuelType" required="required" placeholder="Fuel Type"
								path="fuelType" class="form-control" />
						</div>
						<div class="form-group col-xs-6">
							<label class="radio-inline"> <form:radiobutton
									path="acVehicle" required="required" name="acVehicle" value="y" class="radio" />
								AC
							</label> <label class="radio-inline"> <form:radiobutton
									path="acVehicle" required="required" name="acVehicle" value="n" class="radio" />
								Non AC
							</label>
						</div>

						<div class="form-group col-xs-6">
							<label for="seats">Seats</label>
							<form:input name="seats" required="required" placeholder="Seats" path="seats"
								class="form-control" />
						</div>

						<div class="form-group col-xs-6">

							<form:input type="file" path="file" name='file' />
							<form:input type="hidden" name='fileName' path="fileName"
								class="form-control" />
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