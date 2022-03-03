

<div class="modal fade" id="edit_status_modal" style="">
    <div class="modal-dialog modal-md" style="position: absolute;
    left: 50%;
    top: 40%;
    transform: translate(-50%, -50%);">
    <form class="modal-content" action="javascript:;" method="POST" id="update_status">
        <div class="modal-header">
            <h5 class="modal-title">Update Status
            </h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
        </div>
        <div class="modal-body">

            <br>
            <div class="row" >

                <div class="col-md-3" style="padding-right: 0px; padding-left: 20px" >
                    <label class="form-label-lg mb-2" style="font-weight: bold;">Status:
                    </label>
                </div>

                <div class="col-md-9" style="padding-left: 0px">
                    <div class="form-check-inline">
                        <label class="form-check">
                            <input name="view_status" type="radio" class="form-check-input" value="pending" checked>
                            <span class="text-warning">Pending</span>
                        </label>
                    </div>

                    <div class="form-check-inline">
                        <label class="form-check">
                            <input name="view_status" type="radio" class="form-check-input" value="complied">
                            <span class="text-success">Complied</span>
                        </label>
                    </div>

                    <div class="form-check-inline">
                        <label class="form-check">
                            <input name="view_status" type="radio" class="form-check-input" value="failed">
                            <span class="text-danger">Failed</span>
                        </label>
                    </div>

                </div>



                <hr>
                <br>
                <br>



                <div class="col-md-12">

                    <br>

                    <div class="form-group">
                        <div class="shadow-lg p-3 mb-2 bg-white rounded content_field" >
                            <label class="form-label-lg mb-2" style="font-weight: bold;">Notes</label>
                            <textarea class="form-control " name="view_notes" id="view_notes" cols="30" rows="6" placeholder="Please provide your notes here."></textarea>
                        </div>
                    </div>
                </div>


            </div>

        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Back</button>
            <button type="submit" id="update_status_btn" class="btn btn-primary">Update</button>
        </div>
    </form>
</div>
</div>