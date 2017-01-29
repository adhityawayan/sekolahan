<?php

/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 13/01/2017
 * Time: 10:12
 */
class Cabang extends MX_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('cabangmodel');
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
    }

    //This function gives all teacher's short informattion in a table view
    public function allCabang() {
        $data['cabang'] = $this->cabangmodel->getAll();
        $this->load->view('temp/header');
        $this->load->view('cabang', $data);
        $this->load->view('temp/footer');
    }

    public function cabangDetails($id)
    {
        $data['cabang'] = $this->common->getWhere('cabang', 'id', $id);
        $data['tschool'] = $this->cabangmodel->getTeacherSchoolByIdCabang($id);
        $this->load->view('temp/header');
        $this->load->view('cabangDetails', $data);
        $this->load->view('temp/footer');
    }

    public function addCabang()
    {
        if($this->input->post('submit'))
        {
            $name = $this->input->post('name');
            $phone = $this->input->post('phone');
            $address = $this->input->post('address');
            $nonaktif = $this->input->post('nonaktif');
            $code = $this->cabangmodel->getkode();

            $data_cabang= array(
                'name' => $name,
                'phone' => $phone,
                'address' => $address,
                'nonaktif' => $nonaktif,
                'code' => $code
            );
            $result = $this->cabangmodel->create($data_cabang);
            if($result)
            {
                $data['success'] = '<div class="alert alert-info alert-dismissable admisionSucceassMessageFont">
                                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button"></button>
                                            <strong>'.lang('success').'</strong> Data Cabang berhasil tersimpan</div>';
                $this->load->view('temp/header');
                $this->load->view('addCabang',$data);
                $this->load->view('temp/footer');
            }
        }
        else
        {
            $this->load->view('temp/header');
            $this->load->view('addCabang');
            $this->load->view('temp/footer');
        }
    }

    public function editCabang($id='')
    {
        if($this->input->post('submit'))
        {
            $name = $this->input->post('name');
            $phone = $this->input->post('phone');
            $address = $this->input->post('address');
            $nonaktif = $this->input->post('nonaktif');
            $id = $this->input->post('id');

            $data_cabang= array(
                'name' => $name,
                'phone' => $phone,
                'address' => $address,
                'nonaktif' => $nonaktif,
            );
            $result = $this->cabangmodel->update($id,$data_cabang);
            if($result)
            {
                $data['success'] = '<div class="alert alert-info alert-dismissable admisionSucceassMessageFont">
                                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button"></button>
                                            <strong>'.lang('success').'</strong> Data Cabang berhasil terupdate</div>';
                $data['cabang'] = $this->cabangmodel->getId($id);
                $this->load->view('temp/header');
                $this->load->view('editCabang',$data);
                $this->load->view('temp/footer');
            }
        }
        else
        {
            $data['cabang'] = $this->cabangmodel->getId($id);
            $this->load->view('temp/header');
            $this->load->view('editCabang',$data);
            $this->load->view('temp/footer');
        }
    }

    public function cabangDelete($id)
    {
        $result = $this->cabangmodel->delete($id);
        if($result)
        {
            $data['success'] = '<div class="alert alert-info alert-dismissable admisionSucceassMessageFont">
                                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button"></button>
                                            <strong>'.lang('success').'</strong> Data Cabang berhasil Dihapus</div>';
            $data['cabang'] = $this->cabangmodel->getAll();
            $this->load->view('temp/header');
            $this->load->view('cabang', $data);
            $this->load->view('temp/footer');
        }
    }

    public function listTeacher($cabang_id)
    {
        $data['teacher'] = $this->cabangmodel->allTeacherNotCabang($cabang_id);
        $data['cabang_id'] = $cabang_id;
        $this->load->view('teachers', $data);
    }

    public function deleteTeacherSchool($id,$cabang_id)
    {
        $result = $this->cabangmodel->deleteTeacherSchool($id);
        if($result)
        {
            alert(3);
            redirect('cabang/cabangDetails/'.$cabang_id);
        }
    }

    public function doTeacherSchool()
    {
        $teachers = $this->input->post('teachers');
        $cabang_id = $this->input->post('cabang_id');
        $jml = 0;
        $into = 0;

        foreach($teachers as $teacher_id)
        {
            $data = array(
                'teacher_id' => $teacher_id,
                'cabang_id' => $cabang_id
            );

            if(!$this->cabangmodel->checkTeacherSchool($teacher_id,$cabang_id))
            {
                $this->cabangmodel->createTeacherSchool($data);
                $into++;
            }
            else
            {
                $jml++;
            }
        }

        if($jml)
        {
            alert('4','Data Mungkin Ada Yang Sama dan sejumlah '.$into.' data yang masuk');
        }
        else
        {
            alert();
        }
        redirect('cabang/cabangDetails/'.$cabang_id);
    }
}