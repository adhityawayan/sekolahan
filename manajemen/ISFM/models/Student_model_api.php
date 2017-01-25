<?php

/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 18/01/2017
 * Time: 9:21
 */
class Student_model_api extends Base_model
{
    public function getCountMahasiswa()
    {
        return $this->db->count_all_results('student_info', FALSE);
    }

    public function getStudent($class_id)
    {
        $condition['class_id'] = $class_id;
        return $this->getData('student_info',$condition)->result();
    }

    public function insertAttendanceStudent($dataStudent)
    {
        $val = array(
            'date' => $dataStudent['date'],
            'user_id' => $dataStudent['user_id'],
            'student_id' => $dataStudent['student_id'],
            'class_title' => $dataStudent['class_title'],
            'section' => $dataStudent['section'],
            'present_or_absent' => $dataStudent['present_or_absent'],
            'student_title' => $dataStudent['student_title'],
        );
        $this->addData('daily_attendance',$val);
    }

    public function getAttendance($date)
    {
        $result = $this->getData('daily_attendance',array('date'=>$date))->result_array();
        if($result)
        {
            return $result;
        }
        return [];
    }

    //This function is returan an integer as a monthly class amount.
    public function classAmountMonthly($var) {
        $maxid = 0;
        $row = $this->db->query("SELECT MAX(class_amount_monthly) AS `maxid` FROM `daily_attendance` WHERE student_id='$var'")->row();
        if ($row) {
            $maxid = $row->maxid;
        }return $maxid + 1;
    }

    //This function is returan an integer as a yearly class amount.
    public function classAmountYearly($var) {
        $maxid = 0;
        $row = $this->db->query("SELECT MAX(class_amount_yearly) AS `maxid` FROM `daily_attendance` WHERE student_id='$var'")->row();
        if ($row) {
            $maxid = $row->maxid;
        }return $maxid + 1;
    }

    //This function is returan an integer as a monthly attend's amount.
    public function attendAmountMonthly($var) {
        $maxid = 0;
        $row = $this->db->query("SELECT MAX(attend_amount_monthly) AS `maxid` FROM `daily_attendance` WHERE student_id='$var'")->row();
        if ($row) {
            $maxid = $row->maxid;
        }return $maxid + 1;
    }

    //This function is returan an integer as a yearly attend's amount.
    public function attendAmountYearly($var) {
        $maxid = 0;
        $row = $this->db->query("SELECT MAX(attend_amount_yearly) AS `maxid` FROM `daily_attendance` WHERE student_id='$var'")->row();
        if ($row) {
            $maxid = $row->maxid;
        }return $maxid + 1;
    }

    //This function used to findout monthly attendence % by an student monthly.
    public function attendPercentiseMonthly($ver_1, $ver_2) {
        $a = $ver_1 * 100;
        $b = $a / $ver_2;
        return $b;
    }

    //This function used to findout monthly attendence % by an student monthly.
    public function attendPercentiseYearly($ver_1, $ver_2) {
        $a = $ver_1 * 100;
        $b = $a / $ver_2;
        return $b;
    }

    public function allStudentsDailyAttendence($date, $classTitle) {
        $data = array();
        $query = $this->db->get_where('daily_attendance', array('date' => $date, 'class_title' => $classTitle));
        foreach ($query->result_array() as $row) {
            $data[] = $row['percentise_month'];
        } $a = $data;
        $return = count($a);
        $allPercentise = array_sum($a);
        $garPercentise = $allPercentise / $return;
        return $garPercentise;
    }

    public function allStudentsYearlyAttendence($date, $classTitle) {
        $data = array();
        $query = $this->db->get_where('daily_attendance', array('date' => $date, 'class_title' => $classTitle));
        foreach ($query->result_array() as $row) {
            $data[] = $row['percentise_year'];
        } $a = $data;
        $return = count($a);
        $allPercentise = array_sum($a);
        $garPercentise = $allPercentise / $return;
        return $garPercentise;
    }
}