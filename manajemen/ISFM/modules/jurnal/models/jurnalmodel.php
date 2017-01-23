<?php

/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 21/01/2017
 * Time: 10:51
 */
class jurnalmodel extends Base_model
{
    protected $table = 'jurnal';

    public function __construct()
    {
        parent::__construct();
    }

    public function getAll()
    {
        $pagedata = $this->getData($this->table,array('status'=>0))->result_array();
        if($pagedata)
        {
            return $pagedata;
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

    public function getByClassDate($class_id,$date,$user_id)
    {
        $pagedata = $this->getData($this->table,array('class_id'=>$class_id,'date'=>strtotime($date),'user_id'=>$user_id))->result_array();
        foreach($pagedata as $key=>$row)
        {
            $pagedata[$key]['class'] = $this->common->class_title($row['class_id']);
        }
        if($pagedata)
        {
            return $pagedata;
        }
        return [];
    }

    public function getByClassDateByAdmin($class_id,$date)
    {
        $pagedata = $this->getData($this->table,array('class_id'=>$class_id,'date'=>strtotime($date)))->result_array();
        foreach($pagedata as $key=>$row)
        {
            $pagedata[$key]['class'] = $this->common->class_title($row['class_id']);
        }
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
        $kode = $this->getkodeunik($this->table,'CUS');
        return $kode;
    }

}