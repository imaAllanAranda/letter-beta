var edit_is_empty = 0;
var edit_canvas = document.getElementById("edit_signature");
var edit_signaturePad;

var edit_selected_contractor = [];


///////////////////////



$('#edit_clear-signature').on('click', function(){

    // console.log(signaturePad.toDataURL()); 
    // alert(signaturePad.isEmpty());
    edit_is_empty = 1;
    edit_signaturePad.clear();

});




///////////////////////

var report_id = 0;

// $(document).on('click', '.edit_policy', function(event) {
//     event.preventDefault();

//     /* Act on the event */
// });

$(document).on('click', '.edit_policy', function(event) {



    report_id = $(this).attr('data-policy_id');

    $.ajax({
        url: base_url + 'Admin/fetch_report?token='+$('#token').val()+'&type=2&id='+report_id,
        type: 'GET',
        dataType: 'json',
        success: (data) => {

            console.log(data);

            if (data.success == true) {

                var report = data.report;

                $('#edit_rec_name').val(report.rec_name);
                $('#edit_rec_position').val(report.rec_position);
                $('#edit_rec_company').val(report.rec_company);
                $('#edit_rec_address').val(report.rec_address);

                $('#edit_rec_email').tagsinput('removeAll');

                edit_rec_email = report.rec_email.split(",")

                for (var i = 0; i < edit_rec_email.length; i++) {
                    $('#edit_rec_email').tagsinput('add',  edit_rec_email[i]);
                }

                rec_cc_email = report.rec_cc_email.split(",")

                for (var i = 0; i < rec_cc_email.length; i++) {
                    $('#edit_rec_cc_email').tagsinput('add',  rec_cc_email[i]);
                }


                $('#edit_subject').val(report.subject);
                $('#edit_content').val(report.content);

                CKEDITOR.replace('ckeditor_edit');
                CKEDITOR.instances['ckeditor_edit'].setData(report.content);

                $('#edit_wri_name').val(report.wri_name);
                $('#edit_wri_position').val(report.wri_position);
                $('#edit_date_report').val(report.date_report);

                var edit_is_empty = 0;

                edit_signaturePad = new SignaturePad(edit_canvas, {
                    onBegin: function () {
                        edit_is_empty = 0;
                    }     
                });

                edit_signaturePad.fromDataURL(report.display_signature);

                $('#update_modal').modal('show');

            }else{

                swal("Failed", "Something went wrong,Please try again!", "error");
                // window.location.reload();
            }


        },
        error: (data) => {
            console.log(data);
        }
    });

});



///////////////////////

var base_url = $('#base_url').val();


$("#update_policy").submit(function(e) {

    e.preventDefault();

    var edit_rec_name = $("#edit_rec_name").val();
    var edit_rec_position = $("#edit_rec_position").val();
    var edit_rec_company = $("#edit_rec_company").val();
    var edit_rec_address = $("#edit_rec_address").val();
    var edit_rec_email = $("#edit_rec_email").val();

    var edit_subject = $("#edit_subject").val();
    var edit_content = CKEDITOR.instances['ckeditor_edit'].getData();

    var edit_wri_name = $("#edit_wri_name").val();
    var edit_wri_position = $("#edit_wri_position").val();

    var edit_date_report = $("#date_report").val();

    var edit_rec_cc_email = $("#edit_rec_cc_email").val();


    if( edit_content == '' ){

        swal({ 
            title: "Please add a content description!", 
            text: 'Please provide the date of content description to continue.',
            type: "info" 
        });

        return null;

    }


     //////////////////////

     if( edit_rec_email == '' ){

        swal({ 
            title: "Please specify the recipient's email!", 
            text: "Please provide the recipient's email to continue.",
            type: "info" 
        });

        return null;

    }

    //////////////////////

    var edit_display_signature = '';
    
    // if(edit_signaturePad.isEmpty() == 1){

    //     swal("Please check you signature", "Please provide a signature to continue", "error");

    //     return ;

    // }else{

    //     var edit_display_signature = edit_signaturePad.toDataURL();

    // }

    $("#edit_save_policy").buttonLoader('start');

    $.ajax({
        url: base_url+'Admin/update_report',
        type: 'POST',
        data: {
          rec_name: edit_rec_name,
          rec_position: edit_rec_position,
          rec_company: edit_rec_company,
          rec_address: edit_rec_address,
          rec_email: edit_rec_email,
          rec_cc_email: edit_rec_cc_email,
          subject: edit_subject,
          content: edit_content,
          wri_name: edit_wri_name,
          wri_position: edit_wri_position,
          display_signature: edit_display_signature,
          date_report: edit_date_report,
          report_id: report_id,
          token: $("#token").val(),
      },
      success: (res) => {

        $('#update_modal').modal('hide');


        var text = "";

        text = "Letter updated successfully!";


        if(res==1){

            reload_report();

            $("#edit_save_policy").buttonLoader('stop');
            swal({ 
                title: "Success", 
                text: text,
                type: "success" 
            },function(ret) {


                  // window.location.reload();
              })
        }else{

            $("#edit_save_policy").buttonLoader('stop');
            swal("Failed", "Something went wrong,Please try again!", "error");
        }
    }
});

});



$("#update_status").submit(function(e) {

    e.preventDefault();

    var status = $("input[name='view_status']:checked").val();
    var notes = $("#view_notes").val();


    $("#update_status_btn").buttonLoader('start');


    $.ajax({
        url: base_url+'Admin/update_status',
        type: 'POST',
        data: {
            status: status,
            notes: notes,
            report_id: report_id,
            token: $("#token").val(),
        },
        success: (res) => {

            console.log(res);

            $('#update_modal').modal('hide');

            var text = "";

            text = "CAP status updated successfully!";

            if(res==1){

                $("#update_status_btn").buttonLoader('stop');

                reload_report();

                $('#edit_status_modal').modal('hide');

                swal({ 
                    title: "Success", 
                    text: text,
                    type: "success" 
                });
                
            }else{

                $("#update_status_btn").buttonLoader('stop');
                swal("Failed", "Something went wrong,Please try again!", "error");
            }
        }
    });

});
