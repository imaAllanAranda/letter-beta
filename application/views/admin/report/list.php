<!DOCTYPE html>

<html lang="en" class="material-style layout-fixed">


<?php $this->load->view('admin/common/css');?>

<body>

    <style>
        .ql-container, .ql-toolbar {
            border-width: 8px !important;
        }

        .modal { overflow: auto !important; }

        #dataTable{
            width: 100% !important
        }

        .table td { 
            max-width: 200px; 
            min-width: 100%;
            word-wrap: break-word !important;
            white-space: normal !important; 
            overflow-wrap: break-word !important;
        }


        .cke_button__easyimageupload {
            display: none !important;
        }


        .card-condenced {
            border-radius: 1em;
            box-shadow: 0 5px 10px rgba(0,0,0,.2);
            margin-bottom: 10px;
        }


        .card-condenced .card-body{
            border-radius: 10%;
            padding: 0.90rem !important;
        }


        .remove_borders {
            background-color: rgb(255 255 255 / 3%) !important;
        }

        .no_padding_top {
            width: 50% !important;
            padding-bottom: 0px !important;
            padding-top: 0px !important;

        }


        .main-color{
            background-color: #0f6497 !important;
            color: white !important;
        }

        .text-main{
            color: #0f6497 !important;
        }

        .main-color2{
            background-color: #56a2c6 !important;
            color: white !important;
        }

        .main-color3{
            background-color: #75b6ea !important;
            color: white !important;
        }

        .main-color4{
            background-color: #85aeee !important;
            color: white !important;
        }

        .main-color5{
            background-color: #0282b9 !important;
            color: white !important;
        }

        .material-style .bootstrap-tagsinput .tag:not(.badge) {
            background: #0f6497 !important;
            color: #ffffff !important;
        }

    </style>

    <!-- [ Preloader ] Start -->
    <div class="page-loader">
        <div class="bg-primary"></div>
    </div>
    <!-- [ Preloader ] Ebd -->

    <!-- [ Layout wrapper ] Start -->
    <div class="layout-wrapper layout-2">
        <div class="layout-inner">
            <!-- [ Layout sidenav ] Start -->
            <?php $this->load->view('admin/common/leftnav');?>
            <!-- [ Layout sidenav ] End -->
            <!-- [ Layout container ] Start -->
            <div class="layout-container">
                <!-- [ Layout navbar ( Header ) ] Start -->
                <?php $this->load->view('admin/common/topbar');?>
                <!-- [ Layout navbar ( Header ) ] End -->

                <!-- [ Layout content ] Start -->
                <div class="layout-content">

                    <!-- [ content ] Start -->
                    <div class="layout-content">

                        <!-- [ content ] Start -->
                        <div class="container-fluid flex-grow-1 container-p-y">

                            <h3 class="font-weight-bold py-3 mb-0">Eliteinsure Letter</h3>

                            <div class="nav-tabs-top">

                                <br>
                                <br>

                                <div class="card spaced-card">
                                    <div class="card-header card-header-flex">
                                        <div>
                                            <div class="flex-right-button">

                                                <button class="add_policy btn main-color btn-md"><i class="ion ion-ios-add-circle text-white"></i> &nbsp; Create Letter</button>


                                                &emsp;

                                                <button class="filter_table btn main-color2 btn-md" style="color: white"><i class="fas fa-filter text-white"></i> &nbsp; Filter Table</button>

                                                <!-- &emsp;

                                                    <button class="generate_report btn main-color3 btn-md" style="color: white"><i class="ion ion-md-clipboard text-white"></i> &nbsp; Generate Report</button> -->


                                                </div>
                                            </div>
                                        </div> 
                                        <input type="hidden" id="token" value="<?= $access_token ?>">
                                        <input type="hidden" id="type" value="<?= $_GET['type'] ?>">

                                        <div class="card-datatable table-responsive">
                                            <table id="dataTable" class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th style="width: 5%"></th>
                                                        <th style="width: 10%">Letter Num.</th>
                                                        <th style="width: 25%">Subject</th>         
                                                        <th style="width: 15%">Writer</th>
                                                        <th style="width: 15%">Recipient</th>
                                                        <th style="width: 10%">Letter Date</th>
                                                        <th style="width: 10%"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div> 

                                </div>

                                <br>    
                                <br>
                                <br>
                                <br>


                            </div>



                            <input type="hidden" id="base_url" value="<?=base_url();?>">



                            <!-- [ content ] End -->

                            <!-- [ Layout footer ] Start -->
                            <?php $this->load->view('admin/common/footer');?>
                            <!-- [ Layout footer ] End -->
                        </div>
                        <!-- [ Layout content ] Start -->
                    </div>
                    <!-- [ Layout container ] End -->
                </div>
                <!-- Overlay -->
                <div class="layout-overlay layout-sidenav-toggle"></div>
            </div>
            <!-- [ Layout wrapper ] end -->

            <?php $this->load->view('admin/report/create');?>

            <?php $this->load->view('admin/report/edit');?>

            <?php $this->load->view('admin/report/view');?>

            <?php $this->load->view('admin/report/view_pdf');?>

            <?php $this->load->view('admin/report/pdf');?>


            <form id="generate_report_form" target="_blank" action="<?php echo base_url().'admin/generate_report' ?>" method="POST" hidden>

            </form>

            <!-- Core scripts -->
            <?php $this->load->view('admin/common/js');?>
            <script src="<?=base_url();?>assets/admin/js/pages/forms_pickers.js"></script>
            <script src="<?php echo site_url(); ?>assets/dan_assets/js/image-resize.min.js"></script>
            <!--    <script src="https://cdn.rawgit.com/kensnyder/quill-image-resize-module/3411c9a7/image-resize.min.js"></script> -->
            <script src="<?php echo site_url(); ?>assets/ckeditor/ckeditor.js"></script>

            <script src="<?php echo site_url(); ?>assets/dan_assets/js/sortable.min.js"></script>
            <script src="<?php echo site_url(); ?>assets/dan_assets/js/jquery-sortable.js"></script>    

            <script src="<?php echo site_url(); ?>assets/dan_assets/js/signature_pad.min.js"></script>
            <script src="<?php echo site_url(); ?>assets/dan_assets/js/jquery.quicksearch.min.js" ></script>


            <script src="<?php echo site_url(); ?>javascript/admin/report/note.js"></script>
            <script src="<?php echo site_url(); ?>javascript/admin/report/create.js"></script>
            <script src="<?php echo site_url(); ?>javascript/admin/report/edit.js"></script>
            <script src="<?php echo site_url(); ?>javascript/admin/report/list.js"></script>
            <script src="<?php echo site_url(); ?>javascript/admin/report/view.js"></script>

            <script>


                $('.generate_report').click(function(event) {

                    $('#filter_button').attr('hidden', true);
                    $('#generate_button').attr('hidden', false);

                    $('.filter_title').html('Generate Report');

                    $('#filter_modal').modal('show');

                    $('.created_by_content').attr('hidden', true);

                });


                $('#generate_button').click(function(event) {

                    var filter_duedate = $("#filter_duedate").val();
                    var filter_from = $("#filter_from").val();
                    var filter_to = $("#filter_to").val();

                    var filter_responsible = $("#filter_responsible").val();
                    var filter_roles = $("#filter_roles").val();
                    var filter_staff = $("#filter_staff").val();

                    var filter_created_by = 'all';
                    var filter_user = $("#filter_user").val();


                    var filter_status = $("#filter_status").val();

                    $('#generate_report_form').html( '' +
                        '<input name="filter_duedate" value="'+ filter_duedate +'">' +
                        '<input name="filter_from" value="'+ filter_from +'">' +
                        '<input name="filter_to" value="'+ filter_to +'">' +
                        '<input name="filter_responsible" value="'+ filter_responsible +'">' +
                        '<input name="filter_roles" value="'+ filter_roles +'">' +
                        '<input name="filter_staff" value="'+ filter_staff +'">' + 
                        '<input name="filter_created_by" value="'+ filter_created_by +'">' +
                        '<input name="filter_user" value="'+ filter_user +'">' +
                        '<input name="filter_status" value="'+ filter_status +'">' +
                        '').submit();
                });





            </script>


        </body>
        </html>












