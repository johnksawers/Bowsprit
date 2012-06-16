function remove_questions(link) {
	$(link).prev("input[type=hidden]").val("1");
	$(link).closest(".fields").hide();
}

function add_questions(link, content) {
	var new_id = new Date().getTime();
	var regexp = new RegExp("new_question", "g")
	$(link).parent().before(content.replace(regexp, new_id));
}

