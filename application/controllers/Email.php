<?php defined('BASEPATH') or exit('No direct script access allowed');

class Email extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function check_status(){

        date_default_timezone_set('NZ');

        ini_set('max_execution_time', '0'); 

        // $type = array('pending', 'Management');

        $this->db->select('cap.*, cap.id as cap_id,  users.name as created_by');  
        $this->db->from('cap');
        $this->db->join('users', 'cap.user_id = users.id');
        $this->db->where('status', 'pending');      

        $result = $this->db->get()->result();

        $current_date = date('Y-m-d');


        foreach ($result as $key => $value) {

            $due_date = $value->due_date;
            $fifteen_days_left = date("Y-m-d", strtotime('-15 day', strtotime($due_date)));
            $five_days_left = date("Y-m-d", strtotime('-5 day', strtotime($due_date)));


            if(  $current_date >= $fifteen_days_left ){


                $cap_id = $value->cap_id;
                $obligation = $value->description;

                if( $current_date == $fifteen_days_left ){

                    $days_left = '15 days left';
                    $message = '';

                    $this->send_email($obligation, $due_date, $days_left, $message, $cap_id);

                }else if( $current_date == $five_days_left ){

                    $days_left = '5 days left';
                    $message = 'Please contact the management if you are wanting an extension.';

                    $this->send_email($obligation, $due_date, $days_left, $message, $cap_id);

                }else if( $current_date == $due_date ){

                    $days_left = 'today';
                    $message = 'Please contact the management if you are not able to comply with this obligation by the end of the day.';

                    $this->send_email($obligation, $due_date, $days_left, $message, $cap_id);

                }else if( $current_date > $due_date){

                    $data = array(
                        'status' => 'failed',
                    ); 

                    $this->db->where('id', $value->cap_id);
                    $this->db->update('cap', $data);

                    $days_left = 'overdue';
                    $message = 'You failed to comply with your CAP responsibility. Please contact the management immediately. ';

                    $this->send_email($obligation, $due_date, $days_left, $message, $cap_id);
                }



                


            }





        }



    }



    private function send_email($obligation, $due_date, $days_left, $message, $id){

        $due_date = date('d/m/Y', strtotime($due_date));


        $portal = $this->load->database('portal', TRUE);

        $this->db->select('*');  
        $this->db->from('cap_res');
        $this->db->where('cap_res.cap_id', $id);


        $query = $this->db->get();

        $result = $query->result();


        foreach($result as $row){

            $portal->select('*');
            $portal->from('ta_user');
            $portal->where('ta_user.id_user', $row->contractor_id);
            $ta_user = $portal->get()->row();

            $row->contractor_name = $ta_user->first_name.' '.$ta_user->last_name;
            $row->user_type = $ta_user->id_user_type;
            $row->email = $ta_user->email_address;

        }


        usort($result, function($a, $b) { return $b->user_type - $a->user_type; });

        $staff = ''; 
        $roles = ''; 
        $roles_array = array();

        $staff_name = array();
        $staff_role = array();

        $table_html = '<table style="border-collapse: collapse; width: 55.7196%; height: 36px;" border="1"> <tbody>';


        foreach ( $result as $key => $value) {
            array_push($staff_name, $value->contractor_name );
            array_push($staff_role, $this->get_roles($value->user_type) );
        } 


        $staff_reponsible = $result;

        // $roles_array = array_unique($roles_array, SORT_REGULAR);

        // foreach ($roles_array as $key => $value) {
        //     $roles .= $value.', ';
        // }

        // // $staff = substr_replace($staff ,"", -7);
        // $roles = substr_replace($roles ,"", -2);

        foreach( $result as $row ){

            $this->email->from('executive.admin@eliteinsure.co.nz', 'Eliteinsure CAP');
            $this->email->to( $row->email );


            if($days_left == '15 days left' || $days_left == '5 days left'){

                // $this->email->cc('executive.admin@eliteinsure.co.nz');
                $this->email->cc('dan.ray@eliteinsure.co.nz');

            }else{

                // $this->email->cc('executive.admin@eliteinsure.co.nz, sumit@eliteinsure.co.nz');
                // $this->email->cc('jeaniva@eliteinsure.co.nz, dan.ray@eliteinsure.co.nz');

            }


            $this->email->subject('CAP Compliance Obligation Reminder');


            $data['obligation'] = $obligation; 
            $data['due_date'] = $due_date;  
            $data['days_left'] = $days_left;
            $data['staff_name'] = $staff_name;
            $data['staff_role'] = $staff_role; 
            $data['message'] = $message;

            $html_content =  $this->load->view('cap_reminder', $data, true);


            // $this->email->message(''.
            //     '<p>Obligation:  &nbsp;'.$obligation.'<br>Due Date:  &nbsp;&nbsp;  '.$due_date.' &nbsp; ('.$days_left.') 
            //     <br><br>Staff/Contractor Responsible: </p>

            //     '.$table_html.'

            //     <p>'.$message.'</p>
            //     <p><small>(This e-mail was sent from a CAP reminder on Eliteinsure Register Software.)</p><small>'
            // );

            $this->email->message($html_content);



            $this->email->send();

            echo  $this->email->print_debugger();
        }






    }




    public function get_roles($value){

        $roles = '';

        switch ( $value ) {
            case "1":
            $roles = 'Manager Account';
            break;
            case "2":
            $roles = 'Adviser';
            break;
            case "3":
            $roles = 'Compliance Officer';
            break;
            case "4":
            $roles = 'Admin';
            break;
            case "5":
            $roles = 'Face Marketer';
            break;
            case "6":
            $roles = 'Telemarketer';
            break;
            case "7":
            $roles = 'ADR';
            break;
            case "8":
            $roles = 'SADR';
            break;
            case "9":
            $roles = 'IT Specialist';
            break;
        }


        return $roles;
    }









}
