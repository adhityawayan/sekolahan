<?php

/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 18/01/2017
 * Time: 9:21
 */
class Student_model_api extends CI_Model
{
    public function getCountMahasiswa()
    {
        return $this->db->count_all_results('student_info', FALSE);
    }

    public function getStudent($page, $size)
    {
        return $this->db->get('student_info', $size, $page);
    }

    public function insertMahasiswa($dataMahasiswa)
    {
        $val = array(
            'npm' => $dataMahasiswa['npm'],
            'nama' => $dataMahasiswa['nama'],
            'kelas' => $dataMahasiswa['kelas'],
            'tanggalLahir' => $dataMahasiswa['tanggalLahir']
        );
        $this->db->insert('mahasiswa', $val);
    }

    public function updateMahasiswa($dataMahasiswa, $npm)
    {
        $val = array(
            'nama' => $dataMahasiswa['nama'],
            'kelas' => $dataMahasiswa['kelas'],
            'tanggalLahir' => $dataMahasiswa['tanggalLahir']
        );
        $this->db->where('npm', $npm);
        $this->db->update('mahasiswa', $val);
    }

    public function deleteMahasiswa($npm)
    {
        $val = array(
            'npm' => $npm
        );
        $this->db->delete('mahasiswa', $val);
    }


}