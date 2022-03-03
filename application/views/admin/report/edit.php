
<div class="modal fade" id="update_modal">
    <div class="modal-dialog"  style="max-width: 41rem;" >
        <form class="modal-content" action="javascript:;" method="POST" id="update_policy">
            <div class="modal-header">
                <h5 class="modal-title">Edit Letter
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
                                    <input type="text" name="edit_rec_name" id="edit_rec_name" class="form-control" placeholder="Please enter the receipient name" value="" required>
                                </div>

                                <br>


                                <div class="form-group">
                                    <label class="form-label-lg mb-2">Position</label>
                                    <input type="text" name="edit_rec_position" id="edit_rec_position" class="form-control" placeholder="Please enter the receipient position" value="" required>
                                </div>

                                <br>

                                <div class="form-group">
                                    <label class="form-label-lg mb-2">Company</label>
                                    <input type="text" name="edit_rec_company" id="edit_rec_company" class="form-control" placeholder="Please enter the receipient company" value="">
                                </div>

                                <br>


                                <div class="form-group">
                                    <label class="form-label-lg mb-2">Address</label>
                                    <textarea name="edit_rec_address" placeholder="Please enter the receipient address" class="form-control" id="edit_rec_address" cols="30" rows="2">
                                    </textarea>

                                </div>

                                <br>


                                <div class="form-group">
                                    <label class="form-label-lg mb-2">Email Address</label>
                                    <input type="text" name="edit_rec_email" id="edit_rec_email" multiple="true" class="form-control" data-role="tagsinput">
                                    <small class="text-muted">Please provide the recipient email address</small>
                                </div>

                                <div class="form-group">
                                    <label class="form-label-lg mb-2">CC Email Address</label>
                                    <input type="text" name="edit_rec_cc_email" id="edit_rec_cc_email" multiple="true" class="form-control" data-role="tagsinput">
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
                                    <input type="text" name="edit_subject" id="edit_subject" class="form-control" placeholder="Please enter the content subject" value="" required>
                                </div>

                                <br>

                                <div class="form-group">
                                    <label class="form-label-lg" style="margin-bottom: 15px;">Content Description</label>
                                    <textarea  id="ckeditor_edit"></textarea>
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
                                    <input type="text" name="edit_wri_name" id="edit_wri_name" class="form-control" placeholder="Please enter the writer name" value="" required>
                                </div>

                                <br>

                                <div class="form-group">
                                    <label class="form-label-lg mb-2">Position</label>


                                    <input type="text" name="edit_wri_position" id="edit_wri_position" class="form-control" placeholder="Please enter the writer position" value="" required>
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

                                <input type="text" name="edit_date_report" id="edit_date_report" class="date_amended dan_datepicker form-control" placeholder="DD/MM/YYYY" data-dtp="dtp_BUxli" value="" required>

                                <br>
                                <br>


                                <div hidden>
                                    <label class="form-label-lg mb-2" style="font-weight: bold;">Insert signature &nbsp; <button type="button" class="btn btn-sm btn-outline-primary" id="edit_clear-signature">Clear</button></label>
                                    <br>
                                    <canvas id="edit_signature" width="520" height="180" style="border: 1px solid #ddd;"></canvas>
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
                <button type="submit" id="edit_save_policy" class="btn main-color">Submit</button>
            </div>
        </form>
    </div>
</div>



