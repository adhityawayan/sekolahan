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
}