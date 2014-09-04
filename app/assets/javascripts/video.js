$(function(){
	var $editVideoButton = $('#editVideoButton'),
		$editVideoForm = $('#editVideoForm'),
		$editCommentButton,
		$editCommentForm;

	$editVideoForm.on('click', function(){
		$editVideoForm.toggleClass("hide");
		if ($editVideoForm.hasClass("hide") === false) {
			$edit.text("Hide Form");
		} else {
			$edit.text("Edit Video");
		}
	})
});