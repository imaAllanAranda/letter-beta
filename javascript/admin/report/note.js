
$('.save_notes').click(function(event) {

    var note = $('#edit_notes').val();

    if(note != ''){

        $.ajax({
            url: base_url+'Admin/add_note',
            type: 'POST',
            data: {
                note: note,
                user_id: $("#user_id").val(),
                type: $("#type").val(),
                policy_id:  $("#policy_id").val(),
                token: $("#token").val(),
            },
            success: (res) => {

                console.log(res);

                var text = "Note added successfully!";

                if(res==1){
                    $("#save_cir").buttonLoader('stop');
                    swal({ 
                        title: "Success", 
                        text: text,
                        type: "success" 
                    },function(ret) {

                        $('#edit_notes').val('');

                            // reload_notes();
                        })
                }else{
                    $("#save_cir").buttonLoader('stop');
                    swal("Failed", "Something went wrong, Please try again!", "error");
                }
            }
        });

    }else{


        swal({ 
            title: "Please enter a note!", 
            text: 'Please provide the note to continue.',
            type: "info" 
        },function(ret) {


        })

    }




});








$(document).on('click', '.update_note', function(event) {


    event.preventDefault();

    $('#note_modal').modal('show');

    var description = $(this).attr('data-note');

    $('#date_added').val($(this).attr('data-date_added'));
    $('#note_id').val($(this).attr('data-id'));
    $('#edit_notes_modal').val(description);

});



function load_notes(){

    $.ajax({
        url: base_url+'Admin/fetch_note',
        type: 'POST',
        data: {
            policy_id:  $("#policy_id").val(),
        },
        dataType: 'json',
        success: function(response) {
          console.log(response);

          $('#dataTable').dataTable({
            data: response.data,
            responsive : true,
            columns: [
            { 
                data: {"targets": 1},
                className: 'td-center',
                render : function(data, type, full) {

                    return ' ' +
                    '    <div class="dropdown">  '  + 
                    '       <a href="#"  id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">  '  + 
                    '           <i class="fas fa-ellipsis-v"></i>  '  + 
                    '       </a>  '  + 
                    '       <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">  '  + 
                    '           <a class="dropdown-item update_note" data-date_added="'+data.date_format+'" data-note="'+data.description+'" data-id="'+data.policy_id+'" href="javascript:void(0)">Update</a>  '  + 
                    '       </div>  '  +  
                    '  </div>  ' ; 


                },
                'sortable': false
            },

            {
                'data': 'date_added',
                'sortable': true
            },
            {
                'data': 'name',
                'sortable': true
            },

            {
                'data': 'description',
                'render': function(description) {

                    return '<span> '+description+' </span> ' ; 
                },
                'sortable': false
            },
            {
                'data': 'policy_id',
                'className': 'td-center',
                'render': function(policy_id) {

                    return '  ' +
                    '   <a style="color:red;" href="javascript:;" onclick="delete_note(this)" id="'+policy_id+'" class="btn icon-btn btn-sm" title="Delete Report" >  '  + 
                    '       <i class="far fa-trash-alt" style="font-size: 20px"></i>  '  + 
                    '  </a>  ' ; 
                },
                'sortable': false
            }
            ]
        });
      },
      error: function(error) {
          console.log(error)
      }
  });

}


function reload_notes(){

    if ($.fn.DataTable.isDataTable("#dataTable")) {
        $('#dataTable').DataTable().clear().destroy();
        load_notes();
    }else{
        load_notes();
    }

}







function delete_note(id){

    swal({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
    },function(ret) {
        if(ret == true){
           var base_url = $('#base_url').val();

           console.log(id);
           $.ajax({
            url: base_url+'Admin/delete_note',
            type: 'POST',
            data: {
                id: id.id
            },
            success: (res) => {

                reload_notes();

            }, 

        });
       }
   })

}









$("#update_note").submit(function(e) {

    e.preventDefault();

    $.ajax({
        url: base_url+'Admin/update_note',
        type: 'POST',
        data: {
            date_added: $('#date_added').val(),
            note_id: $('#note_id').val(),
            note: $('#edit_notes_modal').val(),
        },
        success: (res) => {

            console.log(res);

            var text = "";

            text = "Note updated successfully!";

            if(res==1){

                reload_notes();

                swal({ 
                    title: "Success", 
                    text: text,
                    type: "success" 
                },function(ret) {

                    $('#note_modal').modal('hide');

                })

            }else{

                swal("Failed", "Something went wrong, Please try again!", "error");
            }
        }
    });

});