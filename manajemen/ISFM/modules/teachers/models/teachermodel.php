<?php
if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}
class Teachermodel extends Base_model {
    /**
     * This model is using into the students controller
     * Load : $this->load->model('studentmodel');
     */
    function __construct() {
        parent::__construct();
        $this->load->dbforge();
    }

    //This functiion will return all teacher information
    public function allTeachers() {
        $data = array();
        $query = $this->db->query("SELECT * FROM teachers_info");
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

    public function detailCabang($id)
    {
        $result = $this->getData('cabang', array('id'=>$id))->row_array();
        if($result)
        {
            return $result;
        }
        return [];
    }

    public function getTeacherSchoolByIdCabang($cabang_id)
    {
        $result = $this->getData('teacher_school', array('cabang_id'=>$cabang_id))->result_array();
        foreach($result as $key=>$row)
        {
            $result[$key]['cabang'] = $this->getData('cabang',array('id'=>$row['cabang_id']))->result_array();
            $result[$key]['teacher'] = $this->getData('teacher_info',array('id'=>$row['teacher_id']))->result_array();
        }
        if($result)
        {
            return $result;
        }
        return [];
    }
}
