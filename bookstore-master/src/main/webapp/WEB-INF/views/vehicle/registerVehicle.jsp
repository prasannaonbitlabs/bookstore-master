
<form:form method="GET" action="/bookstore/vehicle/vehicleList">
		<input class="btn btn-primary" value="Vehicle List"  type="submit">
</form:form>
<br>
<div class="well left center">
	<div class="well-2 left">
		<h4>Registration Form</h4>
		<div class="row">

			<br>
			<c:url var="actionUrl" value="save" />

			<br>
			<form:form id="vehicleForm" method="post"
				enctype="multipart/form-data" action="../vehicle/save"
				class="pure-form pure-form-aligned">

				<fieldset>
					<c:if test="${massage ne null}">
						<div class="alert alert-danger">${massage}</div>
					</c:if>

					<div class="form-group col-xs-6">
						<label for="regNumber">Reg Number</label> <input name="regNumber"
							placeholder="Reg Number" class="form-control" />
					</div>
					<div class="form-group col-xs-6">
						<label for="chassieNumber">Chassis Number</label> <input
							name="chassieNumber" placeholder="Chassis Number" maxlength="15"
							class="form-control" />
					</div>
					<div class="form-group col-xs-6">
						<label for="enginNumger">Engine Number</label> <input
							name="enginNumger" placeholder="Engine Number" maxlength="10"
							class="form-control" />
					</div>
					<div class="form-group col-xs-6">
						<label for="modle">Model</label> <input name="modle"
							placeholder="Model" class="form-control" />
					</div>
					<div class="form-group col-xs-6">
						<label for="fuelType">Fuel Type</label> <input name="fuelType"
							placeholder="Fuel Type" class="form-control" />
					</div>
					<div class="form-group col-xs-6">
						<label class="radio-inline">
						 	<input type="radio" name="acVehicle" value="y"  class="radio"/> AC 
						 </label>
						 <label class="radio-inline">
							<input type="radio" name="acVehicle" value="n" class="radio" /> Non AC
						</label>
					</div>
					<div class="form-group col-xs-6">
						<label for="seats">Seats</label> <input name="seats"
							placeholder="Seats" class="form-control" />
					</div>
					<div class="form-group col-xs-6">
						<label for="File to upload">File to upload</label> 
						<input type="file" name='file' />
						<!-- <label for="Name">Name</label> 
						<input name='fileName' class="form-control" /> -->
					</div>

					<div class="form-group col-xs-6">
						<input name="id" type="hidden" />
						 <input type="submit" value="Register" class="btn btn-primary" />
					</div>
				</fieldset>
			</form:form>
		</div>
	</div>
	</div>