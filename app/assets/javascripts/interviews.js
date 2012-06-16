$(document).ready(function () {
	$(".edit_button").mouseup(function () {
		show_edit(this);
	});
});
function show_edit(link) {
	edit_fields = $(link).parent().find('.edit_fields');
	if (edit_fields.hasClass('hidden')) {
		edit_fields.removeClass("hidden");
	} else {
		edit_fields.addClass("hidden");
	}
}