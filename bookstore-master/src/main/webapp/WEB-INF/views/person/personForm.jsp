<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<c:url var="actionUrl" value="save" />

<form:form id="personForm" modelAttribute="person" method="post"
	action="${actionUrl }" class="pure-form pure-form-aligned">

	<fieldset>
		<legend></legend>

		<div class="pure-control-group">
			<label for="firstName">Fist Name</label>
			<form:input name = "personId" path="firstName" placeholder="First Name" />
		</div>
		<div class="pure-control-group">
			<label for="LastName">Last Name</label>
			<form:input name="lastName" id = "lastName" path="lastName" placeholder="Last Name" maxlength="15" />
		</div>
		<div class="pure-control-group">
			<label for="city">City</label>
			<form:input path="city" placeholder="City"
				maxlength="10" />
		</div>
		<div class="pure-control-group">
			<label for="adress">Adress</label>
			<form:input path="adress" placeholder="Adress" />
		</div>
		<div class="pure-control-group">
			<label for="age">Age</label>
			<form:input path="age" placeholder="Age" />
		</div>


		<form:input path="id" type="hidden" />

	</fieldset>
</form:form>