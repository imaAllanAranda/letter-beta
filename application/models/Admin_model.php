<?php

use Dotenv\Dotenv;

require_once __DIR__ . '../../../vendor/autoload.php';

defined('BASEPATH') or exit('No direct script access allowed');

class Admin_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $dotenv = Dotenv::createImmutable(FCPATH);
        $dotenv->load();
    }


    public function submit_password()
    {
        $this->db->select('*')->from('ta_cir');
        $this->db->where('link_password', $this->input->post('password'));
        $this->db->where('report_number', $this->input->post('report_number'));
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            $data = array('access_status' => 1);
            $this->db->where('report_number', $this->input->post('report_number'));
            $res = $this->db->update('ta_cir', $data);

            return 1;
        } else {
            return 0;
        }
    }


    public function submit_login()
    {
        $this->db->select('*')->from('ta_cir');
        $this->db->where('report_number', $this->input->post('report_number'));

        $getEmail = $this->db->get();
        $data = $getEmail->row_array();
        $rep_id = $data['representative_id'];

        $this->db->select('*')->from('users');
        $this->db->where('id', $rep_id);
        $query = $this->db->get();
        $data = $query->row_array();
        $pass = $data['password'];
        $email = $data['email'];

        $password = $this->input->post('password');

        if ($this->bcrypt->check_password($password, $pass) && $email == $this->input->post('email')) {
            $data = array('access_status' => 1);
            $this->db->where('report_number', $this->input->post('report_number'));
            $res = $this->db->update('ta_cir', $data);

            return 1;
        } else {
            return 0;
        }
    }

    public function generateRandomString($length = 5)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';

        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }

        return $randomString;
    }


    public function checkToken($token)
    {
        $this->db->select('*')->from('personal_access_tokens');
        $this->db->where('token', $token);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->result_array();
        } else {
            return 0;
        }
    }

    public function getUserID($token)
    {
        $this->db->select('*, b.id as user_id')->from('personal_access_tokens a');
        $this->db->join('users b', 'b.id = a.tokenable_id', 'left');
        $this->db->where('token', $token);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->row_array();
        } else {
            return 0;
        }
    }


    public function contractor_list()
    {


        $portal = $this->load->database('portal', TRUE);

        $portal->select('*');
        // $portal->from('ta_user');
        // $portal->where('status', 1);
        // $portal->like('email_address', 'eliteinsure.co.nz', 'before'); 
        // $portal->order_by('first_name', 'asc');
        // $portal->group_by("email_address");
        // $query = $portal->get();

        // ORDER BY first_name asc

        // $query = $portal->query('SELECT * FROM ta_user a WHERE email_address like "%eliteinsure.co.nz" AND status = "1" AND id_user_type = "'.$type.'" GROUP BY email_address ');

        $query = $portal->query('SELECT * FROM ta_user a WHERE a.id_user IN (SELECT MAX(id_user) FROM ta_user WHERE id_user != "1" and  status = "1" and email_address like "%eliteinsure.co.nz" GROUP BY email_address) ');

        $result = $query->result_array();


        $data['Manager Account']  = $this->get_contractor_type(  $result,  1);
        $data['Compliance Officer']  = $this->get_contractor_type($result,  3);
        $data['Admin']  = $this->get_contractor_type($result, 4);
        $data['Adviser']  = $this->get_contractor_type($result, 2);
        $data['Face Marketer']  = $this->get_contractor_type($result, 5);
        $data['Telemarketer']  = $this->get_contractor_type($result, 6);
        $data['IT Specialist']  = $this->get_contractor_type($result, 9);
        $data['SADR']  = $this->get_contractor_type($result, 8);
        $data['ADR']  = $this->get_contractor_type($result, 7);

        return $data;

    }



    public function get_contractor_type( $result, $type )
    {

        $data = array_filter($result, function ($row) use ($type){  
            return  $row['id_user_type'] == $type ?  true : false;
        });

        $filtered_data = array();

        foreach ($data as $key => $value) {
            array_push($filtered_data, $value);
        }

        usort($filtered_data, function($first, $second){

            return $first['first_name'] > $second['first_name'];

        });

        return $filtered_data;

    }



    // public function get_contractor_type($type)
    // {

    //     $portal = $this->load->database('portal', TRUE);

    //     // $portal->select('*');
    //     // $portal->from('ta_user');
    //     // $portal->where('id_user_type', $type);
    //     // $portal->where('status', 1);
    //     // $portal->like('email_address', 'eliteinsure.co.nz', 'before'); 
    //     // $portal->order_by('first_name', 'asc');
    //     // $portal->group_by("email_address");
    //     // $query = $portal->get();

    //     // ORDER BY first_name asc

    //     // $query = $portal->query('SELECT * FROM ta_user a WHERE email_address like "%eliteinsure.co.nz" AND status = "1" AND id_user_type = "'.$type.'" GROUP BY email_address ');

    //     $query = $portal->query('SELECT * FROM ta_user a WHERE a.id_user IN (SELECT MAX(id_user) FROM ta_user WHERE status = "1" and email_address like "%eliteinsure.co.nz" AND id_user_type = "'.$type.'" GROUP BY email_address) ');

    //     return $query->result_array();

    // }


    public function get_report_res($id)
    {

        $portal = $this->load->database('portal', TRUE);

        $this->db->select('*');  
        $this->db->from('report_res');
        $this->db->where('report_res.report_id', $id);


        $query = $this->db->get();

        $result = $query->result();


        foreach($result as $row){

            $portal->select('*');
            $portal->from('ta_user');
            $portal->where('ta_user.id_user', $row->contractor_id);
            $ta_user = $portal->get()->row();

            $row->contractor_name = $ta_user->first_name.' '.$ta_user->last_name;
            $row->user_type = $ta_user->id_user_type;   
        }



        return $result;

    }

/// Dans Additional Code ///////////
    public function get_report($id)
    {

        $this->db->select('letter.*, letter.id as report_id,  users.name as created_by');  
        $this->db->from('letter');
        $this->db->join('users', 'letter.user_id = users.id');   
        $this->db->where('letter.id', $id);  
        $query = $this->db->get()->row();

        $query->date_report = date('d/m/Y', strtotime($query->date_report));


        return $query;

    }


    public function report_list()
    {
        $this->db->select('letter.*, letter.id as report_id, users.name as created_by');  
        $this->db->from('letter');
        $this->db->join('users', 'letter.user_id = users.id');      
        $this->db->order_by('letter.id', 'desc');

        $query = $this->db->get();
        return $query->result();
    }

    public function report_list_user_id($user_id)
    {
        $this->db->select('letter.*, letter.id as report_id, users.name as created_by');  
        $this->db->from('letter');
        $this->db->join('users', 'letter.user_id = users.id');     
        $this->db->where('letter.user_id', $user_id);   
        $this->db->order_by('letter.id', 'desc');

        $query = $this->db->get();
        return $query->result();
    }


    public function count_report_year($year){

        $this->db->select('letter.*');  
        $this->db->from('letter');  
        $this->db->where('YEAR(letter.date_created)', $year);   

        $count = $this->db->get()->num_rows();

        return $count;

    }

    public function add_report(){

        date_default_timezone_set('NZ');

        $user_id = $this->checkToken(str_replace(' ','', $this->input->post('token')))[0]['tokenable_id'];

        $date_report = explode("/", $this->input->post('date_report'));

        $data = array(
            'user_id' => $user_id,      
            'id_num' => '',      
            'rec_name' => $this->input->post('rec_name'),
            'rec_company' => $this->input->post('rec_company'),
            'rec_address' => $this->input->post('rec_address'),
            'rec_position' => $this->input->post('rec_position'),
            'rec_email' => $this->input->post('rec_email'),
            'subject' => $this->input->post('subject'),
            'content' => $this->input->post('content'),
            'wri_name' => $this->input->post('wri_name'),
            'wri_position' => $this->input->post('wri_position'),
            'display_signature' => $this->input->post('display_signature'),
            'date_report' => $date_report[2].'-'.$date_report[1].'-'.$date_report[0],
            'date_created' => date('Y-m-d H:i:s'),
            'rec_cc_email' => $this->input->post('rec_cc_email'),
        ); 

        $res = $this->db->insert('letter', $data);

        $last_id = $this->db->insert_id();


        ///////////////////////////////////////

        $year = date('Y');

        $last_count = $this->count_report_year($year);
        $padded_id = sprintf("%04d", $last_count);

        $id_number = 'LETTEREI'.$year.$padded_id;

        ////////////////////////////////////////

        $this->db->set('id_num', $id_number);      
        $this->db->where('id', $last_id);  
        $this->db->update('letter');  

        $result['success'] = true;
        $result['report_id'] = $last_id;

        return json_encode($result);

        // return $this->db->last_quer y();

    }


    public function update_report(){

        date_default_timezone_set('NZ');

        $last_id = $this->input->post('report_id');

        $user_id = $this->checkToken(str_replace(' ','', $this->input->post('token')))[0]['tokenable_id'];

        $date_report = explode("/", $this->input->post('date_report'));


        $data = array(  
            'rec_name' => $this->input->post('rec_name'),
            'rec_company' => $this->input->post('rec_company'),
            'rec_address' => $this->input->post('rec_address'),
            'rec_position' => $this->input->post('rec_position'),
            'rec_email' => $this->input->post('rec_email'),
            'rec_cc_email' => $this->input->post('rec_cc_email'),
            'subject' => $this->input->post('subject'),
            'content' => $this->input->post('content'),
            'wri_name' => $this->input->post('wri_name'),
            'wri_position' => $this->input->post('wri_position'),
            'display_signature' => $this->input->post('display_signature'),
            'date_report' => $date_report[2].'-'.$date_report[1].'-'.$date_report[0],
        ); 

        $this->db->where('id', $last_id);
        $this->db->update('letter', $data);

        return 1;

    }


    public function update_status(){

        date_default_timezone_set('NZ');

        $last_id = $this->input->post('report_id');

        $data = array(
            'status' => $this->input->post('status'),
            'notes' => $this->input->post('notes'),
        ); 

        $this->db->where('id', $last_id);
        $this->db->update('letter', $data);

        return 1;

    }



    public function delete_report(){

        $this->db->where('id', $this->input->post('id'));
        $this->db->delete('letter');

        return 1;
    }

}
