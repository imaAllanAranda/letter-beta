      $('.open_pdf').click(function(event) {

        $('#pdf_modal').modal('show');
        $('.pdf_modal_title').html($(this).attr('data-name')+' - PDF');
        $('.pdf_url').attr('src',  $(this).attr('data-url'));
    });


      $('.change_order').click(function(event) {

        $('#reorder_modal').modal('show');

    });


      $('#order_policy').sortable({
        animation: 150,
        onEnd: function (evt) {

            var element = $('.order_num');

            for (i = 0; i < element.length; i++) {

                $(element[i]).html(i + 1 + '.&nbsp;');
            }



        },

    });


      $('#save_order_num').click(function(event) {

        var order_num_policy = $("input[name='order_policy[]']").map(function(){return $(this).val();}).get();


        $("#save_order_num").buttonLoader('start');

        $.ajax({
            url: base_url+'Admin/update_order_policy',
            type: 'POST',
            data: {
                order_num: order_num_policy,
            },
            success: (res) => {

                $('#reorder_modal').modal('hide');

                var text = "";

                text = "Table of contents updated successfully!";

                if(res==1){

                 swal({ 
                    title: "Success", 
                    text: text,
                    type: "success" 
                },function(ret) {

                  window.location.reload();
              })

             }else{
                $("#save_order_num").buttonLoader('stop');
                swal("Failed", "Something went wrong, Please try again!", "error");
            }
        }
    });

    });