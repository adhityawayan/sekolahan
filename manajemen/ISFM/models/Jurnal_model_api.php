<?php

/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 30/01/2017
 * Time: 15:50
 */
class Jurnal_model_api extends Base_model
{
    protected $table = 'jurnal';

    public function __construct()
    {
        parent::__construct();
    }

    public function getByClass($user_id)
    {
        $condition['user_id'] = $user_id;
        $result = $this->getData($this->table,$condition)->result();
        if($result)
        {
            return $result;
        }
        return [];
    }

    public function getById($id)
    {
        $condition['id'] = $id;
        $result = $this->getData($this->table,$condition)->row();
        if($result)
        {
            return $result;
        }
        return [];
    }

    public function saveJurnal($data=array())
    {
        $result = $this->addData($this->table,$data);
        if($result)
        {
            return TRUE;
        }
        return FALSE;
    }

    public function updateJurnal($id,$data=array())
    {
        $condition['id'] = $id;
        $result = $this->updateData($this->table,$data,$condition);
        if($result)
        {
            return TRUE;
        }
        return FALSE;
    }

    public function deleteJurnal($id)
    {
        $condition['id'] = $id;
        $result = $this->deleteData($this->table,$condition);
        if($result)
        {
            return TRUE;
        }
        return FALSE;
    }
}