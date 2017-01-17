<?php

/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 13/01/2017
 * Time: 10:18
 */
class cabangmodel extends Base_model
{
    protected $table = 'cabang';

    public function __construct()
    {
        parent::__construct();
    }

    public function getAll()
    {
        $result = $this->get($this->table)->result_array();
        if($result)
        {
            return $result;
        }
        return [];
    }

    public function getId($id)
    {
        $condition['id']=$id;
        $pagedata = $this->getData($this->table,$condition)->row_array();
        if($pagedata)
        {
            return $pagedata;
        }
        return [];
    }

    public function create($data=array())
    {
        $query = $this->addData($this->table,$data);
        if($query)
        {
            return TRUE;
        }
        return FALSE;
    }

    public function update($id,$data=array())
    {
        $condition['id'] = $id;
        $query = $this->updateData($this->table,$data,$condition);
        if($query)
        {
            return TRUE;
        }
        return FALSE;
    }

    public function delete($id)
    {
        $condition['id']=$id;
        $query = $this->deleteData($this->table,$condition);
        if($query)
        {
            return TRUE;
        }
        return FALSE;
    }

    public function getkode()
    {
        $kode = $this->getkodeunik($this->table,'CB');
        return $kode;
    }

    public function getTeacherSchoolByIdCabang($cabang_id)
    {
        $result = $this->getData('teacher_school', array('cabang_id'=>$cabang_id))->result_array();
        foreach($result as $key=>$row)
        {
            $result[$key]['cabang'] = $this->getData('cabang',array('id'=>$row['cabang_id']))->row_array();
            $result[$key]['teacher'] = $this->getData('teachers_info',array('id'=>$row['teacher_id']))->row_array();
        }
        if($result)
        {
            return $result;
        }
        return [];
    }

    public function allTeachers()
    {
        $result = $this->get('teachers_info')->result_array();
        if($result)
        {
            return $result;
        }
        return [];
    }

    public function createTeacherSchool($data=array())
    {
        $result = $this->addData('teacher_school',$data);
        if($result)
        {
            return TRUE;
        }
        return FALSE;
    }

    public function deleteTeacherSchool($id)
    {
        return $this->deleteData('teacher_school',array('id'=>$id));
    }

    public function checkTeacherSchool($teacher_id,$cabang_id)
    {
        $result = $this->getData('teacher_school',array('teacher_id'=>$teacher_id,'cabang_id'=>$cabang_id))->num_rows();
        if($result)
        {
            return TRUE;
        }
        return FALSE;
    }
}