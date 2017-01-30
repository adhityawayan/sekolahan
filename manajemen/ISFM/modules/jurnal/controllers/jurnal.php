<?php

/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 21/01/2017
 * Time: 10:50
 */
class jurnal extends MX_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('jurnalmodel');
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
    }

    public function getClassByCabang($cabang_id)
    {
        $data=array(
            's_class' => $this->common->selectClassByCabang($cabang_id)
        );
        $this->load->view('classAjax',$data);
    }

    public function jurnalDetail($id)
    {
        $data['jurnal'] = $this->jurnalmodel->getId($id);
        $this->load->view('temp/header');
        $this->load->view('editjurnal', $data);
        $this->load->view('temp/footer');
    }

    //This function send class section to view by ajax.
    public function ajaxAttendencePreview() {
        $classTitle = $this->input->get('q', TRUE);
        $query = $this->common->getWhere('class', 'id', $classTitle);
        foreach ($query as $row) {
            $data = $row;
        }
        echo '<input type="hidden" name="class" value="' . $classTitle . '">';
        if (!empty($data['section'])) {
            $section = $data['section'];
            $sectionArray = explode(",", $section);
            echo '<div class="form-group">
                        <label class="col-md-3 control-label"></label>
                        <div class="col-md-4">
                            <select name="section" class="form-control">
                                <option value="all">' . lang('attc_1') . '</option>';
            foreach ($sectionArray as $sec) {
                echo '<option value="' . $sec . '">' . $sec . '</option>';
            }
            echo '</select></div>
                    </div>';
        } else {
            $section = 'This class has no section.';
            echo '<div class="form-group">
                        <label class="col-md-3 control-label"></label>
                        <div class="col-md-6">
                        <div class="alert alert-warning">
                                <strong>' . lang('attc_3') . ' </strong> ' . $section . '
                        </div></div></div>';
        }
    }

    public function addjurnal()
    {
        $data['cabang'] = $this->common->selectCabang();
        $this->load->view('temp/header');
        $this->load->view('addjurnal', $data);
        $this->load->view('temp/footer');
    }

    public function getJurnal()
    {
            $data['cabang'] = $this->common->selectCabang();
            $this->load->view('temp/header');
            $this->load->view('viewjurnal', $data);
            $this->load->view('temp/footer');
    }

    public function filterJurnal()
    {
//        $cabang_id = $this->input->get('cabang_id', TRUE);
        $user = $this->ion_auth->user()->row();
        $user_id = $user->id;
        $class_id = $this->input->get('class_id', TRUE);
        $date = $this->input->get('date', TRUE);
        $data['jurnal'] = $this->jurnalmodel->getByClassDate($class_id,$date,$user_id);
        if($this->ion_auth->is_superadmin())
        {
            $data['jurnal'] = $this->jurnalmodel->getByClassDateByAdmin($class_id,$date);
        }
        if($this->ion_auth->is_admin())
        {
            $data['jurnal'] = $this->jurnalmodel->getByClassDateByAdmin($class_id,$date);
        }
        $data['class_id'] = $class_id;
        $data['date'] = $date;
//            return var_dump($data);
        $this->load->view('temp/header');
        $this->load->view('jurnal', $data);
        $this->load->view('temp/footer');
    }

    public function delete($id)
    {
        $result = $this->jurnalmodel->delete($id);
        if($result)
        {
            $this->load->library('user_agent');
            if ($this->agent->is_referral())
            {
                alert(3);
                redirect($this->agent->referrer());
            }
        }
    }

    public function do_addjurnal()
    {
        $user = $this->ion_auth->user()->row();
        $userId = $user->id;
        $username = $user->username;

        $class_id = $this->input->post('class_id', TRUE);
        $task = $this->input->post('task', TRUE);
        $situasi_kelas = $this->input->post('situasi_kelas', TRUE);
        $catatan = $this->input->post('catatan', TRUE);
//        $query = $this->db->query('SELECT time_zone FROM configuration');
//        foreach ($query->result_array() as $row) {
//            $data = $row['time_zone'];
//        }
        $datestring = "%h:%i %a";
        $now = now();
        $compTime = mdate($datestring, $now);

        $data = array(
            'class_id' => $class_id,
            'task' => $task,
            'situasi_kelas' => $situasi_kelas,
            'catatan' => $catatan,
            'time' => $compTime,
            'date' => strtotime(date("d-m-Y")),
            'user'=> $username,
            'user_id' => $userId,
            'year' => date('Y')
        );
//        return var_dump($data);
        $result = $this->jurnalmodel->create($data);

        if($result)
        {
            alert();
            redirect('jurnal/addjurnal');
        }
    }

    public function do_editjurnal()
    {
        $task = $this->input->post('task', TRUE);
        $situasi_kelas = $this->input->post('situasi_kelas', TRUE);
        $catatan = $this->input->post('catatan', TRUE);
        $id = $this->input->post('id', TRUE);
        /*link*/
        $date = $this->input->post('date', TRUE);
        $class_id = $this->input->post('class_id', TRUE);
        $data = array(
            'task' => $task,
            'situasi_kelas' => $situasi_kelas,
            'catatan' => $catatan
        );
        $result = $this->jurnalmodel->update($id,$data);
        if($result)
        {
            alert(2);
            redirect('jurnal/filterJurnal?date='.$date.'&class_id='.$class_id);
        }
    }

    public function approvalJurnal()
    {
        $data['jurnal'] = $this->common->getApprovalJurnal();
        $this->load->view('temp/header');
        $this->load->view('approvaljurnal', $data);
        $this->load->view('temp/footer');
    }

    public function do_approval($id)
    {
        $condition['approval'] ='1';
        $rowdata = $this->jurnalmodel->getId($id);
        $dataAttedance = array(
            'year' => $rowdata['year'],
            'date' => $rowdata['date'],
            'employ_id' => $rowdata['user_id'],
            'employ_title' => $rowdata['user'],
            'present_or_absent' => 'Present',
            'attend_time' => $rowdata['time']
        );
        $result = $this->jurnalmodel->update($id,$condition);
        if($result)
        {
            if($this->jurnalmodel->check_teacher_attedance(strtotime(date("d-m-Y")),date('Y')))
            {
                $this->jurnalmodel->addTeacherAttedance($dataAttedance);
            }
            alert(2);
            redirect('jurnal/approvalJurnal');
        }
    }
}