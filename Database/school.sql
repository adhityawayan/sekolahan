-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2017 at 05:17 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_title`
--

CREATE TABLE `account_title` (
  `id` int(11) NOT NULL,
  `account_title` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_title`
--

INSERT INTO `account_title` (`id`, `account_title`, `category`, `description`) VALUES
(1, 'Rent', 'Expense', ''),
(2, 'Student Fee', 'Income', '');

-- --------------------------------------------------------

--
-- Table structure for table `add_exam`
--

CREATE TABLE `add_exam` (
  `id` int(11) NOT NULL,
  `year` int(5) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `start_date` varchar(30) NOT NULL,
  `class_id` int(11) NOT NULL,
  `total_time` varchar(10) NOT NULL,
  `publish` varchar(50) NOT NULL,
  `final` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `isbn_no` varchar(20) NOT NULL,
  `book_no` int(11) NOT NULL,
  `books_title` varchar(100) NOT NULL,
  `authore` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `pages` int(11) NOT NULL,
  `language` varchar(30) NOT NULL,
  `uploderTitle` varchar(100) NOT NULL,
  `books_amount` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `issu_date` int(11) NOT NULL,
  `due_date` int(11) NOT NULL,
  `issu_member_no` int(11) NOT NULL,
  `cover_photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_category`
--

CREATE TABLE `books_category` (
  `id` int(11) NOT NULL,
  `category_creator` varchar(100) NOT NULL,
  `category_title` varchar(100) NOT NULL,
  `parent_category` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `books_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `nonaktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`id`, `code`, `name`, `phone`, `address`, `nonaktif`) VALUES
(2, 'CB00002', 'Yayasan Trimurti', '085895986529', 'Jl Cendana Sukabumis', 0),
(4, 'CB00003', 'Yayasan Toyibah', '085895986529', 'Surabaya', 0);

-- --------------------------------------------------------

--
-- Table structure for table `calender_events`
--

CREATE TABLE `calender_events` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `start_date` varchar(15) NOT NULL,
  `end_date` varchar(15) NOT NULL,
  `color` varchar(15) NOT NULL,
  `url` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `cabang_id` int(11) NOT NULL,
  `class_title` varchar(50) NOT NULL,
  `class_group` varchar(150) NOT NULL,
  `section` varchar(100) NOT NULL,
  `section_student_capacity` varchar(5) NOT NULL,
  `classCode` varchar(20) NOT NULL,
  `student_amount` int(11) NOT NULL,
  `attendance_percentices_daily` int(11) NOT NULL,
  `attend_percentise_yearly` int(11) NOT NULL,
  `month_fee` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `cabang_id`, `class_title`, `class_group`, `section`, `section_student_capacity`, `classCode`, `student_amount`, `attendance_percentices_daily`, `attend_percentise_yearly`, `month_fee`) VALUES
(1, 2, 'Kelas Satu 2017/2018', '', '', '5', 'CB00002001', 5, 100, 100, ''),
(2, 2, 'Kelas Dua 2017/2018', '', '', '5', 'CB00002002', 0, 0, 0, ''),
(3, 2, 'Kelas Tiga 2017/2018', '', '', '5', 'CB00002003', 0, 0, 0, ''),
(4, 2, 'Kelas Empat 2017/2018', '', '', '5', 'CB00002004', 0, 0, 0, ''),
(5, 2, 'Kelas Lima 2017/2018', '', '', '5', 'CB00002005', 0, 0, 0, ''),
(6, 2, 'Kelas Enam 2017/2018', '', '', '5', 'CB00002006', 0, 0, 0, ''),
(7, 4, 'Kelas Satu 2017/2018', '', '', '5', 'CB00003007', 5, 100, 100, ''),
(8, 4, 'Kelas Dua 2017/2018', '', '', '5', 'CB00003008', 0, 0, 0, ''),
(9, 4, 'Kelas Tiga 2017/2018', '', '', '5', 'CB00003009', 0, 0, 0, ''),
(12, 4, 'Kelas Empat 2017/2018', '', '', '5', 'CB00003010', 0, 0, 0, ''),
(13, 4, 'Kelas Lima 2017/2018', '', '', '5', 'CB00003013', 0, 0, 0, ''),
(14, 4, 'Kelas Enam 2017/2018', '', '', '5', 'CB00003014', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE `class_routine` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `day_title` varchar(50) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `subject_teacher` varchar(200) NOT NULL,
  `start_time` varchar(30) NOT NULL,
  `end_time` varchar(30) NOT NULL,
  `room_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`id`, `class_id`, `section`, `day_title`, `subject`, `subject_teacher`, `start_time`, `end_time`, `room_number`) VALUES
(1, 1, '', 'Sunday', 'Biologi', 'Firman Zain', '10:00', '11:00', 'R1'),
(2, 1, '', 'Sunday', 'KIMIA', 'Dio Saputra', '11:15', '12:00', 'R1'),
(3, 1, '', 'Sunday', 'Sejarah', 'Dio Saputra', '07:00', '08:00', 'R1'),
(4, 1, '', 'Sunday', 'Agama', 'Firman Zain', '12:15', '13:15', 'R1'),
(5, 1, '', 'Monday', 'Bahasa Indonesia', 'Firman Zain', '12:00', '13:00', 'R1'),
(6, 1, '', 'Monday', 'Bahasa Inggris', 'Dio Saputra', '10:00', '11:00', 'R1'),
(7, 1, '', 'Tuesday', 'Bahasa Inggris', 'Firman Zain', '14:00', '15:00', 'R1'),
(8, 1, '', 'Wednesday', 'Sejarah', 'Firman Zain', '08:00', '09:00', 'R1'),
(9, 7, '', 'Sunday', 'Metematika', 'Rizky Febrianto', '14:34', '14:50', 'R1'),
(10, 7, '', 'Monday', 'Biologi', 'Putut Wijaya', '07:30', '08:30', 'R1');

-- --------------------------------------------------------

--
-- Table structure for table `class_students`
--

CREATE TABLE `class_students` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `roll_number` int(11) DEFAULT NULL,
  `student_id` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_title` varchar(50) NOT NULL,
  `section` varchar(150) NOT NULL,
  `student_title` varchar(100) NOT NULL,
  `attendance_percentices_daily` int(11) NOT NULL,
  `optional_sub` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_students`
--

INSERT INTO `class_students` (`id`, `year`, `user_id`, `roll_number`, `student_id`, `class_id`, `class_title`, `section`, `student_title`, `attendance_percentices_daily`, `optional_sub`) VALUES
(1, 2017, 30, 1, '2017CB00002001001', 1, 'Kelas Satu 2017/2018', '', 'Dini Setia', 100, ''),
(2, 2017, 31, 2, '2017CB00002001002', 1, 'Kelas Satu 2017/2018', '', 'Bagas Pamungkas', 100, ''),
(3, 2017, 32, 3, '2017CB00002001003', 1, 'Kelas Satu 2017/2018', '', 'Alvin Bintang', 100, ''),
(4, 2017, 33, 4, '2017CB00002001004', 1, 'Kelas Satu 2017/2018', '', 'Arbi Ahmad', 100, ''),
(5, 2017, 34, 5, '2017CB00002001005', 1, 'Kelas Satu 2017/2018', '', 'Adi Yakub', 100, ''),
(6, 2017, 35, 1, '2017CB00003007001', 7, 'Kelas Satu 2017/2018', '', 'Queen Bella', 100, ''),
(7, 2017, 36, 2, '2017CB00003007002', 7, 'Kelas Satu 2017/2018', '', 'Siti Nuriyah', 100, ''),
(8, 2017, 37, 3, '2017CB00003007003', 7, 'Kelas Satu 2017/2018', '', 'Fery Eka Wahyuni', 100, ''),
(9, 2017, 38, 4, '2017CB00003007004', 7, 'Kelas Satu 2017/2018', '', 'Nur Aeni', 100, ''),
(10, 2017, 39, 5, '2017CB00003007005', 7, 'Kelas Satu 2017/2018', '', 'Heru  Fatoni', 100, '');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `group` varchar(100) NOT NULL,
  `subject_teacher` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `writer_name` varchar(100) NOT NULL,
  `optional` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject`
--

INSERT INTO `class_subject` (`id`, `year`, `class_id`, `subject_title`, `group`, `subject_teacher`, `edition`, `writer_name`, `optional`) VALUES
(1, 2017, 7, 'Metematika', '', 'Rizky Febrianto', '2017', 'TU', 0),
(2, 2017, 1, 'Biologi', '', 'Firman Zain', '2017', 'TU', 0),
(3, 2017, 1, 'KIMIA', '', 'Dio Saputra', '2017', 'TU', 0),
(4, 2017, 1, 'Sejarah', '', 'Firman Zain', '2017', 'TU', 0),
(5, 2017, 1, 'Agama', '', 'Firman Zain', '2017', 'TU', 0),
(6, 2017, 1, 'Olahraga', '', '', '2017', 'TU', 0),
(7, 2017, 1, 'Bahasa Indonesia', '', 'Firman Zain', '2017', 'TU', 0),
(8, 2017, 1, 'Bahasa Inggris', '', 'Firman Zain', '2017', 'TU', 0),
(9, 2017, 1, 'Sosiologi', '', '', '2017', 'TU', 0),
(11, 2017, 7, 'Biologi', '', 'Putut Wijaya', '2017', 'TU', 0);

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `time_zone` varchar(150) NOT NULL,
  `school_name` varchar(150) NOT NULL,
  `starting_year` varchar(50) NOT NULL,
  `headmaster_name` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `currenct` varchar(50) NOT NULL,
  `country` varchar(150) NOT NULL,
  `language` text NOT NULL,
  `msg_apai_email` varchar(100) NOT NULL,
  `msg_hash_number` varchar(100) NOT NULL,
  `msg_sender_title` varchar(100) NOT NULL,
  `countryPhonCode` varchar(5) NOT NULL,
  `t_a_s_p` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `logo`, `time_zone`, `school_name`, `starting_year`, `headmaster_name`, `address`, `phone`, `email`, `currenct`, `country`, `language`, `msg_apai_email`, `msg_hash_number`, `msg_sender_title`, `countryPhonCode`, `t_a_s_p`) VALUES
(1, '', 'UP7', 'Goila Model High School', '12/12/1yyy', 'Mr. Jahirul Huque', 'Goila, Aghoiljhara, Barisal', '0123456789', 'info@goila.com', 'fa fa-money', 'Indonesia', '', '', '', '', '', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `config_week_day`
--

CREATE TABLE `config_week_day` (
  `id` int(11) NOT NULL,
  `day_name` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_week_day`
--

INSERT INTO `config_week_day` (`id`, `day_name`, `status`) VALUES
(1, 'Sunday', 'Open'),
(2, 'Monday', 'Open'),
(3, 'Tuesday', 'Open'),
(4, 'Wednesday', 'Open'),
(5, 'Thursday', 'Open'),
(6, 'Friday', 'Holyday'),
(7, 'Saturday', 'Holyday');

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendance`
--

CREATE TABLE `daily_attendance` (
  `id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `student_id` varchar(150) NOT NULL,
  `class_title` varchar(30) NOT NULL,
  `section` varchar(100) NOT NULL,
  `days_amount` varchar(20) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `present_or_absent` varchar(2) NOT NULL,
  `student_title` varchar(100) NOT NULL,
  `class_amount_monthly` int(11) NOT NULL,
  `class_amount_yearly` int(11) NOT NULL,
  `attend_amount_monthly` int(11) NOT NULL,
  `attend_amount_yearly` int(11) NOT NULL,
  `percentise_month` int(11) NOT NULL,
  `percentise_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_attendance`
--

INSERT INTO `daily_attendance` (`id`, `date`, `user_id`, `student_id`, `class_title`, `section`, `days_amount`, `roll_no`, `present_or_absent`, `student_title`, `class_amount_monthly`, `class_amount_yearly`, `attend_amount_monthly`, `attend_amount_yearly`, `percentise_month`, `percentise_year`) VALUES
(1, '1485795600', '35', '2017CB00003007001', 'Kelas Satu 2017/2018', '', '', 1, 'P', 'Queen Bella', 1, 1, 1, 1, 100, 100),
(2, '1485795600', '36', '2017CB00003007002', 'Kelas Satu 2017/2018', '', '', 2, 'P', 'Siti Nuriyah', 1, 1, 1, 1, 100, 100),
(3, '1485795600', '37', '2017CB00003007003', 'Kelas Satu 2017/2018', '', '', 3, 'P', 'Fery Eka Wahyuni', 1, 1, 1, 1, 100, 100),
(4, '1485795600', '38', '2017CB00003007004', 'Kelas Satu 2017/2018', '', '', 4, 'P', 'Nur Aeni', 1, 1, 1, 1, 100, 100),
(5, '1485795600', '39', '2017CB00003007005', 'Kelas Satu 2017/2018', '', '', 5, 'P', 'Heru  Fatoni', 1, 1, 1, 1, 100, 100),
(6, '1485795600', '30', '2017CB00002001001', 'Kelas Satu 2017/2018', '', '', 1, 'P', 'Dini Setia', 1, 1, 1, 1, 100, 100),
(7, '1485795600', '31', '2017CB00002001002', 'Kelas Satu 2017/2018', '', '', 2, 'P', 'Bagas Pamungkas', 1, 1, 1, 1, 100, 100),
(8, '1485795600', '32', '2017CB00002001003', 'Kelas Satu 2017/2018', '', '', 3, 'P', 'Alvin Bintang', 1, 1, 1, 1, 100, 100),
(9, '1485795600', '33', '2017CB00002001004', 'Kelas Satu 2017/2018', '', '', 4, 'P', 'Arbi Ahmad', 1, 1, 1, 1, 100, 100),
(10, '1485795600', '34', '2017CB00002001005', 'Kelas Satu 2017/2018', '', '', 5, 'P', 'Adi Yakub', 1, 1, 1, 1, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `id` int(11) NOT NULL,
  `dormitory_name` varchar(100) NOT NULL,
  `dormitory_for` varchar(100) NOT NULL,
  `room_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dormitory_bed`
--

CREATE TABLE `dormitory_bed` (
  `id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_name` varchar(100) NOT NULL,
  `room_number` varchar(50) NOT NULL,
  `bed_number` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL,
  `roll_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dormitory_room`
--

CREATE TABLE `dormitory_room` (
  `id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_name` varchar(100) NOT NULL,
  `room` varchar(50) NOT NULL,
  `bed_amount` int(11) NOT NULL,
  `free_seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `father_name` varchar(150) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `birth_date` varchar(100) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `present_address` varchar(150) NOT NULL,
  `permanent_address` varchar(150) NOT NULL,
  `job_title_post` varchar(100) NOT NULL,
  `working_hour` varchar(20) NOT NULL,
  `salary_amount` varchar(100) NOT NULL,
  `educational_qualifation_1` varchar(300) NOT NULL,
  `educational_qualifation_2` varchar(300) NOT NULL,
  `educational_qualifation_3` varchar(300) NOT NULL,
  `educational_qualifation_4` varchar(300) NOT NULL,
  `educational_qualifation_5` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_attendanc`
--

CREATE TABLE `exam_attendanc` (
  `id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_title` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `roll_no` varchar(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam_title` varchar(150) NOT NULL,
  `exam_subject` varchar(100) NOT NULL,
  `attendance` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_grade`
--

CREATE TABLE `exam_grade` (
  `id` int(11) NOT NULL,
  `grade_name` varchar(30) NOT NULL,
  `point` varchar(4) NOT NULL,
  `number_form` varchar(5) NOT NULL,
  `number_to` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine`
--

CREATE TABLE `exam_routine` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_date` varchar(30) NOT NULL,
  `exam_subject` varchar(100) NOT NULL,
  `subject_code` varchar(15) NOT NULL,
  `rome_number` varchar(10) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(30) NOT NULL,
  `exam_shift` varchar(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fee_item`
--

CREATE TABLE `fee_item` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `final_result`
--

CREATE TABLE `final_result` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `total_mark` varchar(100) NOT NULL,
  `final_grade` varchar(10) NOT NULL,
  `maride_list` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `point` varchar(11) NOT NULL,
  `fail_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'superadmin', 'Administrator'),
(2, 'admin', 'Level Headmaster'),
(3, 'student', 'This user is student''s groups member.'),
(4, 'teacher', 'This user is teacher''s groups member.'),
(5, 'parents', 'This user is parent''s groups member.');

-- --------------------------------------------------------

--
-- Table structure for table `inven_category`
--

CREATE TABLE `inven_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `details` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inve_item`
--

CREATE TABLE `inve_item` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `item` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issu_item`
--

CREATE TABLE `issu_item` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `user_type` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jurnal`
--

CREATE TABLE `jurnal` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `task` text NOT NULL,
  `situasi_kelas` text NOT NULL,
  `catatan` text NOT NULL,
  `time` varchar(20) NOT NULL,
  `date` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `approval` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal`
--

INSERT INTO `jurnal` (`id`, `class_id`, `task`, `situasi_kelas`, `catatan`, `time`, `date`, `user`, `user_id`, `year`, `approval`) VALUES
(1, 1, 'Tututhhhh', 'Tututhhhhdfff', 'Tututhhhhaaaaa', '03:59 pm', 1485795600, 'Firman Zain', 23, 2017, 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_application`
--

CREATE TABLE `leave_application` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sender_title` varchar(150) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `jobtype` text NOT NULL,
  `leave_start` int(11) NOT NULL,
  `leave_end` int(11) NOT NULL,
  `application_date` int(11) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `cheack_by` varchar(150) NOT NULL,
  `status` text NOT NULL,
  `cheack_statuse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_member`
--

CREATE TABLE `library_member` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `massage`
--

CREATE TABLE `massage` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `read_unread` int(1) NOT NULL,
  `date` int(11) NOT NULL,
  `sender_delete` int(11) NOT NULL,
  `receiver_delete` int(11) NOT NULL,
  `class` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `massage`
--

INSERT INTO `massage` (`id`, `sender_id`, `receiver_id`, `message`, `subject`, `read_unread`, `date`, `sender_delete`, `receiver_delete`, `class`) VALUES
(1, 10, '23', '<p>dsadasdsadsaddsadas</p>\\r\\n', 'SMSS', 1, 1485853504, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `id` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `notice` varchar(1000) NOT NULL,
  `receiver` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`id`, `date`, `sender`, `subject`, `notice`, `receiver`) VALUES
(1, '31/01/2017', 'Head Office', 'Pengumuman', '<p>Semua akan ada hikmahnya test test tes</p>\\r\\n', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `parents_info`
--

CREATE TABLE `parents_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `parents_name` varchar(100) NOT NULL,
  `relation` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents_info`
--

INSERT INTO `parents_info` (`id`, `user_id`, `class_id`, `student_id`, `parents_name`, `relation`, `email`, `phone`) VALUES
(1, 40, 7, '2017CB00003007001', 'Haqi Jaja', 'Ayah', 'haqi@gmail.com', '+6285895986529'),
(2, 41, 7, '2017CB00003007003', 'Agus  Setiyo', 'Ayah', 'agus@gmail.com', '+6285895986524'),
(3, 42, 7, '2017CB00003007002', 'Ririn Pramita', 'Tante', 'ririn@gmail.com', '+6285895986723'),
(4, 43, 1, '2017CB00002001001', 'Didin Kiswanto', 'Ayah', 'didin@gmail.com', '+6285895986525'),
(5, 44, 1, '2017CB00002001002', 'Sutinah  Mariah', 'Nenek', 'sutinah@gmail.com', '+6285895986522'),
(6, 45, 1, '2017CB00002001003', 'Aan Mubarok', 'Ayah', 'aan@gmail.com', '+62858959867244'),
(7, 46, 1, '2017CB00002001004', 'Bial Bilal', 'Ayah', 'bial@gmail.com', '+6285895986520'),
(8, 47, 1, '2017CB00002001005', 'Maryam  Mersedes', 'Tante', 'maryam@gmail.com', '+6285895986573');

-- --------------------------------------------------------

--
-- Table structure for table `result_action`
--

CREATE TABLE `result_action` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `publish` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_shit`
--

CREATE TABLE `result_shit` (
  `id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `exam_subject` varchar(100) NOT NULL,
  `mark` varchar(10) NOT NULL,
  `point` varchar(5) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `result` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_submition_info`
--

CREATE TABLE `result_submition_info` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam_title` varchar(150) NOT NULL,
  `date` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `submited` varchar(50) NOT NULL,
  `teacher` varchar(100) NOT NULL,
  `exam_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role_based_access`
--

CREATE TABLE `role_based_access` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(1) NOT NULL,
  `das_top_info` int(1) NOT NULL,
  `das_grab_chart` int(1) NOT NULL,
  `das_class_info` int(1) NOT NULL,
  `das_message` int(1) NOT NULL,
  `das_employ_attend` int(1) NOT NULL,
  `das_notice` int(1) NOT NULL,
  `das_calender` int(1) NOT NULL,
  `admission` int(1) NOT NULL,
  `all_student_info` int(1) NOT NULL,
  `stud_edit_delete` int(1) NOT NULL,
  `stu_own_info` int(1) NOT NULL,
  `teacher_info` int(1) NOT NULL,
  `add_teacher` int(1) NOT NULL,
  `teacher_details` int(1) NOT NULL,
  `teacher_edit_delete` int(1) NOT NULL,
  `all_parents_info` int(1) NOT NULL,
  `own_parents_info` int(1) NOT NULL,
  `make_parents_id` int(1) NOT NULL,
  `parents_edit_dlete` int(1) NOT NULL,
  `add_employee` int(1) NOT NULL,
  `employee_list` int(1) NOT NULL,
  `employ_attendance` int(1) NOT NULL,
  `empl_atte_view` int(1) NOT NULL,
  `add_new_class` int(1) NOT NULL,
  `all_class_info` int(1) NOT NULL,
  `class_details` int(1) NOT NULL,
  `class_delete` int(1) NOT NULL,
  `class_promotion` int(1) NOT NULL,
  `add_class_routine` int(1) NOT NULL,
  `own_class_routine` int(1) NOT NULL,
  `all_class_routine` int(1) NOT NULL,
  `rutin_edit_delete` int(1) NOT NULL,
  `attendance_preview` int(1) NOT NULL,
  `take_studence_atten` int(1) NOT NULL,
  `edit_student_atten` int(1) NOT NULL,
  `add_subject` int(1) NOT NULL,
  `all_subject` int(1) NOT NULL,
  `assin_optio_sub` int(1) NOT NULL,
  `make_suggestion` int(1) NOT NULL,
  `all_suggestion` int(1) NOT NULL,
  `own_suggestion` int(1) NOT NULL,
  `add_exam_gread` int(1) NOT NULL,
  `exam_gread` int(1) NOT NULL,
  `gread_edit_dele` int(1) NOT NULL,
  `add_exam_routin` int(1) NOT NULL,
  `all_exam_routine` int(1) NOT NULL,
  `own_exam_routine` int(1) NOT NULL,
  `exam_attend_preview` int(1) NOT NULL,
  `approve_result` int(1) NOT NULL,
  `view_result` int(1) NOT NULL,
  `all_mark_sheet` int(1) NOT NULL,
  `own_mark_sheet` int(1) NOT NULL,
  `take_exam_attend` int(1) NOT NULL,
  `change_exam_attendance` int(1) NOT NULL,
  `make_result` int(1) NOT NULL,
  `add_category` int(1) NOT NULL,
  `all_category` int(1) NOT NULL,
  `edit_delete_category` int(1) NOT NULL,
  `add_books` int(1) NOT NULL,
  `all_books` int(1) NOT NULL,
  `edit_delete_books` int(1) NOT NULL,
  `add_library_mem` int(1) NOT NULL,
  `memb_list` int(1) NOT NULL,
  `issu_return` int(1) NOT NULL,
  `add_dormitories` int(1) NOT NULL,
  `add_set_dormi` int(1) NOT NULL,
  `set_member_bed` int(1) NOT NULL,
  `dormi_report` int(1) NOT NULL,
  `add_transport` int(1) NOT NULL,
  `all_transport` int(1) NOT NULL,
  `transport_edit_dele` int(1) NOT NULL,
  `add_account_title` int(1) NOT NULL,
  `edit_dele_acco` int(1) NOT NULL,
  `trensection` int(1) NOT NULL,
  `fee_collection` int(1) NOT NULL,
  `all_slips` int(1) NOT NULL,
  `own_slip` int(1) NOT NULL,
  `slip_edit_delete` int(1) NOT NULL,
  `pay_salary` int(1) NOT NULL,
  `creat_notice` int(1) NOT NULL,
  `send_message` int(1) NOT NULL,
  `vendor` int(1) NOT NULL,
  `delet_vendor` int(1) NOT NULL,
  `add_inv_cat` int(1) NOT NULL,
  `inve_item` int(1) NOT NULL,
  `delete_inve_ite` int(1) NOT NULL,
  `delete_inv_cat` int(1) NOT NULL,
  `inve_issu` int(1) NOT NULL,
  `delete_inven_issu` int(1) NOT NULL,
  `check_leav_appli` int(1) NOT NULL,
  `setting_accounts` int(1) NOT NULL,
  `other_setting` int(1) NOT NULL,
  `front_setings` int(1) NOT NULL,
  `set_optional` int(1) NOT NULL,
  `setting_manage_user` int(1) NOT NULL,
  `all_cabang` int(11) NOT NULL,
  `add_cabang` int(11) NOT NULL,
  `delete_edit_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_based_access`
--

INSERT INTO `role_based_access` (`id`, `user_id`, `group_id`, `das_top_info`, `das_grab_chart`, `das_class_info`, `das_message`, `das_employ_attend`, `das_notice`, `das_calender`, `admission`, `all_student_info`, `stud_edit_delete`, `stu_own_info`, `teacher_info`, `add_teacher`, `teacher_details`, `teacher_edit_delete`, `all_parents_info`, `own_parents_info`, `make_parents_id`, `parents_edit_dlete`, `add_employee`, `employee_list`, `employ_attendance`, `empl_atte_view`, `add_new_class`, `all_class_info`, `class_details`, `class_delete`, `class_promotion`, `add_class_routine`, `own_class_routine`, `all_class_routine`, `rutin_edit_delete`, `attendance_preview`, `take_studence_atten`, `edit_student_atten`, `add_subject`, `all_subject`, `assin_optio_sub`, `make_suggestion`, `all_suggestion`, `own_suggestion`, `add_exam_gread`, `exam_gread`, `gread_edit_dele`, `add_exam_routin`, `all_exam_routine`, `own_exam_routine`, `exam_attend_preview`, `approve_result`, `view_result`, `all_mark_sheet`, `own_mark_sheet`, `take_exam_attend`, `change_exam_attendance`, `make_result`, `add_category`, `all_category`, `edit_delete_category`, `add_books`, `all_books`, `edit_delete_books`, `add_library_mem`, `memb_list`, `issu_return`, `add_dormitories`, `add_set_dormi`, `set_member_bed`, `dormi_report`, `add_transport`, `all_transport`, `transport_edit_dele`, `add_account_title`, `edit_dele_acco`, `trensection`, `fee_collection`, `all_slips`, `own_slip`, `slip_edit_delete`, `pay_salary`, `creat_notice`, `send_message`, `vendor`, `delet_vendor`, `add_inv_cat`, `inve_item`, `delete_inve_ite`, `delete_inv_cat`, `inve_issu`, `delete_inven_issu`, `check_leav_appli`, `setting_accounts`, `other_setting`, `front_setings`, `set_optional`, `setting_manage_user`, `all_cabang`, `add_cabang`, `delete_edit_cabang`) VALUES
(10, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(23, 23, 4, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 24, 4, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 25, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0),
(26, 26, 4, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 27, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0),
(28, 28, 4, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 29, 4, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 30, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 31, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 32, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 33, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 34, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 35, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 36, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 37, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 38, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 39, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 40, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 41, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 42, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 43, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 44, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 45, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 46, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 47, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `month` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `employ_title` varchar(100) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `method` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `set_salary`
--

CREATE TABLE `set_salary` (
  `id` int(11) NOT NULL,
  `year` int(5) NOT NULL,
  `employ_user_id` int(11) NOT NULL,
  `employe_title` varchar(100) NOT NULL,
  `job_post` varchar(50) NOT NULL,
  `basic` int(11) NOT NULL,
  `treatment` int(11) NOT NULL,
  `increased` int(11) NOT NULL,
  `others` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `month` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slip`
--

CREATE TABLE `slip` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `date` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `item_id` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `dues` int(11) NOT NULL,
  `advance` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `edit_by` varchar(100) NOT NULL,
  `status` text NOT NULL,
  `mathod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_nam` varchar(100) NOT NULL,
  `farther_name` varchar(150) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `birth_date` varchar(100) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `present_address` varchar(300) NOT NULL,
  `permanent_address` varchar(300) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `father_occupation` varchar(150) NOT NULL,
  `father_incom_range` varchar(100) NOT NULL,
  `mother_occupation` varchar(100) NOT NULL,
  `student_photo` varchar(200) NOT NULL,
  `last_class_certificate` text NOT NULL,
  `t_c` text NOT NULL,
  `national_birth_certificate` text NOT NULL,
  `academic_transcription` text NOT NULL,
  `testimonial` text NOT NULL,
  `documents_info` varchar(500) NOT NULL,
  `starting_year` int(11) NOT NULL,
  `transfer_year` int(11) NOT NULL,
  `transfer_to` text NOT NULL,
  `transfer_reason` text NOT NULL,
  `tc_appli_approved_by` text NOT NULL,
  `passing_year` int(11) NOT NULL,
  `compleat_level` text NOT NULL,
  `registration_number` text NOT NULL,
  `certificates_status` text NOT NULL,
  `admission_year` int(11) NOT NULL,
  `admission_class` varchar(100) NOT NULL,
  `admission_roll` int(5) NOT NULL,
  `admission_form_no` int(11) NOT NULL,
  `admission_test_result` int(11) NOT NULL,
  `tc_form` varchar(150) NOT NULL,
  `blood` varchar(3) NOT NULL,
  `cabang_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `year`, `user_id`, `student_id`, `roll_number`, `class_id`, `student_nam`, `farther_name`, `mother_name`, `birth_date`, `sex`, `present_address`, `permanent_address`, `phone`, `father_occupation`, `father_incom_range`, `mother_occupation`, `student_photo`, `last_class_certificate`, `t_c`, `national_birth_certificate`, `academic_transcription`, `testimonial`, `documents_info`, `starting_year`, `transfer_year`, `transfer_to`, `transfer_reason`, `tc_appli_approved_by`, `passing_year`, `compleat_level`, `registration_number`, `certificates_status`, `admission_year`, `admission_class`, `admission_roll`, `admission_form_no`, `admission_test_result`, `tc_form`, `blood`, `cabang_id`) VALUES
(1, 2017, 30, '2017CB00002001001', 1, 1, 'Dini Setia', 'Didin', 'Bubu', '28/01/1999', 'Female', ' Surabaya', 'Surabaya', '+6285895986529', 'Business', '4000000', 'Housewife', '7a0b20d3b54e285a8554d11c0c1f1f06.jpg', 'submited', 'submited', '', 'submited', '', 'S023243273', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O+', 2),
(2, 2017, 31, '2017CB00002001002', 2, 1, 'Bagas Pamungkas', 'Papa', 'Mama', '27/03/1999', 'Male', ' Surabaya', 'Surabaya', '+6285895986529', 'Business', '4000000', 'Housewife', '85685bc5f8ffd250395126060b13f5d4.jpg', 'submited', 'submited', '', 'submited', '', 'S023243279', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O+', 2),
(3, 2017, 32, '2017CB00002001003', 3, 1, 'Alvin Bintang', 'Aan', 'Bubun', '22/05/1999', 'Male', ' Surabaya', 'Surabaya', '+6285895986520', 'Business', '4000000', 'Housewife', '01fbb2791f1473f5e10cadd41ee0d17f.jpg', 'submited', 'submited', '', 'submited', '', 'S023245473', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O+', 2),
(4, 2017, 33, '2017CB00002001004', 4, 1, 'Arbi Ahmad', 'Bial', 'Bubu', '16/07/1999', 'Male', 'Surabaya', 'Surabaya', '+6285895986277', 'Business', '4000000', 'Housewife', 'e8c1b73c6902587a2f75a2dd3a376728.jpg', 'submited', 'submited', '', 'submited', '', 'S027673273', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'A-', 2),
(5, 2017, 34, '2017CB00002001005', 5, 1, 'Adi Yakub', 'Aad', 'Uud', '23/09/1999', 'Male', 'Surabaya', 'Surabaya', '+6281217807622', 'Business', '4000000', 'Housewife', '8b478b33efab3e2df0d5065521cc1fc5.jpg', 'submited', 'submited', '', 'submited', '', 'S023298773', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'A-', 2),
(6, 2017, 35, '2017CB00003007001', 1, 7, 'Queen Bella', 'Haqi', 'Bubun', '05/05/1999', 'Female', ' Surabaya', 'Surabaya', '+6285895986522', 'Business', '4000000', 'Housewife', 'f0000058d4d4d5a1f39b09e81772420a.jpg', 'submited', 'submited', '', 'submited', '', 'S02322332', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'A-', 4),
(7, 2017, 36, '2017CB00003007002', 2, 7, 'Siti Nuriyah', 'Santo', 'Sinta', '07/01/1999', 'Female', ' Surabaya', 'Surabaya', '+6285895986529', 'Business', '4000000', 'Housewife', 'cb66383252df401c1fbdd42364692a47.jpg', 'submited', 'submited', '', 'submited', '', 'S02325022', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'A-', 4),
(8, 2017, 37, '2017CB00003007003', 3, 7, 'Fery Eka Wahyuni', 'Agus', 'Tonik', '02/12/1999', 'Female', ' Surabaya', 'Surabaya', '+6285895986522', 'Business', '4000000', 'Housewife', 'e54ac720d0a498592d77afc256094608.jpg', 'submited', 'submited', '', '', '', 'S02326752', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'B+', 4),
(9, 2017, 38, '2017CB00003007004', 4, 7, 'Nur Aeni', 'Udin', 'Anik', '22/06/1999', 'Female', ' Surabaya', 'Surabaya', '+6285895986521', 'Business', '4000000', 'Housewife', 'f52b673f7555c6b46225a4334925cc14.jpg', 'submited', 'submited', '', 'submited', '', 'S02388332', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'B+', 4),
(10, 2017, 39, '2017CB00003007005', 5, 7, 'Heru  Fatoni', 'Herman', 'Siti', '04/04/1999', 'Male', ' Surabaya', 'Surabaya', '+6281217807622', 'Business', '5000000', 'Housewife', '4cce209110e9b8601f409111e2218dee.jpg', 'submited', 'submited', '', 'submited', '', 'S02320972', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'A+', 4);

-- --------------------------------------------------------

--
-- Table structure for table `subjects_mark`
--

CREATE TABLE `subjects_mark` (
  `id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `grade` varchar(30) NOT NULL,
  `statud` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_name` varchar(150) NOT NULL,
  `class` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `suggestion_title` varchar(150) NOT NULL,
  `suggestion` varchar(2500) NOT NULL,
  `date` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachers_info`
--

CREATE TABLE `teachers_info` (
  `id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `farther_name` varchar(150) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `birth_date` varchar(150) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `present_address` varchar(300) NOT NULL,
  `permanent_address` varchar(300) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `position` varchar(150) NOT NULL,
  `working_hour` varchar(50) NOT NULL,
  `educational_qualification_1` varchar(500) NOT NULL,
  `educational_qualification_2` varchar(500) NOT NULL,
  `educational_qualification_3` varchar(500) NOT NULL,
  `educational_qualification_4` varchar(500) NOT NULL,
  `educational_qualification_5` varchar(500) NOT NULL,
  `teachers_photo` varchar(200) NOT NULL,
  `cv` varchar(30) NOT NULL,
  `educational_certificat` varchar(30) NOT NULL,
  `exprieance_certificatte` varchar(30) NOT NULL,
  `files_info` varchar(500) NOT NULL,
  `index_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers_info`
--

INSERT INTO `teachers_info` (`id`, `user_id`, `fullname`, `farther_name`, `mother_name`, `birth_date`, `sex`, `present_address`, `permanent_address`, `phone`, `subject`, `position`, `working_hour`, `educational_qualification_1`, `educational_qualification_2`, `educational_qualification_3`, `educational_qualification_4`, `educational_qualification_5`, `teachers_photo`, `cv`, `educational_certificat`, `exprieance_certificatte`, `files_info`, `index_no`) VALUES
(1, '23', 'Firman Zain', 'Zozo', 'Zizin', '03/03/1993', 'Male', 'Surabaya', 'Surabaya', '+6285895986527', 'MIPA', 'Teacher', 'Full time', 'S1,Universitas Negeri Surabaya,3.40,2016', '', '', '', '', 'da0bc800445bdfad61d09a3a739af571.jpg', 'submited', 'submited', '', 'S023245', '1'),
(2, '24', 'Dio  Saputra', 'Dodo', 'Mimin', '23/01/1993', 'Male', 'Surabaya', 'Surabaya', '+6285895986523', 'Teknik', 'Teacher', 'Full time', 'S1,Teknik Informatika,3.4,2016', '', '', '', '', '34fa4d81c1d952cfafc57ee898031671.jpg', 'submited', 'submited', '', 'S221288', '2'),
(3, '25', 'Wayan Adhitya', 'Wayway', 'Momon', '22/04/1993', 'Male', 'Surabaya', 'Surabaya', '+6285895986729', 'Teknik', 'Headmaster', 'Full time', 'S1,Universitas Negeri Surabaya,3.4,2016', '', '', '', '', '393873eb059999cd1b5604db02c30afd.jpg', 'submited', 'submited', '', 'S001234244', '3'),
(4, '26', 'Dicky Wahyu', 'Didik', 'Mimik', '20/07/1993', 'Male', 'Surabaya', 'Surabaya', '+6285895986227', 'Teknik', 'Teacher', 'Full time', 'S1,ITS,3.4,2016', '', '', '', '', '4eea903fcd60ace9d8492fad26d7f230.jpg', 'submited', 'submited', '', 'S001234288', '4'),
(5, '27', 'Lintang Gemilang', 'Limbat', 'Momon', '23/06/1993', 'Male', 'Surabaya', 'Surabaya', '+6285895986528', 'Teknik', 'Headmaster', 'Full time', 'S2,Universitas Negeri Surabaya,3.4,2001', '', '', '', '', 'f4b197b75b3b74817befeb7abdb773d1.jpg', 'submited', 'submited', '', 'S001234242', '5'),
(6, '28', 'Rizky Febrianto', 'Roki', 'Ruma', '23/08/1994', 'Male', 'Surabaya', 'Surabaya', '+62858959862389', 'Teknik', 'Teacher', 'Full time', 'S1,Unair,2.4,2001', '', '', '', '', '6049cb039dc1ad0fac61fb179497592b.jpg', 'submited', 'submited', '', 'S001234266', '6'),
(7, '29', 'Putut Wijaya', 'Popo', 'Pipit', '22/08/1993', 'Male', 'Surabaya', 'Surabaya', '+6285895986529', 'Teknik', 'Teacher', 'Full time', 'S1,Universitas Negeri Surabaya,3.4,2016', '', '', '', '', '4841afce5e3d3bd763629d387ddb3723.jpg', 'submited', 'submited', '', 'S001234299', '7');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `employ_id` int(11) NOT NULL,
  `employ_title` varchar(150) NOT NULL,
  `present_or_absent` text NOT NULL,
  `attend_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`id`, `year`, `date`, `employ_id`, `employ_title`, `present_or_absent`, `attend_time`) VALUES
(1, 2017, 1485795600, 23, 'Firman Zain', 'Present', '03:59 pm');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_school`
--

CREATE TABLE `teacher_school` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `cabang_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_school`
--

INSERT INTO `teacher_school` (`id`, `teacher_id`, `cabang_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 5, 2),
(4, 3, 4),
(5, 4, 4),
(6, 6, 4),
(7, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `transection`
--

CREATE TABLE `transection` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `acco_id` int(11) NOT NULL,
  `category` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(11) NOT NULL,
  `rout_title` varchar(200) NOT NULL,
  `start_end` varchar(300) NOT NULL,
  `vicles_amount` varchar(20) NOT NULL,
  `descriptions` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `farther_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `birth_date` varchar(15) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `present_address` varchar(200) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `working_hour` varchar(30) NOT NULL,
  `educational_qualification_1` varchar(200) NOT NULL,
  `educational_qualification_2` varchar(200) NOT NULL,
  `educational_qualification_3` varchar(200) NOT NULL,
  `educational_qualification_4` varchar(200) NOT NULL,
  `educational_qualification_5` varchar(200) NOT NULL,
  `users_photo` varchar(200) NOT NULL,
  `cv` varchar(30) NOT NULL,
  `educational_certificat` varchar(30) NOT NULL,
  `exprieance_certificatte` varchar(30) NOT NULL,
  `files_info` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `profile_image` varchar(100) NOT NULL,
  `user_status` text NOT NULL,
  `leave_status` varchar(15) NOT NULL,
  `leave_start` int(11) NOT NULL,
  `leave_end` int(11) NOT NULL,
  `salary` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `phone`, `profile_image`, `user_status`, `leave_status`, `leave_start`, `leave_end`, `salary`) VALUES
(10, '::1', 'Head Office', '$2y$08$qBQ/MzJzXyil0yuVM.s1XewJerIMCntwxez/Jfs3x/xwxFnkKWo2y', NULL, 'ho@gmail.com', NULL, NULL, NULL, NULL, 1484033771, 1485838482, 1, 'Head', 'Office', '123456789', 'admin.png', 'Employee', 'Available', 0, 0, 0),
(23, '::1', 'Firman Zain', '$2y$08$WnqKRCDlTppbr9pCR1UbeeJ74feR91zzPjoksSdrC/qQuc.D3..BG', NULL, 'firman@gmail.com', NULL, NULL, NULL, NULL, 1485838659, 1485853542, 1, 'Firman', 'Zain', '+6285895986527', 'da0bc800445bdfad61d09a3a739af571.jpg', 'Employee', 'Available', 0, 0, 0),
(24, '::1', 'Dio  Saputra', '$2y$08$eR5ifOlVX1CX59IaJ0ADEeXuyeR.UoLP0r0ZBzILvarGmws3S8nk2', NULL, 'dio@gmail.com', NULL, NULL, NULL, NULL, 1485839014, 1485852758, 1, 'Dio ', 'Saputra', '+6285895986523', '34fa4d81c1d952cfafc57ee898031671.jpg', 'Employee', 'Available', 0, 0, 0),
(25, '::1', 'Wayan Adhitya', '$2y$08$scVA7zRn2yzI1axpXHEhjOoZ4fhzeC91q8l9UQ5kwsceC97iDFAS.', NULL, 'wayan@gmail.com', NULL, NULL, NULL, NULL, 1485839203, 1485839203, 1, 'Wayan', 'Adhitya', '+6285895986729', '393873eb059999cd1b5604db02c30afd.jpg', 'Employee', 'Available', 0, 0, 0),
(26, '::1', 'Dicky Wahyu', '$2y$08$asadGWYmv46C7Qld6B54eOxVYv5.Y68dVYLT2ieDdBizbqTQ3NFP6', NULL, 'dicky@gmail.com', NULL, NULL, NULL, NULL, 1485839320, 1485839320, 1, 'Dicky', 'Wahyu', '+6285895986227', '4eea903fcd60ace9d8492fad26d7f230.jpg', 'Employee', 'Available', 0, 0, 0),
(27, '::1', 'Lintang Gemilang', '$2y$08$PT.ViPDttXz2YBoorGEZqun6ngKgRGDNFTwu4mmDBLsaSEU.qgHsa', NULL, 'lintang@gmail.com', NULL, NULL, NULL, NULL, 1485839664, 1485853738, 1, 'Lintang', 'Gemilang', '+6285895986528', 'f4b197b75b3b74817befeb7abdb773d1.jpg', 'Employee', 'Available', 0, 0, 0),
(28, '::1', 'Rizky Febrianto', '$2y$08$HIWmkr6utCqWrGs18c97DeCUqbbdlXg/cg.Ju29Xk2.R6OPoLY.6C', NULL, 'rizky@gmail.com', NULL, NULL, NULL, NULL, 1485839804, 1485848211, 1, 'Rizky', 'Febrianto', '+62858959862389', '6049cb039dc1ad0fac61fb179497592b.jpg', 'Employee', 'Available', 0, 0, 0),
(29, '::1', 'Putut Wijaya', '$2y$08$O9bgePSucx0hltJU.oqlbOD/rmVJa6.5W00zzz/q/DHR.MnL.9pSS', NULL, 'putut@gmail.com', NULL, NULL, NULL, NULL, 1485842986, 1485842986, 1, 'Putut', 'Wijaya', '+6285895986529', '4841afce5e3d3bd763629d387ddb3723.jpg', 'Employee', 'Available', 0, 0, 0),
(30, '::1', 'Dini Setia', '$2y$08$/5zUYJg08H4WfTbP58vQp.WqR/qzR6ZA1UT27uTieYLTTKMdqtAVu', NULL, 'dini@gmail.com', NULL, NULL, NULL, NULL, 1485843789, 1485843789, 1, 'Dini', 'Setia', '+6285895986529', '7a0b20d3b54e285a8554d11c0c1f1f06.jpg', '', '', 0, 0, 0),
(31, '::1', 'Bagas Pamungkas', '$2y$08$oqjIGqYy5cUNprCixdR0tOHBwdy48/xct1XQhYpSCD4YHUv78qxhi', NULL, 'bagas@gmail.com', NULL, NULL, NULL, NULL, 1485843897, 1485843897, 1, 'Bagas', 'Pamungkas', '+6285895986529', '85685bc5f8ffd250395126060b13f5d4.jpg', '', '', 0, 0, 0),
(32, '::1', 'Alvin Bintang', '$2y$08$FE1OpKghmzb2FHRqjDH3oOQLOT1YkM4qkzganQvgs8T95.Q7h03pm', NULL, 'alvin@gmail.com', NULL, NULL, NULL, NULL, 1485844035, 1485844035, 1, 'Alvin', 'Bintang', '+6285895986520', '01fbb2791f1473f5e10cadd41ee0d17f.jpg', '', '', 0, 0, 0),
(33, '::1', 'Arbi Ahmad', '$2y$08$g6PekeRxkAzBLmA/CrG8C.hRC1Ab5X9crsMDdoGMe35gco4CSUmb.', NULL, 'arbi@gmail.com', NULL, NULL, NULL, NULL, 1485844168, 1485844168, 1, 'Arbi', 'Ahmad', '+6285895986277', 'e8c1b73c6902587a2f75a2dd3a376728.jpg', '', '', 0, 0, 0),
(34, '::1', 'Adi Yakub', '$2y$08$i1.uDi7D87F.Av1ezCseDuAAwK0UCZskLhqWg0C1ed8AU28UyjBHK', NULL, 'adi@gmail.com', NULL, NULL, NULL, NULL, 1485844334, 1485844334, 1, 'Adi', 'Yakub', '+6281217807622', '8b478b33efab3e2df0d5065521cc1fc5.jpg', '', '', 0, 0, 0),
(35, '::1', 'Queen Bella', '$2y$08$4EOx.ATai1IR45RGYI9l4uki2jPsxHctob7ZkQCtDyQK6VVXWwAka', NULL, 'queen@gmail.com', NULL, NULL, NULL, NULL, 1485844557, 1485852058, 1, 'Queen', 'Bella', '+6285895986522', 'f0000058d4d4d5a1f39b09e81772420a.jpg', '', '', 0, 0, 0),
(36, '::1', 'Siti Nuriyah', '$2y$08$JKbwB7AJEnfC1KZZnNyDh.33HG54XUhO3GOt92VoHXzpjzNJjlD4S', NULL, 'siti@gmail.com', NULL, NULL, NULL, NULL, 1485844736, 1485844736, 1, 'Siti', 'Nuriyah', '+6285895986529', 'cb66383252df401c1fbdd42364692a47.jpg', '', '', 0, 0, 0),
(37, '::1', 'Fery Eka Wahyuni', '$2y$08$MZR/PhXAoiOR0oLXRqUv9ujFcV8Nq.0FNZ.q.6BE4lH7GNFdaWXMO', NULL, 'fery@gmail.com', NULL, NULL, NULL, NULL, 1485844914, 1485844914, 1, 'Fery', 'Eka Wahyuni', '+6285895986522', 'e54ac720d0a498592d77afc256094608.jpg', '', '', 0, 0, 0),
(38, '::1', 'Nur Aeni', '$2y$08$lMp31g/woalQ7CXzXakEdulAzGTLrAdHIqsejvjFvNCq5hbr2QYXC', NULL, 'eni@gmail.com', NULL, NULL, NULL, NULL, 1485845005, 1485845005, 1, 'Nur', 'Aeni', '+6285895986521', 'f52b673f7555c6b46225a4334925cc14.jpg', '', '', 0, 0, 0),
(39, '::1', 'Heru  Fatoni', '$2y$08$p37ugxNakf.hzE1C0PC.z.sx6UmCEEgfcZbmlNdvepMrvxNyv4UY2', NULL, 'heru@gmail.com', NULL, NULL, NULL, NULL, 1485845088, 1485845088, 1, 'Heru ', 'Fatoni', '+6281217807622', '4cce209110e9b8601f409111e2218dee.jpg', '', '', 0, 0, 0),
(40, '::1', 'Haqi Jaja', '$2y$08$KjwOLIjZnUXk61yDXg0cZeIIEodD0gD3VEGcirOecQxuOUSDGe6hS', NULL, 'haqi@gmail.com', NULL, NULL, NULL, NULL, 1485851219, 1485851784, 1, 'Haqi', 'Jaja', '+6285895986529', '2f3283c315d16638f7e622044257540d.jpg', '', '', 0, 0, 0),
(41, '::1', 'Agus  Setiyo', '$2y$08$kru9bbY80aMkZxjIQqkJvuRc/vryaC7X7KK2JG8dWOQmfSdjh/LYa', NULL, 'agus@gmail.com', NULL, NULL, NULL, NULL, 1485851339, 1485851339, 1, 'Agus ', 'Setiyo', '+6285895986524', '86e8459f37f34dbf824e61537ca37bf7.jpg', '', '', 0, 0, 0),
(42, '::1', 'Ririn Pramita', '$2y$08$oW3PMvCI06BOjq8PKtHx1.b6WaXZVWLOQ4NeDkOu/DHSP8Tpxss8G', NULL, 'ririn@gmail.com', NULL, NULL, NULL, NULL, 1485851478, 1485851478, 1, 'Ririn', 'Pramita', '+6285895986723', 'de6eea91c5f14f892fff01fd339c95e9.jpg', '', '', 0, 0, 0),
(43, '::1', 'Didin Kiswanto', '$2y$08$n3kd9xINhn0qVV65YRd80OMWxoRQ./lYb4tk/ZhnJpPnhozCn/yWS', NULL, 'didin@gmail.com', NULL, NULL, NULL, NULL, 1485852146, 1485852146, 1, 'Didin', 'Kiswanto', '+6285895986525', 'b537b3870fdea6df8e54d2035a60210f.jpg', '', '', 0, 0, 0),
(44, '::1', 'Sutinah  Mariah', '$2y$08$gQJnKon3IHwekHiZM8TXp.3PKJnlsxDExktWn/AW90ND1CasT5I4y', NULL, 'sutinah@gmail.com', NULL, NULL, NULL, NULL, 1485852226, 1485852226, 1, 'Sutinah ', 'Mariah', '+6285895986522', '0b7f982cb6f62d6cb88f24286b96ac98.jpg', '', '', 0, 0, 0),
(45, '::1', 'Aan Mubarok', '$2y$08$WSijvr4Rt8zHR4j9oQFisONbe0q45WqOZCBL7f8QmPyIJajrYzC6O', NULL, 'aan@gmail.com', NULL, NULL, NULL, NULL, 1485852399, 1485852399, 1, 'Aan', 'Mubarok', '+62858959867244', '1929142ee6e2a7754379243e48b9140c.jpg', '', '', 0, 0, 0),
(46, '::1', 'Bial Bilal', '$2y$08$CaxxgYqv7PE3JPu08eQIxOZHG2u6WkBrc6DJGwvOydomR1oHZ.FPC', NULL, 'bial@gmail.com', NULL, NULL, NULL, NULL, 1485852550, 1485852550, 1, 'Bial', 'Bilal', '+6285895986520', 'a6f2c27e7ebc952a0e0ddf337ee4024c.jpg', '', '', 0, 0, 0),
(47, '::1', 'Maryam  Mersedes', '$2y$08$8uxmcJVjKhMme1rfbTKPJuPYKA.TLM6.CBp52blqkb3wsrA2tWB5i', NULL, 'maryam@gmail.com', NULL, NULL, NULL, NULL, 1485852703, 1485852703, 1, 'Maryam ', 'Mersedes', '+6285895986573', 'efc4c0d7a98a74cd1c6b07910a859465.jpg', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(65, 10, 1),
(76, 23, 4),
(77, 24, 4),
(78, 25, 2),
(79, 26, 4),
(80, 27, 2),
(81, 28, 4),
(82, 29, 4),
(83, 30, 3),
(84, 31, 3),
(85, 32, 3),
(86, 33, 3),
(87, 34, 3),
(88, 35, 3),
(89, 36, 3),
(90, 37, 3),
(91, 38, 3),
(92, 39, 3),
(93, 40, 5),
(94, 41, 5),
(95, 42, 5),
(96, 43, 5),
(97, 44, 5),
(98, 45, 5),
(99, 46, 5),
(100, 47, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `company_phone` varchar(15) NOT NULL,
  `company_email` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `cp_name` varchar(150) NOT NULL,
  `cp_address` varchar(200) NOT NULL,
  `cp_phone` varchar(15) NOT NULL,
  `bank_name` varchar(150) NOT NULL,
  `branch_name` varchar(15) NOT NULL,
  `account_no` varchar(30) NOT NULL,
  `ifsc_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_title`
--
ALTER TABLE `account_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_exam`
--
ALTER TABLE `add_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_category`
--
ALTER TABLE `books_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calender_events`
--
ALTER TABLE `calender_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_students`
--
ALTER TABLE `class_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject`
--
ALTER TABLE `class_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_week_day`
--
ALTER TABLE `config_week_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormitory_bed`
--
ALTER TABLE `dormitory_bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormitory_room`
--
ALTER TABLE `dormitory_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_attendanc`
--
ALTER TABLE `exam_attendanc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_grade`
--
ALTER TABLE `exam_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_routine`
--
ALTER TABLE `exam_routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_item`
--
ALTER TABLE `fee_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_result`
--
ALTER TABLE `final_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inven_category`
--
ALTER TABLE `inven_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inve_item`
--
ALTER TABLE `inve_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issu_item`
--
ALTER TABLE `issu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_application`
--
ALTER TABLE `leave_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_member`
--
ALTER TABLE `library_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `massage`
--
ALTER TABLE `massage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents_info`
--
ALTER TABLE `parents_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_action`
--
ALTER TABLE `result_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_shit`
--
ALTER TABLE `result_shit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_submition_info`
--
ALTER TABLE `result_submition_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_based_access`
--
ALTER TABLE `role_based_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_salary`
--
ALTER TABLE `set_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slip`
--
ALTER TABLE `slip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects_mark`
--
ALTER TABLE `subjects_mark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers_info`
--
ALTER TABLE `teachers_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_school`
--
ALTER TABLE `teacher_school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transection`
--
ALTER TABLE `transection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_title`
--
ALTER TABLE `account_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `add_exam`
--
ALTER TABLE `add_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `books_category`
--
ALTER TABLE `books_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `calender_events`
--
ALTER TABLE `calender_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `class_students`
--
ALTER TABLE `class_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `config_week_day`
--
ALTER TABLE `config_week_day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dormitory_bed`
--
ALTER TABLE `dormitory_bed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dormitory_room`
--
ALTER TABLE `dormitory_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_attendanc`
--
ALTER TABLE `exam_attendanc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_grade`
--
ALTER TABLE `exam_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_routine`
--
ALTER TABLE `exam_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_item`
--
ALTER TABLE `fee_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `final_result`
--
ALTER TABLE `final_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `inven_category`
--
ALTER TABLE `inven_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inve_item`
--
ALTER TABLE `inve_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `issu_item`
--
ALTER TABLE `issu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jurnal`
--
ALTER TABLE `jurnal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `leave_application`
--
ALTER TABLE `leave_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_member`
--
ALTER TABLE `library_member`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `massage`
--
ALTER TABLE `massage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parents_info`
--
ALTER TABLE `parents_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `result_action`
--
ALTER TABLE `result_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `result_shit`
--
ALTER TABLE `result_shit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `result_submition_info`
--
ALTER TABLE `result_submition_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role_based_access`
--
ALTER TABLE `role_based_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `set_salary`
--
ALTER TABLE `set_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slip`
--
ALTER TABLE `slip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `subjects_mark`
--
ALTER TABLE `subjects_mark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teachers_info`
--
ALTER TABLE `teachers_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `teacher_school`
--
ALTER TABLE `teacher_school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `transection`
--
ALTER TABLE `transection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
