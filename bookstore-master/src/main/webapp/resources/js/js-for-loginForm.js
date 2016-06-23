function doLogin() {
	$('#loginDialog').dialog("option", "title", 'Login');
	$('#loginDialog').dialog('open');
}

function resetDialog(form) {

	form.find("input").val("");
}

$(document).ready(function() {

	$('#loginDialog').dialog({

		autoOpen : false,
		position : 'center',
		modal : true,
		resizable : false,
		width : 540,
		buttons : {
			"Save" : function() {
				$('#logginForm').submit();
			},
			"Cancel" : function() {
				$(this).dialog('close');
			}
		},
		close : function() {

			resetDialog($('#logginForm'));

			$(this).dialog('close');
		}
	});
});
