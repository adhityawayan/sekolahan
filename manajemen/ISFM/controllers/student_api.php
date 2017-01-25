<?php

/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 18/01/2017
 * Time: 9:14
 */
class student_api extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Student_model_api','student');
    }

    public function getStudent($class_id)
    {
        $response = array(
            'content' => $this->student->getStudent($class_id),
            'totalPages' => count($this->student->getStudent($class_id))
        );

        $this->output
            ->set_status_header(200)
            ->set_content_type('application/json', 'utf-8')
            ->set_output(json_encode($response, JSON_PRETTY_PRINT))
            ->_display();
        exit;
    }

    /**
     *
     */
    public function saveStudent()
    {
        $posts = (array)json_decode(file_get_contents('php://input'));
        $i = $posts["in_velu"];
        $day = date("d-m-Y");
        $date = strtotime($day);
        $classTitle = $posts['classTitle'];
        for ($x = 1; $x <= $i; $x++) {
            $roll = $posts["roll_$x"];
            $name = $posts["atudentName_$x"];
            $present = "";
            if ($posts["action_$x"]) {
                if ($posts["action_$x"] === 'P') {
                    $present = "P";
                } else {
                    $present = "A";
                }
            }
            $userId = $posts["userId_$x"];
            $studentInfoId = $posts["studentInfoId_$x"];
            $data = array(
                'date' => $this->db->escape_like_str($date),
                'user_id' => $this->db->escape_like_str($userId),
                'student_id' => $this->db->escape_like_str($studentInfoId),
                'class_title' => $this->db->escape_like_str($classTitle),
                'present_or_absent' => $this->db->escape_like_str($present),
                'roll_no' => $this->db->escape_like_str($roll),
                'student_title' => $this->db->escape_like_str($name),
            );
            //insert the $data information into "daily_attendance" database.
            $this->db->insert('daily_attendance', $data);
            //Take class and attend amount monthly and make the attendence percintise monthly
            $classAmountMonthly = $this->student->classAmountMonthly($studentInfoId);
            if ($posts["action_$x"] === 'P') {
                $attendAmountMonthly = $this->student->attendAmountMonthly($studentInfoId);
            } else {
                $previousAttendAmountM = $this->student->attendAmountMonthly($studentInfoId);
                $todayAttendAmountM = 1;
                $attendAmountMonthly = $previousAttendAmountM - $todayAttendAmountM;
            }
            $attendencePercenticeMonthly = $this->student->attendPercentiseMonthly($attendAmountMonthly, $classAmountMonthly);
            //Take class and attend amount yearly and make the attendence percintise yearly
            $classAmountYearly = $this->student->classAmountYearly($studentInfoId);
            if ($posts["action_$x"] === 'P') {
                $attendAmountYearly = $this->student->attendAmountYearly($studentInfoId);
            } else {
                $previousAttendAmountY = $this->student->attendAmountYearly($studentInfoId);
                $todayAttendAmountY = 1;
                $attendAmountYearly = $previousAttendAmountY - $todayAttendAmountY;
            }
            $attendencePercenticeYearly = $this->student->attendPercentiseYearly($attendAmountYearly, $classAmountYearly);
            $data_1 = array(
                'class_amount_monthly' => $this->db->escape_like_str($classAmountMonthly),
                'class_amount_yearly' => $this->db->escape_like_str($classAmountYearly),
                'attend_amount_monthly' => $this->db->escape_like_str($attendAmountMonthly),
                'attend_amount_yearly' => $this->db->escape_like_str($attendAmountYearly),
                'percentise_month' => $this->db->escape_like_str($attendencePercenticeMonthly),
                'percentise_year' => $this->db->escape_like_str($attendencePercenticeYearly),
            );
            $this->db->update('daily_attendance', $data_1, array('student_id' => $studentInfoId, 'date' => $date));
            $data_2 = array(
                'attendance_percentices_daily' => $this->db->escape_like_str($attendencePercenticeMonthly)
            );
            $this->db->update('class_students', $data_2, array('student_id' => $studentInfoId, 'class_title' => $classTitle));
        }
        $dailyClassAttendencePercentise = $this->student->allStudentsDailyAttendence($date, $classTitle);
        $yearClassAttendencePercentise = $this->student->allStudentsYearlyAttendence($date, $classTitle);
        $data_3 = array(
            'attendance_percentices_daily' => $this->db->escape_like_str($dailyClassAttendencePercentise),
            'attend_percentise_yearly' => $this->db->escape_like_str($yearClassAttendencePercentise)
        );
        $this->db->where('class_title', $classTitle);
        $this->db->update('class', $data_3);

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

    public function attedance($date)
    {
        $response = array(
            'content' => $this->student->getAttendance($date),
            'totalPages' => count($this->student->getAttendance($date))
        );

        $this->output
            ->set_status_header(200)
            ->set_content_type('application/json', 'utf-8')
            ->set_output(json_encode($response, JSON_PRETTY_PRINT))
            ->_display();
        exit;
    }

    public function updateMahasiswa($npm)
    {
        $data = (array)json_decode(file_get_contents('php://input'));
        $this->Mahasiswa->updateMahasiswa($data, $npm);

        $response = array(
            'Success' => true,
            'Info' => 'Data Berhasil di update');

        $this->output
            ->set_status_header(200)
            ->set_content_type('application/json', 'utf-8')
            ->set_output(json_encode($response, JSON_PRETTY_PRINT))
            ->_display();
        exit;
    }

    public function deleteMahasiswa($npm)
    {
        $this->Mahasiswa->deleteMahasiswa($npm);

        $response = array(
            'Success' => true,
            'Info' => 'Data Berhasil di hapus');

        $this->output
            ->set_status_header(200)
            ->set_content_type('application/json', 'utf-8')
            ->set_output(json_encode($response, JSON_PRETTY_PRINT))
            ->_display();
        exit;
    }

}