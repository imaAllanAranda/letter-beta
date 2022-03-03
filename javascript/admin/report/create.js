var base_url = $('#base_url').val();



$('.add_policy').click(function(event) {

  $('#create_modal').modal('show');
});


$('.open_note_history').click(function(event) {

  reload_notes();

  $('#update_modal').modal('hide');
  $('#view_notes_modal').modal('show');
});



$('.back_to_update').click(function(event) {

  $('#update_modal').modal('show');
  $('#view_notes_modal').modal('hide');

});

var create_content_count = 1;
var selected_contractor = [];

//////////////////////////////////

$(document).ready(function() {
  CKEDITOR.replace('ckeditor_create');
  CKEDITOR.config.extraPlugins = "base64image";
});

//////////////////////////////////

/////////////////////////////////////////////////////////////////


var is_empty = 1;

var canvas = document.getElementById("signature");
var signaturePad = new SignaturePad(canvas, {
  onBegin: function () {

    is_empty = 0;

  }     
});


$('#clear-signature').on('click', function(){

    // console.log(signaturePad.toDataURL()); 
    // alert(signaturePad.isEmpty());
    is_empty = 1;
    signaturePad.clear();

  });

/////////////////////////////






$("#save_policy").submit(function(e) {

  e.preventDefault();

  var rec_name = $("#rec_name").val();
  var rec_position = $("#rec_position").val();
  var rec_company = $("#rec_company").val();
  var rec_address = $("#rec_address").val();
  var rec_email = $("#rec_email").val();

  var rec_cc_email = $("#rec_cc_email").val();

  var subject = $("#subject").val();
  var content = CKEDITOR.instances['ckeditor_create'].getData();

  var wri_name = $("#wri_name").val();
  var wri_position = $("#wri_position").val();

  var date_report = $("#date_report").val();

  if( content == '' ){

    swal({ 
      title: "Please add a content description!", 
      text: 'Please provide the date of content description to continue.',
      type: "info" 
    });

    return null;

  }

  //////////////////////

  if( rec_email == '' ){

    swal({ 
      title: "Please specify the recipient's email!", 
      text: "Please provide the recipient's email to continue.",
      type: "info" 
    });

    return null;

  }


  var display_signature =  '';

  // if(is_empty == 1){

  //   swal("Please check you signature", "Please provide a signature to continue", "error");

  //   return ;

  // }else{

  //   var display_signature = signaturePad.toDataURL();

  // }


  
  $("#save_cir").buttonLoader('start');
  $.ajax({
    url: base_url+'Admin/add_report',
    type: 'POST',
    dataType: 'json',
    data: {
      rec_name: rec_name,
      rec_position: rec_position,
      rec_company: rec_company,
      rec_address: rec_address,
      rec_email: rec_email,
      subject: subject,
      content: content,
      rec_cc_email:rec_cc_email,
      wri_name: wri_name,
      wri_position: wri_position,
      display_signature: display_signature,
      date_report: date_report,
      token: $("#token").val(),
    },
    success: (res) => {


      var text = "";

      text = "Letter is added successfully!";

      if(res.success == 1){

        $("#save_cir").buttonLoader('stop');

        selected_contractor = [];
        $('#contractor_list').multiSelect('deselect_all');


        $("#description").val('');
        $("#notes").val('');
        $('#rec_email').tagsinput('removeAll');

        on_create_report();

        $("#save_policy").trigger("reset");

        $('#create_modal').modal('hide');


        send_email(res.report_id, text, 'success');

        // window.location.reload();

      }else{
        $("#save_cir").buttonLoader('stop');
        swal("Failed", "Something went wrong, Please try again!", "error");
      }
    }
  });

});






////////////////////////////////////////



function on_create_report(){

  $('#dataTable').DataTable().clear().destroy();

  $.ajax({
    url: base_url+'Admin/fetch_list_report?token='+$('#token').val(),
    type: 'POST',
    dataType: 'json',
    success: function(response) {

      console.log(response);

      $('#dataTable').DataTable().clear().destroy();
      $('#filter_modal').modal('hide');

      create_datatable(response);

    },             
    error: function(response) {
      console.log(response);
    }
  });

}




function create_datatable(response){

  $('#dataTable').dataTable({
    data: response.data,
    responsive : true,
    columns: [
    { 
      data: {"targets": 1},
      className: 'text-center',
      render : function(data, type, full) {

        return ' ' +
        '   <div class="dropdown">  '  + 
        '       <a href="#"  id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">  '  + 
        '           <i class="fas fa-ellipsis-v"></i>  '  + 
        '       </a>  '  + 
        '       <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">  '  + 
        '     '  + 
        '           <a class="edit_policy dropdown-item" href="javascript:void(0);" data-policy_id="'+data.id+'" >Update</a>  '  + 
        '     '  + 
        '     '  + 
        '           <a class="open_pdf dropdown-item" href="javascript:void(0);" data-url="'+base_url+'admin/view_pdf/'+data.id+'" data-name="'+data.rec_name+' ('+data.id_num+')" data-policy_id="'+data.id+'" >View PDF</a>  '  + 
        '     '  + 
        '       </div>  '  + 
        '  </div>  ' ;  


      },
      'sortable': false
    },
    { 
      data: {"targets": 1},
      className: 'td-center',
      render : function(data, type, full) {

        return data.id_num;
      },
      'sortable': true
    },    
    { 
      data: {"targets": 1},
      className: 'td-center',
      render : function(data, type, full) {

        return '<p>'+data.subject+'</p>';
      },
      'sortable': true
    },
    { 
      data: {"targets": 1},
      className: 'td-center',
      render : function(data, type, full) {

        return '<p>'+data.wri_name+'</p>';
      },
      'sortable': true
    },
    { 
      data: {"targets": 1},
      className: 'td-center',
      render : function(data, type, full) {

        return '<p>'+data.rec_name+'</p>';
      },
      'sortable': true
    },
    {
      'data': 'date_report',
      'render': function(date_report) {

        var formated_date = date_report.split("-");

        return '<span hidden>'+date_report+'</span>'+formated_date[2]+'/'+formated_date[1]+'/'+formated_date[0];
      },
      'sortable': true
    },
    { 
      data: {"targets": 1},
      className: 'text-center',
      render : function(data, type, full) {

        if(data.is_email_sent == true){

          var color = '#0f6497';

        }else{

          var color = 'green';
        }

        return '  ' +  
        '  </a>  '+
        '  <a style="color:'+color+';" href="javascript:;" onclick="send_report(this)"  id="'+data.id+'" class="btn icon-btn btn-sm" title="Send Report" >  '  + 
        '      <i class="far fa-envelope" style="font-size: 22px"></i>  '  + 
        '  </a> &nbsp; '+
        '  <a style="color:red;" href="javascript:;" onclick="delete_cir(this)" id="'+data.id+'" class="btn icon-btn btn-sm" title="Delete Report" >  '  + 
        '      <i class="far fa-trash-alt" style="font-size: 20px"></i>  '; 

      },
      'sortable': false
    }]
  });

}

function send_report(element){

  var report_id = $(element).attr('id');
  var text = 'Are you sure?';
  var type = 'info';

  send_email(report_id, text, type);
}

function send_email(report_id, text, type){

  swal({
    title: text,
    text: 'Do you wish to send this report to the email address associated with the recipient?',
    type: type,
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    cancelButtonText: "No, thanks",
    confirmButtonText: 'Yes, send it!'
  },function(ret) {

    if(ret == true){


      setTimeout(function(){

        swal({
          title: '',
          html: true,
          text:   '<div class="loader-block">'+
          '<img src="'+base_url+'/img/spinner.gif" width="150" height="150">'+
          '</div>'+
          '<h4 class="text-center">Please Wait... <span id="progress-status"></span></h4>',
          allowOutsideClick: false,
          showConfirmButton:false,
        });

        setTimeout(function(){

          $.ajax({
            url: base_url+'Admin/send_email',
            type: 'POST',
            dataType: 'json',
            data: {
              report_id: report_id,
              token: $("#token").val(),
            },
            success: (res) => {

              console.log(res);

              if(res.is_success == true){

                swal({ 
                  title: "Success", 
                  text: 'Email successfully sent.',
                  type: "success" 
                },function(ret) {

                  on_create_report();

                })


              }else{

                console.log(res.errors);

                swal("Failed", "Something went wrong, Please try again!", "error");


              }

            }

          });
        }, 2500);

      }, 500);





    }
  });

}