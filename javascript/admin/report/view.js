// $('.open_pdf').click(function(event) {

// 	$('#pdf_modal').modal('show');
// 	$('.pdf_modal_title').html($(this).attr('data-name')+' - PDF');
// 	$('.pdf_url').attr('src',  $(this).attr('data-url'));
// });

$(document).on('click', '.open_pdf', function(event) {

	$('#pdf_modal').modal('show');
	$('.pdf_modal_title').html($(this).attr('data-name')+' ');
	$('.pdf_url').attr('src',  $(this).attr('data-url'));
});