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
}