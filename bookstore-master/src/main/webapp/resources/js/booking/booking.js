window.onload = function() {
	/*document.getElementById('display').style.visibility = "hidden";*/
}

function validateBooking() {
	var customerName = document.getElementById("customerName").value;
	var time = document.getElementById("dateFrom").value;
	alert(time);
	document.getElementById("bookingForm").submit();

}

function openChildWin() { 
	alert("ok");
    var childWin = window.open("childWin.html", "_blank", "height=400, width=550, status=yes, toolbar=no, menubar=no, location=center,addressbar=no");
    return false;
}
function setValue(val1) {
   // do your logic here
}

