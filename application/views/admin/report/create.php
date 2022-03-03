
<style>

    .custom-radio {
        padding-left: 30px;
        padding-right: 20px;
    }

    .ms-container {
        width: 100% !important;
        margin-top: 10px;
    }

    .ms-elem-selectable, .ms-elem-selection {
        text-transform: capitalize !important;
        padding: 5px 0px 5px 40px !important;
    }



    .ms-optgroup-label{
        font-weight: 700;
        background-color: #efefef;  
        padding: 10px !important;
    }

    .ms-container .ms-list {
        height: 350px !important;
    }


</style>

<div class="modal fade" id="create_modal">
    <div class="modal-dialog" style="max-width: 41rem;">
        <form class="modal-content" action="javascript:;" method="POST" id="save_policy">
            <div class="modal-header">
                <h5 class="modal-title">Create Letter
                </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
            </div>
            <div class="modal-body">

                <br>

                <?php date_default_timezone_set('NZ'); ?>

                <div class="row justify_content" style="padding-left: 15px; padding-right: 15px;">
                    <div class="col-md-12">

                        <div class="form-group">
                            <div class="shadow-lg p-3 mb-2 bg-white rounded content_field" >
                                <label class="form-label-lg mb-2" style="font-weight: bold;">Receipient Details</label>

                                <hr style="margin-top: 0px; margin-bottom: 2rem;">

                                <div class="form-group">
                                    <label class="form-label-lg mb-2">Name</label>
                                    <input type="text" name="rec_name" id="rec_name" class="form-control" placeholder="Please enter the receipient name" value="" required>
                                </div>

                                <br>

                                <div class="form-group">
                                    <label class="form-label-lg mb-2">Position</label>
                                    <input type="text" name="rec_position" id="rec_position" class="form-control" placeholder="Please enter the position name" value="" required>
                                </div>

                                <br>

                                <div class="form-group">
                                    <label class="form-label-lg mb-2">Company</label>
                                    <input type="text" name="rec_company" id="rec_company" class="form-control" placeholder="Please enter the receipient company" value="">
                                </div>

                                <br>


                                <div class="form-group">
                                    <label class="form-label-lg mb-2">Address</label>
                                    <!-- <input type="text" name="rec_address" id="rec_address" class="form-control" placeholder="Please enter the receipient address" value="3G/39 Mackelvie Street, Grey Lynn, Auckland, 1021, New Zealand"> -->

                                    <textarea name="rec_address" placeholder="Please enter the receipient address" class="form-control" id="rec_address" cols="30" rows="2"></textarea>
                                </div>

                                <br>
                                

                                <div class="form-group">
                                    <label class="form-label-lg mb-2">Email Address</label>
                                    <input type="text" name="rec_email" id="rec_email" value="" multiple="true" data-role="tagsinput" placeholder="" class="form-control">
                                    <small class="text-muted">Please provide the recipient email address</small>
                                </div>

                                 <div class="form-group">
                                    <label class="form-label-lg mb-2">CC Email Address</label>
                                    <input type="text" name="rec_cc_email" id="rec_cc_email" multiple="true" class="form-control" data-role="tagsinput">
                                    <small class="text-muted">Please provide the recipient email address</small>
                                </div>

                            </div>
                        </div>

                    </div>

                </div>

                <br>

                <div class="row" style="padding-left: 15px; padding-right: 15px;">
                    <div class="col-md-12">
                        <div class="form-group">
                            <div class="shadow-lg p-3 mb-2 bg-white rounded content_field" >
                                <label class="form-label-lg mb-2" style="font-weight: bold;">Content Details</label>


                                <hr style="margin-top: 0px; margin-bottom: 2rem;">

                                <div class="form-group">
                                    <label class="form-label-lg mb-2" >Subject</label>
                                    <input type="text" name="subject" id="subject" class="form-control" placeholder="Please enter the content subject" value="" required>
                                </div>

                                <br>

                                <div class="form-group">
                                    <label class="form-label-lg" style="margin-bottom: 15px;">Content Description</label>
                                    <textarea  id="ckeditor_create"></textarea>
                                </div>



                            </div>
                        </div>
                    </div>
                </div>

                <br>


                <div class="row" style="padding-left: 15px; padding-right: 15px;">

                    <div class="col-md-12">

                        <div class="form-group">
                            <div class="shadow-lg p-3 mb-2 bg-white rounded content_field" >
                                <label class="form-label-lg mb-2" style="font-weight: bold;">Writer Details</label>


                                <hr style="margin-top: 0px; margin-bottom: 2rem;">

                                <div class="form-group">
                                    <label class="form-label-lg mb-2" >Name</label>
                                    <input type="text" name="wri_name" id="wri_name" class="form-control" placeholder="Please enter the writer name" value="" required>
                                </div>

                                <br>

                                <div class="form-group">
                                    <label class="form-label-lg mb-2">Position</label>


                                    <input type="text" name="wri_position" id="wri_position" class="form-control" placeholder="Please enter the writer position" value="" required>
                                </div>

                            </div>
                        </div>

                    </div>



                </div>



                <div class="row" style="padding-left: 15px; padding-right: 15px;">





                    <div class="col-md-12">


                        <br>
                        <br>

                        <div class="form-group">
                            <div class="shadow-lg p-3 mb-2 bg-white rounded content_field" >

                                <br>
                                <label class="form-label-lg mb-2" style="font-weight: bold;">Letter Date</label>

                                <input type="text" name="date_report" id="date_report" class="date_amended dan_datepicker form-control" placeholder="DD/MM/YYYY" data-dtp="dtp_BUxli" value="<?php echo date('d/m/Y'); ?>" required>

                                <br>
                                <br>

                                <div hidden>
                                    <label class="form-label-lg mb-2" style="font-weight: bold;">Insert signature &nbsp; <button type="button" class="btn btn-sm btn-outline-primary" id="clear-signature">Clear</button></label>
                                    <br>
                                    <canvas id="signature" width="520" height="180" style="border: 1px solid #ddd;"></canvas> 
                                </div>

                            </div>
                        </div>

                    </div>

                </div>


                <input type="hidden" id="token" name="token" value="<?=  $_GET['token']; ?>">
                <input type="hidden" id="user_id" name="user_id" value="<?=  $user_details['id'] ?>">

                <input type="hidden" id="numberChk" value="1"> 
                <input type="hidden" id="numberChk2" value="1"> 
                <input type="hidden" id="type" value="<?= $_GET['type'] ?>"> 


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" id="save_cir" class="btn main-color">Submit</button>
            </div>
        </form>
    </div>
</div>