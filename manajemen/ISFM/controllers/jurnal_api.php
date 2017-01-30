<?php

/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 30/01/2017
 * Time: 15:48
 */
class jurnal_api extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Jurnal_model_api','jurnal');
    }

    public function get_class($user_id)
    {
        $result = $this->jurnal->getByClass($user_id);
        $response = array(
            'content' => $result,
            'totalPages' => count($result)
        );

        $this->output
            ->set_status_header(200)
            ->set_content_type('application/json', 'utf-8')
            ->set_output(json_encode($response, JSON_PRETTY_PRINT))
            ->_display();
        exit;
    }

    public function getById($id)
    {
        $result = $this->jurnal->getById($id);
        $response = array(
            'content' => $result,
            'totalPages' => count($result)
        );

        $this->output
            ->set_status_header(200)
            ->set_content_type('application/json', 'utf-8')
            ->set_output(json_encode($response, JSON_PRETTY_PRINT))
            ->_display();
        exit;
    }

    public function saveJurnal()
    {
        $posts = (array)json_decode(file_get_contents('php://input'));
        $datestring = "%h:%i %a";
        $now = now();
        $compTime = mdate($datestring, $now);

        $data = array(
            'class_id' => $posts['class_id'],
            'task' => $posts['task'],
            'situasi_kelas' => $posts['situasi_kelas'],
            'catatan' => $posts['catatan'],
            'time' => $compTime,
            'date' => strtotime(date('d-m-Y')),
            'user' => $posts['user'],
            'user_id' => $posts['user_id'],
            'year' => date('Y'),
            'approval' => '1',
        );

        $this->jurnal->saveJurnal($data);
        $response = array(
            'Success' => true,
            'Info' => 'Data Tersimpan');

        $this->output
            ->set_status_header(201)
            ->set_content_type('application/json', 'utf-8')
            ->set_output(json_encode($response, JSON_PRETTY_PRINT))
            ->_display();
        exit;

    }

    public function updateJurnal($id)
    {
        $posts = (array)json_decode(file_get_contents('php://input'));

        $data = array(
            'task' => $posts['task'],
            'situasi_kelas' => $posts['situasi_kelas'],
            'catatan' => $posts['catatan'],
        );

        $this->jurnal->updateJurnal($id,$data);
        $response = array(
            'Success' => true,
            'Info' => 'Data Tersimpan');

        $this->output
            ->set_status_header(201)
            ->set_content_type('application/json', 'utf-8')
            ->set_output(json_encode($response, JSON_PRETTY_PRINT))
            ->_display();
        exit;
    }

    public function deleteJurnal($id)
    {
        $result = $this->jurnal->deleteJurnal($id);
        $response = array(
            'Success' => true,
            'Info' => 'Data Terhapus');

        $this->output
            ->set_status_header(201)
            ->set_content_type('application/json', 'utf-8')
            ->set_output(json_encode($response, JSON_PRETTY_PRINT))
            ->_display();
        exit;
    }
}