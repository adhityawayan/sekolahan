<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Subject_model extends Base_model {
    /**
     * This model is using into the sclass controller
     * Load : $this->load->model('classmodel');
     */
    function __construct() {
        parent::__construct();
        $this->load->dbforge();
    }

    //This function will return an array which is in class subject by class Id 
    public function class_op_sub($class_id) {
        $data = array();
        $query = $this->db->query("SELECT id,subject_title FROM class_subject WHERE class_id=$class_id AND optional=1");
        foreach ($query->result_array() as $row) {
            $data[] = $row;
        }
        return $data;
    }

    public function allCabang()
    {
        $result = $this->getData('cabang',array('nonaktif'=>0))->result_array();
        if($result)
        {
            return $result;
        }
        return [];
    }

    public function getkode($id)
    {
        $result = $this->getData('cabang',array('id'=>$id))->row_array();
        $code = $result['code'];
        $kode = $this->getkodeunik('class',$code,3);
        return $kode;
    }

    public function getClassByCabang($cabang_id)
    {
        $result = $this->getData('class',array('cabang_id'=>$cabang_id))->result_array();
        if($result)
        {
            return $result;
        }
        return [];
    }

    public function getCabangById($id)
    {
        $result = $this->getData('cabang',array('id'=>$id))->row_array();

        if($result)
        {
            return $result;
        }
        return [];
    }
}
