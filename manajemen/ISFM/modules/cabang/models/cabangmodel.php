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
}