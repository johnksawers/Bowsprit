$(document).ready(function () {
	$('#interview_answers_attributes_0_response').blur(function(){
		$('#interview_form').submit();
	});
	$('#interview_form').bind("ajax:complete", function(evt, data, status, xhr){
		$('#status').html(data.responseText);
		console.log("ffffffff"+data.responseText);
   });
});