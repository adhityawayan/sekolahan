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
}