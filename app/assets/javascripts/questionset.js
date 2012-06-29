function show_edit(link) {
	var edit_fields = $(link).parent().find('.edit_fields');
	if (edit_fields.hasClass('hidden')) {
		edit_fields.removeClass("hidden");
	} else {
		edit_fields.addClass("hidden");
	}
	return false;
}
function add_question_fields() {
	if ($("#new_question_fields_container").is(":hidden")) {
		var new_id = new Date().getTime();
		var regexp = new RegExp("new_question", "g");
		// dynamic_question_form is defined in the HTML page, generated by rails
		var new_fields_blob = dynamic_question_form;
		$("#new_question_fields_container").html(new_fields_blob.replace(regexp, new_id));
		$("#new_question_fields_container").slideDown('slow');
	} else {
		$("#new_question_fields_container").hide();
	}
	return false;
}

function remove_question(link) {
	$(link).prev("input[type=hidden]").val("1");
	$(link).closest("li").hide();
	return false;
}

$(document).ready(function () {
	$(".edit_button").click(function () {
		show_edit(this);
	});
	$('#add_question_button').mousedown(function () {
		add_question_fields();
	});
	$('#inline_add_question_button').mousedown(function () {
		add_question_fields();
	});
	$('.remove_question_button').mousedown(function () {
		remove_question(this);
	});
});