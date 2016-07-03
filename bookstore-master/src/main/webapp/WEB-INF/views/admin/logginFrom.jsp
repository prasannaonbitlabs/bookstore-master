<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="actionUrl" value="adminlogin"/>

<form:form id="logginForm" commandName="adminUser" method="post"
	action="${actionUrl}" class="pure-form pure-form-aligned">

	<fieldset>
		<div class="pure-control-group">
			<label for="userName">User Name</label>
			<form:input  path="userName" placeholder="User Name" />
		</div>
		<div class="pure-control-group">
			<label for="password">password</label>
			<form:input path="password" placeholder="PassWord"/>
		</div>
		<button class="pure-button pure-button-primary" onclick="doLogin()">
			<i class="fa fa-plus"></i> Logging
		</button>
	</fieldset>
</form:form>


	<!--  It is advised to put the <script> tags at the end of the document body so they don't block rendering of the page -->
	<script type="text/javascript"
		src='<c:url value="/web-resources/js/lib/jquery-1.10.2.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/web-resources/js/lib/jquery-ui-1.10.4.custom.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/web-resources/js/lib/jquery.ui.datepicker.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/web-resources/js/js-for-loginForm.js"/>'></script>