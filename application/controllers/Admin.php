<?php

use Dotenv\Dotenv;

require_once __DIR__ . '../../../vendor/autoload.php';

defined('BASEPATH') or exit('No direct script access allowed');

header('Access-Control-Allow-Origin: *');

class Admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $dotenv = Dotenv::createImmutable(FCPATH);
        $dotenv->load();
    }

    public function index()
    {

        if (isset($_GET['token'])) {
            redirect('admin/list?token='.$_GET['token'].'&type='.$_GET['type']);
        } else {
            $this->load->view('admin/access_denied');
        }
    }

    public function access_denied()
    {
        $this->load->view('admin/access_denied');
    }

    public function provide_password()
    {
        $this->load->view('admin/provide_password');
    }

    public function submit_password()
    {
        echo $this->admin_model->submit_password() ? 1 : 0;
    }

    public function answer_question()
    {
        echo $this->admin_model->answer_question() ? 1 : 0;
    }



/////////// Dans Additional Code //////////////////

    public function add_report()
    {

        // echo $this->admin_model->add_report() ? 1 : 0;

        echo $this->admin_model->add_report();
    }


    public function list()
    {
        if (isset($_GET['token'])) {
            $token = $this->checkToken($_GET['token']);

            if (1 == $token) {

                $report_list = $this->admin_model->report_list();

                $data['contractor_list'] = $this->admin_model->contractor_list();
                $data['query'] = $this->db->last_query();
                $data['access_token'] = $_GET['token'];
                $data['user_details'] = $this->admin_model->getUserID($_GET['token']);

                $data['report_list'] = $report_list;

                // print_r($data['report_list']);

                $this->load->view('admin/report/list', $data);

            } else {
                $this->load->view('admin/access_denied');
            }
        } else {
            $this->load->view('admin/access_denied');
        }
    }




    public function fetch_report()
    {
        if (isset($_GET['token'])) {
            $token = $this->checkToken($_GET['token']);

            $id = $_GET['id'];


            if (1 == $token) {

                $report_result = $this->admin_model->get_report($id);

                $data['report'] = $report_result; 
                $data['report_id'] = $report_result; 

                $data['access_token'] = $_GET['token'];
                $data['user_details'] = $this->admin_model->getUserID($_GET['token']);

                $data['success']  = true;
                
                echo json_encode($data);  

            } else {

                $data['success']  = false;
                echo json_encode($data);  

            }

        }else{

            $data['success']  = false;
            echo json_encode($data);  

        }
    }


    public function fetch_list_report()
    {


        $user_id = $this->admin_model->getUserID($_GET['token'])['user_id'];
        
        if($user_id == 1){
            $data = $this->admin_model->report_list();
        }else{
            $data = $this->admin_model->report_list_user_id($user_id);
        }

        
        $list['user_id'] = $user_id;
        $list['data'] = $data;
        echo json_encode($list);  

    }


    public function filter_report()
    {

        $filter_duedate = $this->input->post('filter_duedate');

        $filter_from = explode("/", $this->input->post('filter_from'));
        $filter_to = explode("/", $this->input->post('filter_to'));

        // $filter_responsible = $this->input->post('filter_responsible');
        // $filter_roles = $this->input->post('filter_roles');
        // $filter_staff = $this->input->post('filter_staff');

        // $filter_created_by = $this->input->post('filter_created_by');
        // $filter_user = $this->input->post('filter_user');

        $filter_status = $this->input->post('filter_status');

        //////////////////////////////////


        if($filter_duedate == 'specific_dates'){

            $filter_from =  $filter_from[2].'-'.$filter_from[1].'-'.$filter_from[0];
            $filter_to   =  $filter_to[2].'-'.$filter_to[1].'-'.$filter_to[0];

            $query = $this->db->query('SELECT `report`.*, `report`.`id` as `report_id`, `users`.`name` as `created_by` FROM `report` JOIN `users` ON `report`.`user_id` = `users`.`id` WHERE (report.date_report >= "'.$filter_from.'" AND report.date_report <= "'.$filter_to.'") ');  

            $data = $query->result();
            

            $query = $this->db->last_query();

        }else{

            $this->db->select('report.*, report.id as report_id,  users.name as created_by');  
            $this->db->from('report');
            $this->db->join('users', 'report.user_id = users.id');  

            $query = $this->db->get();
            $data = $query->result();

            $query = $this->db->last_query();

        }


        if($filter_status != 'all'){

            $data = array_filter($data, function ($row) use ($filter_status){  
                return  $this->like_match('%'.$filter_status.'%', $row->is_email_sent) ?  true : false;
            });

            $filtered_data = array();

            foreach ($data as $key => $value) {
                array_push($filtered_data, $value);
            }

            $data = $filtered_data;

        }


        // $list['filter_user'] = $filter_data;
        $list['data'] = $data;
        echo json_encode($list);  


    }



    public function view_pdf($id){

        $html = $this->create_html_pdf($id);

        $mpdf = new \Mpdf\Mpdf();
        ob_clean();
        $mpdf->SetTitle($html['id_num']);
        $mpdf->AddPage('P','','','','',28,0,40,20,10,10);
        $mpdf->SetHTMLHeader($html['header'],'',true);
        $mpdf->SetHTMLFooter($html['footer']);
        $mpdf->WriteHTML($html['body']);
        $mpdf->Output();    


    }


    public function send_email(){

        $report_id = $this->input->post('report_id');

        $result = $this->admin_model->get_report($report_id);

        $html = $this->create_html_pdf($report_id);


        $mpdf = new \Mpdf\Mpdf();
        ob_clean();
        $mpdf->SetTitle($html['id_num']);
        $mpdf->AddPage('P','','','','',28,0,40,20,10,10);
        $mpdf->SetHTMLHeader($html['header'],'',true);
        $mpdf->SetHTMLFooter($html['footer']);
        $mpdf->WriteHTML($html['body']);

        $content = $mpdf->Output('', 'S');
        $filename = $html['id_num'].".pdf";

        $this->email->from('admin@eliteinsure.co.nz', 'Eliteinsure Letter');
        $this->email->to( $result->rec_email );
        $this->email->cc($result->rec_cc_email);
        $this->email->bcc('tom@eliteinsure.co.nz');
        $this->email->subject($result->subject);

        $this->email->attach($content, 'attachment', $filename, 'application/pdf');

        $info['letter'] = 'Letter Body';

        $body = $this->load->view('admin/report/email_template',$info,true);

        $this->email->message($body);

        
        $data['is_success'] = $this->email->send();
        $data['errors'] = $this->email->print_debugger();

        if($data['is_success'] == true){

            $this->db->set('is_email_sent', true);      
            $this->db->where('id', $report_id);  
            $this->db->update('report');  

        }

        echo json_encode($data);

    }

    public function update_report()
    {
    // echo $this->admin_model->update_merit() ? 1 : 0;

        echo $this->admin_model->update_report();
    }



    public function update_status(){
        echo $this->admin_model->update_status();  
    }

    public function delete_report(){
        return $this->admin_model->delete_report() ? 1 : 0;
    }





    ///////////////////////



    public function create_html_pdf($id){

        $report = $this->admin_model->get_report($id);

        $id_num = $report->id_num;
        $subject = $report->subject;
        $wri_name = $report->wri_name;
        $wri_position = $report->wri_position;
        $date_report = $report->date_report; 
        $rec_name = $report->rec_name;
        $rec_company = $report->rec_company;
        $rec_position = $report->rec_position;
        $rec_address =$report->rec_address;
        $content = $report->content;
        $rec_position = $report->rec_position;
        $display_signature = $report->display_signature;


        $date_report = explode("/", $report->date_report);
        $date_report = $date_report[2].'-'.$date_report[1].'-'.$date_report[0];
        $date_report = date("jS F Y", strtotime($date_report));

        $html = '

        <style>
        pre {font-family: Trebuchet MS, sans-serif
        }

        @page{
            margin-left: 120px;
            margin-right: 50px;
            margin-bottom: 50mm;
        }

        .response{
            text-align: justify;
            text-justify: inter-word;
        }

        #title{
        text-align: center;
    }   

    p , pre{
      font-size: 14px;

  }

  .no_break{
    page-break-inside: avoid !important;
}

.content_description p{
    text-align: justify !important;
    text-justify: inter-word !important;
}

</style>

<body style="font-family: Trebuchet MS, sans-serif ">

<div style="position:absolute;top:0.26in;left:0in;width:90px;line-height:0.27in; background-color: #455a73;height:70px;">
<span style="background-colro:red"></span>
</div>


<div style="position:absolute;top:0.72in;left:5.18in;width:4.36in;line-height:0.27in;">
<span style="font-style:normal;font-weight:bold;font-size:15pt;font-family:Calibri;color:#44546a">
</span>
</div>
<div style="position:absolute;top:0.18in;left:1.20in;width:20.36in;line-height:0.27in;">

<img src="img/elitelogo.png" alt="eliteinsure" class="logo" width="100"/>

</div>

<div style="position:absolute;top:0.26in;left:7.4in;width:90px;line-height:0.27in; background-color: #1881c7;height:70px;">

<span style="background-colro:red"></span><br><br><br>

</div>

<div style="position:absolute;top:0.58in;left:6.0in;width:300px;line-height:0.27in;">
<p> '.$id_num.'</p>
</div>


<div style="position:absolute;top:1.26in;left:1.1in;width:190px;line-height:0.27in;">
<p>
'.$date_report.'
</p>
</div>

<div id="recipient" style="position:absolute;top:1.90in;left:1.1in;width:300px;line-height:0.17in;">
<p>
<strong>'.$rec_name.'</strong>
</p>
<p>'.$rec_position.'</p>
<p>'.$rec_company.'</p>
<pre style="white-space: pre-line !important;">'.$rec_address.'</pre>
</div>

<br><br>
<br><br>
<br><br>
<br>


<div style="width:600px; left:10px !important; line-height:0.17in; ">

<br>
<br>

<div style="font-family: calibri; text-align: center ; color:#3b76d4; font-size: 20px; letter-spacing: .2px; margin-bottom: 0px !important;">  <b>'.$subject.'</b>
</div>

<hr style="color:#3b76d4; marign: 0px !important">

<div class="content_description">'.$content.'</div>
<br><br>


<div class="no_break">

<div style="text-align: center; width:120px; padding-top: -20px;">
<p style="font-size: 13px; font-weight: bold">'.$wri_name.'</p>
</div>

<div style="text-align: center; width:120px; padding-top: -26px;">
<hr style="  border-top: 1px dotted black;">
</div>
<div style="text-align: center; width:120px; padding-top: -20px;">
<p style="font-size: 13px;">'.$wri_position.'</p>
</div>

</div>


</div>

</body>';

$htmlheader = '
<div style="position:absolute;top:0.26in;left:0in;width:90px;line-height:0.27in; background-color: #455a73;height:70px;">
<span style="background-colro:red"></span>
</div> 
<div style="position:absolute;top:0.72in;left:5.18in;width:4.36in;line-height:0.27in;">
<span style="font-style:normal;font-weight:bold;font-size:15pt;font-family:Calibri;color:#44546a"></span>
</div>
<div style="position:absolute;top:0.18in;left:1.20in;width:20.36in;line-height:0.27in;">
<img src="img/elitelogo.png" alt="eliteinsure" class="logo" width="100"/>
</div>

<div style="position:absolute;top:0.26in;left:7.4in;width:90px;line-height:0.27in; background-color: #1881c7;height:70px;">

<span style="background-colro:red"></span><br><br><br>

</div>
';

$htmlFooter = ' 
<div class="footer" style="font-size:6pt;">
<img src="img/logo.png" alt="eliteinsure" class="logo" width="200"/>
<div style="margin-left:460px; margin-top:-15px;" >
<a style="font-size:11px;" href="https://eliteinsure.co.nz" class="footer-link" target="_blank">
www.eliteinsure.co.nz
</a>&nbsp;|&nbsp;Page
{PAGENO}
</div>
</div>
';


$data['id_num'] = $id_num;
$data['header'] = $htmlheader;
$data['body']   = $html;
$data['footer'] = $htmlFooter;

return $data;

}



public function like_match($pattern, $subject)
{
    $pattern = str_replace('%', '.*', preg_quote($pattern, '/'));
    return (bool) preg_match("/^{$pattern}$/i", $subject);
}



    //////////////////////////////////////////////

public function checkToken($token)
{
    return $this->admin_model->checkToken($token) ? 1 : 0;
}

}
