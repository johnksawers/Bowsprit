function toggle_full_answer(btn) {
	var the_btn = $(btn);
	the_btn.parent().find('.full_answer').toggle();
	the_btn.parent().find('.short_answer').toggle();
	if (the_btn.parent().find('.full_answer').is(':visible')) {
		the_btn.html("Collapse");
	} else {
		the_btn.html("Expand");
	}
	return false;
}

$(document).ready(function () {
	$('.toggle_full_answer').mousedown(function () {
		toggle_full_answer(this);
	});
});