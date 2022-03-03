    <div class="modal fade" id="filter_modal" style="">
        <div class="modal-dialog modal-md" >
            <form class="modal-content" action="javascript:;" method="POST" id="filter_form">
                <div class="modal-header">
                    <h5 class="modal-title filter_title">Filter Table
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body">

                    <div class="row justify-content-center" style="padding: 20px">
                        <div class="col-md-6">

                            <div class="card spaced-card" style="padding: 20px">
                                <div class="form-group" style="font-weight: bold;">
                                    <label class="form-label-lg" >Letter Date</label>

                                    <br>
                                    <br>

                                    <div class="form-group">
                                        <select id="filter_duedate"  class="selectpicker form-control" data-style="btn-default"  style="width: 100%">

                                            <option value="all" >All</option>
                                            <option value="specific_dates" >Specific Dates</option>

                                        </select>
                                    </div>


                                    <hr>
                                    <br>

                                    <div class="specific_duedate_content" hidden>
                                        <div class="form-group">
                                            <span class="text-warning text-main">From:</span>  
                                            <input type="text" style="padding-top: 5px !important;" id="filter_from" class="date_amended dan_datepicker form-control" placeholder="DD/MM/YYYY" data-dtp="dtp_BUxli" value="<?php echo date('d/m/Y'); ?>">
                                        </div>



                                        <div class="form-group">
                                            <span class="text-warning text-main" >To:</span>  
                                            <input type="text" style="padding-top: 0px !important;" id="filter_to" class="date_amended dan_datepicker form-control" placeholder="DD/MM/YYYY" data-dtp="dtp_BUxli" value="<?php echo date('d/m/Y'); ?>">
                                        </div>
                                    </div>

                                    <br>



                                </div>
                            </div>



                        </div>
                        <div class="col-md-6" hidden>

                            <div class="card spaced-card" style="padding: 20px">

                                <div class="form-group">
                                    <label class="form-label-lg" style="font-weight: bold;">Staff/Contractor</label>

                                    <br>
                                    <br>

                                    <div class="form-group">

                                        <select id="filter_responsible"  class="selectpicker form-control" data-style="btn-default"  style="width: 100%">
                                            <option value="all" >All</option>
                                            <option value="specific_roles" >Specific Role</option>
                                            <option value="specific_staff" >Specific Staff</option>
                                        </select>
                                    </div>


                                    <hr>
                                    <br>



                                    <div class="specific_roles_content" hidden>

                                        <select id="filter_roles"  class="selectpicker form-control" data-style="btn-default"  data-live-search="true" style="width: 100%">

                                            <?php foreach ($contractor_list as $key => $value): ?>
                                                <option value="<?php echo $key ?>" ><?php echo $key ?></option>
                                            <?php endforeach ?>

                                        </select>



                                    </div>


                                    <div class="specific_staff_content" hidden>

                                     <select id="filter_staff"  class="selectpicker form-control" data-style="btn-default"  data-live-search="true" style="width: 100%">

                                        <?php 

                                        $staff_array = array();

                                        foreach ($contractor_list as $key => $value) {

                                            foreach ($value as $key => $value2) {
                                                array_push($staff_array, $value2['first_name'].' '.$value2["last_name"]);
                                            }

                                        }

                                        $staff_array = array_unique($staff_array, SORT_REGULAR);

                                        usort($staff_array, function($first, $second){

                                            return $first > $second;
                                        });


                                        ?>

                                        <?php foreach ($staff_array as $key => $value): ?>

                                            <option value='<?php echo $value; ?>'><?php echo $value; ?></option>

                                        <?php endforeach ?>

                                    </select>






                                </div>


                            </div>
                        </div>

                    </div>
                    <div class="col-md-6">

                        <div class="card spaced-card" style="padding: 20px">

                            <div class="form-group">
                                <label class="form-label-lg" style="font-weight: bold;">Email Status</label>

                                <br>
                                <br>

                                <div class="form-group">
                                    <select id="filter_status"  class="selectpicker form-control" data-style="btn-default" style="width: 100%">
                                        <option value="all" >All</option>  
                                        <option value="1">Sent</option>
                                        <option value="0">Not yet Sent</option>
                                    </select>
                                </div>

                                <br>
                                <br>

                            </div>

                        </div>

                    </div>
                    <!-- <div class="col-md-3 created_by_content">

                        <div class="card spaced-card" style="padding: 20px" >

                            <div class="form-group">
                                <label class="form-label-lg" style="font-weight: bold;">Created By</label>

                                <br>
                                <br>

                                <div class="form-group">
                                    <select id="filter_created_by"  class="selectpicker form-control" data-style="btn-default" style="width: 100%">
                                        <option value="all" <?php echo $user_details['id'] == 1 ? 'selected' : '';  ?> >All</option>  
                                        <option value="<?php echo $user_details['name'] ?>" <?php echo $user_details['id'] != 1 ? 'selected' : '';  ?>  ><?php echo $user_details['name']; ?></option>
                                        <option value="specific_user" >Specific User</option>
                                    </select>

                                </div>

                                <hr>
                                <br>

                                <div class="specific_user_content" hidden>

                                    <select id="filter_user"  class="selectpicker form-control" data-style="btn-default"  data-live-search="true" style="width: 100%">

                                        <?php 

                                        $user_array = array();

                                        foreach ($cap_list as $key => $value) {

                                            array_push($user_array, (object)[
                                                'id' => $value->user_id,
                                                'name' => $value->created_by
                                            ]);

                                        }

                                        $user_array = array_unique($user_array, SORT_REGULAR);

                                        usort($user_array, function($first, $second){

                                            return $first > $second;

                                        });

                                        ?>

                                        <?php foreach ($user_array as $key => $value): ?>

                                            <option value='<?php echo $value->name;; ?>'><?php echo $value->name; ?></option>

                                        <?php endforeach ?>
                                    </select>


                                </div>

                            </div>

                        </div>

                    </div> -->
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Back</button>
                <button type="button" id="filter_button" class="btn main-color2">Filter Table</button>
                <button type="button" id="generate_button" class="btn main-color3" >Generate Report</button>
            </div>
        </form>
    </div>
</div>
