function addPerson() {
	$('#personDialog').dialog("option", "title", 'Add person');
	$('#personDialog').dialog('open');
	
}

function editPerson(id) {

	$.get("get/" + id, function(result) {

		$("#personDialog").html(result);

		$('#personDialog').dialog("option", "title", 'Edit person');

		$("#personDialog").dialog('open');
	});
}



function resetDialog(form) {

	form.find("input").val("");
}

$(document).ready(function() {

	$('#personDialog').dialog({

		autoOpen : false,
		position : 'center',
		modal : true,
		resizable : false,
		width : 540,
		buttons : {
			"Save" : function() {
				$('#personForm').submit();
			},
			"Cancel" : function() {
				$(this).dialog('close');
			}
		},
		close : function() {

			resetDialog($('#personForm'));

			$(this).dialog('close');
		}
	});

	
});
