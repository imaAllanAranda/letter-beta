load_report();


function load_report(){

    $.ajax({
        url: base_url+'Admin/fetch_list_report?token='+$('#token').val(),
        type: 'GET',
        dataType: 'json',
        success: function(response) {

            console.log(response);
            create_datatable(response);


        },
        error: function(error) {
          console.log(error)
      }
  });

}


function reload_report(){

    // $('#filter_button').trigger('click');

    if ($.fn.DataTable.isDataTable("#dataTable")) {
        $('#dataTable').DataTable().clear().destroy();
        load_report();
    }else{
        load_report();
    }

}





function delete_cir(id){

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
            url: base_url+'Admin/delete_report',
            type: 'POST',
            data: {
                id: id.id
            },
            success: (res) => {
             console.log(res);
             reload_report();
         }, 

     });
       }
   });

}



////////////////////////////////////////////



$(document).on('change', '#status_type', function() {

    if(this.value != ''){
        $('#dataTable').DataTable().columns(4).search($(this).val()).draw();

    }else{

        $('#dataTable').DataTable().columns(4).search('').draw();
    }

});






$('.filter_table').click(function(event) {

    $('#filter_button').attr('hidden', false);
    $('#generate_button').attr('hidden', true);

    $('.filter_title').html('Filter Table');

    $('#filter_modal').modal('show');

    $('.created_by_content').attr('hidden', false);
});


$('#filter_duedate').change(function(event) {

    if(this.value == 'specific_dates'){

        $('.specific_duedate_content').attr('hidden', false);

    }else{

        $('.specific_duedate_content').attr('hidden', true);
    }
});


$('#filter_responsible').change(function(event) {
    if(this.value == 'specific_roles'){

        $('.specific_roles_content').attr('hidden', false);
        $('.specific_staff_content').attr('hidden', true);

    }else if(this.value == 'specific_staff'){

        $('.specific_roles_content').attr('hidden', true);
        $('.specific_staff_content').attr('hidden', false);

    }else{

        $('.specific_roles_content').attr('hidden', true);
        $('.specific_staff_content').attr('hidden', true);
    }
});


$('#filter_created_by').change(function(event) {
    if(this.value == 'specific_user'){

        $('.specific_user_content').attr('hidden', false);

    }else{

        $('.specific_user_content').attr('hidden', true);
    }
});


$('#filter_button').click(function(e) {

    e.preventDefault();


    var filter_duedate = $("#filter_duedate").val();
    var filter_from = $("#filter_from").val();
    var filter_to = $("#filter_to").val();

    // var filter_responsible = $("#filter_responsible").val();
    // var filter_roles = $("#filter_roles").val();
    // var filter_staff = $("#filter_staff").val();

    // var filter_created_by = $("#filter_created_by").val();
    // var filter_user = $("#filter_user").val();

    var filter_status = $("#filter_status").val();


    $.ajax({
        url: base_url+'Admin/filter_report',
        type: 'POST',
        dataType: 'json',
        data: {
            filter_duedate: filter_duedate,
            filter_from: filter_from,
            filter_to: filter_to,
            // filter_responsible: filter_responsible,
            // filter_duedate: filter_duedate,
            // filter_roles: filter_roles,
            // filter_staff: filter_staff,
            // filter_created_by: filter_created_by,
            // filter_user: filter_user,
            filter_status: filter_status,
            token: $("#token").val(),
        },
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


});




