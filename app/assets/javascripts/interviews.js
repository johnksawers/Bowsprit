$(document).ready(function () {
	$(".edit_button").click(function () {
		show_edit(this);
	});
	$('#add_question_button').mousedown(function(){
		add_question_fields();
	})
	$('.remove_question_button').mousedown(function(){
		remove_question(this);
	})
});
function show_edit(link) {
	edit_fields = $(link).parent().find('.edit_fields');
	if (edit_fields.hasClass('hidden')) {
		edit_fields.removeClass("hidden");
	} else {
		edit_fields.addClass("hidden");
	}
}
function add_question_fields(){
	var new_id = new Date().getTime();
	var regexp = new RegExp("new_question", "g")
	new_fields_blob = dynamic_question_form;
	$("#new_question_fields_container").html(new_fields_blob.replace(regexp, new_id));
}

function remove_question(link) {
	$(link).prev("input[type=hidden]").val("1");
	$(link).closest("li").hide();
}