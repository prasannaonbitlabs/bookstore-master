window.onload = function() {
	document.getElementById('display').style.visibility = "hidden";
}

function validatePerson() {
	document.getElementById('display').style.visibility = "hidden";
	var password = document.getElementById("password").value;
	var confirmPassword = document.getElementById("confirmpassword").value;
	var email = document.getElementById("email").value;
	var confirmemail = document.getElementById("confirmemail").value;
	

	if (password!=confirmPassword){
		document.getElementById('display').style.visibility = "visible";
		document.getElementById('display').innerHTML="password not match";
		return false;
	}else if (email!=confirmemail){
		document.getElementById('display').style.visibility = "visible";
		document.getElementById('display').innerHTML="email not match";
		return false;
	}else {
			document.getElementById("personForm").submit();

	}
	
}