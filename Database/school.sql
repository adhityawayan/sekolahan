-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2017 at 09:07 AM
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

--
-- Dumping data for table `add_exam`
--

INSERT INTO `add_exam` (`id`, `year`, `exam_title`, `start_date`, `class_id`, `total_time`, `publish`, `final`, `status`) VALUES
(4, 2016, 'Test Exam 1', '09/06/2016', 1, '1 Hour 30 ', 'Publish', 'NoFinal', 'NoResult'),
(5, 2016, 'FInal Exam', '08/10/2016', 3, '30 Minute', 'Not Publish', 'Final', 'NoResult'),
(7, 2017, 'UAS', '11/01/2017', 11, '30 Minute', 'Publish', 'Final', 'NoResult');

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

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `date`, `isbn_no`, `book_no`, `books_title`, `authore`, `category`, `edition`, `pages`, `language`, `uploderTitle`, `books_amount`, `status`, `issu_date`, `due_date`, `issu_member_no`, `cover_photo`) VALUES
(1, 1464559200, '978-3-16-148410-0', 20161, 'Book Test 1', 'Author Test 1', 'English', '16 th', 1500, 'English', 'Headmaster', 1, 'Not Available', 1475245412, 1475186400, 1, 'f7cebda75f3c1c09ef31e2e525db8805.gif'),
(2, 1464559200, '978-3-16-148410-1', 20162, 'Book Test 2', 'Author Test 2', 'Bangla ', '16 th', 1500, 'Bangla', 'Headmaster', 2, 'Available', 0, 0, 0, 'eee468e20c7387d459487dafda58709d.gif'),
(3, 1464559200, '978-3-16-148410-2', 20163, 'Book Test 3', 'Author Test 3', 'English', '16 th', 522, 'English', 'Headmaster', 3, 'Available', 0, 0, 0, '6583655141ea7c33d3981bbd7332c586.gif'),
(4, 1464559200, '978-3-16-148410-3', 20164, 'Book Test 4', 'Author Test 4', 'Bangla ', '16 th', 520, 'Bangla', 'Headmaster', 4, 'Available', 0, 0, 0, 'ceabf75a2a7dead8862b7821d3fd3bd4.gif'),
(5, 1464559200, '978-3-16-148410-4', 20165, 'Book Test 5', 'Author Test 5', 'Bangla ', '14 th', 711, 'Bangla', 'Headmaster', 5, 'Available', 0, 0, 0, '9d4b20f013a24ebc882c84b0b344e526.gif'),
(6, 1464559200, '978-3-16-148410-5', 20166, 'Book Test 6', 'Author Test 6', 'English', '10 th', 485, 'English', 'Headmaster', 6, 'Available', 0, 0, 0, '1d28dd98b150b33ad4a708a95031408a.gif'),
(7, 1464559200, '978-3-16-148410-6', 20167, 'Book Test 7', 'Author Test 77', 'English', '9 th', 485, 'English', 'Headmaster', 7, 'Available', 0, 0, 0, '036337321c644b23bd7916f3e4b3eca4.gif'),
(8, 1464559200, '978-3-16-148410-7', 20168, 'Book Test 8', 'Author Test 8', 'English', '14 th', 950, 'English', 'Headmaster', 8, 'Available', 0, 0, 0, '3b174671512c28eaf95be33657e2af69.gif');

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

--
-- Dumping data for table `books_category`
--

INSERT INTO `books_category` (`id`, `category_creator`, `category_title`, `parent_category`, `description`, `books_amount`) VALUES
(1, 'Headmaster', 'English', '', '', 0),
(2, 'Headmaster', 'Story ', 'English', '', 0),
(3, 'Headmaster', 'Bangla ', '', '', 0),
(4, 'Headmaster', 'Story', 'Bangla ', '', 0),
(5, 'Headmaster', 'poem', 'English', '', 0);

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
(1, 'S01', 'Yayasan Ikhlas', '0321 0708867', 'Jalan Mawar 27 Block B', 0);

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

--
-- Dumping data for table `calender_events`
--

INSERT INTO `calender_events` (`id`, `title`, `start_date`, `end_date`, `color`, `url`, `user_id`) VALUES
(1, 'test', '05-05-2016', '06-05-2016', 'red', 'test.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `class_title` varchar(50) NOT NULL,
  `class_group` varchar(150) NOT NULL,
  `section` varchar(100) NOT NULL,
  `section_student_capacity` varchar(5) NOT NULL,
  `classCode` int(11) NOT NULL,
  `student_amount` int(11) NOT NULL,
  `attendance_percentices_daily` int(11) NOT NULL,
  `attend_percentise_yearly` int(11) NOT NULL,
  `month_fee` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `class_title`, `class_group`, `section`, `section_student_capacity`, `classCode`, `student_amount`, `attendance_percentices_daily`, `attend_percentise_yearly`, `month_fee`) VALUES
(11, 'Class 1', 'Class G1', 'Matematika', '10', 13, 4, 100, 100, ''),
(12, 'Class 2', '', 'Matematika XX', '10', 2, 1, 0, 0, ''),
(13, 'Class 3', '', 'Bahasa Inggris,Bahasa Indonesia', '10', 4, 1, 0, 0, '');

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
(1, 1, '', 'Sunday', 'AMAR BANGLA BOI', 'Willie B. Quint', '9.00am', '9.30', '101'),
(2, 1, '', 'Sunday', 'ENGLISH FOR TODAY', 'Fredrick V. Keyes', '9.31am', '10.00am', '101'),
(3, 1, '', 'Sunday', 'PRIMARY MATHEMATICS', 'mumar abboud', '10.01am', '10.30am', '101'),
(4, 1, '', 'Sunday', 'PRIMARY MATHEMATICS', 'mumar abboud', '10.01am', '10.30am', '101'),
(5, 2, '', 'Sunday', 'AMAR BANGLA BOI', 'Inayah Asfour', '9.00am', '9.30am', '102'),
(6, 2, '', 'Sunday', 'ENGLISH FOR TODAY', 'mumar abboud', '9.31am', '10.00am', '102'),
(7, 2, '', 'Sunday', 'PRIMARY MATHEMATICS', 'Fredrick V. Keyes', '10.01am', '10.30am', '102'),
(8, 3, '', 'Sunday', 'AMAR BANGLA BOI', 'Willie B. Quint', '9.00am', '9.30am', '103'),
(9, 3, '', 'Sunday', 'ENGLISH FOR TODAY', 'Fredrick V. Keyes', '9.31am', '10.00am', '103'),
(10, 3, '', 'Sunday', 'PRIMARY MATHEMATICS', 'mumar abboud', '10.01am', '10.30am', '103'),
(11, 3, '', 'Sunday', 'BANGLADESH AND GLOBAL STUDIES', 'Inayah Asfour', '10.30am', '11.00am', '103'),
(12, 3, '', 'Monday', 'ENGLISH FOR TODAY', 'Fredrick V. Keyes', '9.00am', '9.30', '103'),
(13, 3, '', 'Monday', 'PRIMARY MATHEMATICS', 'mumar abboud', '9.31am', '10.00am', '103'),
(14, 11, '', 'Sunday', 'Persamaan Linier', 'Mokhamad Ariadi', '09:00', '11:00', '2'),
(15, 11, '', 'Tuesday', 'Persamaan Linier', 'Mokhamad Ariadi', '10:00', '12:00', '3'),
(16, 11, '', 'Tuesday', 'Persamaan Linier', 'Mokhamad Ariadi', '13:00', '15:00', '4'),
(17, 11, '', 'Sunday', 'Kuadrat', 'Adhitya W. Yunanza', '07:00', '09:00', '2'),
(18, 11, '', 'Wednesday', 'Kuadrat', 'Adhitya W. Yunanza', '09:00', '11:00', '3'),
(19, 11, '', 'Thursday', 'Kuadrat', 'Adhitya W. Yunanza', '13:00', '15:00', '4'),
(20, 11, '', 'Monday', 'Persamaan Linier', 'Mokhamad Ariadi', '10:00', '11:00', '3'),
(21, 12, '', 'Sunday', 'Statistika', 'Mokhamad Ariadi', '09:00', '10:00', '2');

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
(1, 2016, 4, 1, '201601001', 1, 'Class 1', 'Section A,Section B,Section C,Section D', 'Benjamin D. Lampe', 100, ''),
(2, 2016, 12, 2, '201601002', 1, 'Class 1', 'Section A,Section B,Section C,Section D', 'Rahim Hasan', 100, ''),
(3, 2016, 13, 3, '201601003', 1, 'Class 1', 'Section A,Section B,Section C,Section D', 'Junayed Hak', 100, ''),
(4, 2016, 16, 4, '201601004', 1, 'Class 1', '', 'Razia Akture', 0, ''),
(5, 2016, 17, 1, '201602001', 2, 'Class 2', '', 'Abdullah  hossain', 100, ''),
(6, 2016, 18, 2, '201602002', 2, 'Class 2', '', 'Sujana Ahmed', 100, ''),
(7, 2016, 19, 3, '201602003', 2, 'Class 2', '', 'Mahmud Hasan', 100, ''),
(8, 2016, 20, 4, '201602004', 2, 'Class 2', '', 'Mahbuba Akter', 100, ''),
(9, 2016, 21, 5, '201602005', 2, 'Class 2', '', 'Irfan Hossain', 100, ''),
(10, 2016, 22, 6, '201602006', 2, 'Class 2', '', 'Imran Hasan', 100, ''),
(11, 2016, 23, 5, '201601005', 1, 'Class 1', '', 'Polash Sarder', 100, ''),
(12, 2016, 24, 6, '201601006', 1, 'Class 1', '', 'Sumon Akon', 0, ''),
(13, 2016, 25, 1, '201603001', 3, 'Class 3', '', 'Farjana Akter', 0, ''),
(14, 2016, 26, 2, '201603002', 3, 'Class 3', '', 'Akram Hossain', 100, ''),
(15, 2016, 27, 3, '201603003', 3, 'Class 3', '', 'Alamin Saeder', 100, ''),
(16, 2016, 28, 4, '201603004', 3, 'Class 3', '', 'Sabina Sumi', 100, ''),
(17, 2016, 29, 1, '201604001', 4, 'Class 4', '', 'Sanjida Hossain', 100, ''),
(18, 2016, 30, 2, '201604002', 4, 'Class 4', '', 'Kawser  Shikder', 100, ''),
(19, 2016, 31, 3, '201604003', 4, 'Class 4', '', 'Shohana Akter', 100, ''),
(20, 2016, 32, 4, '201604004', 4, 'Class 4', '', 'Juthi Khanam', 100, ''),
(21, 2016, 33, 1, '201605001', 5, 'Class 5', '', 'Tanjila Akter', 100, ''),
(22, 2016, 34, 2, '201605002', 5, 'Class 5', '', 'Nusrat Jahan', 100, ''),
(23, 2016, 35, 3, '201605003', 5, 'Class 5', '', 'Amina Akter', 100, ''),
(24, 2016, 36, 4, '201605004', 5, 'Class 5', '', 'Ebrahim Khondokar', 0, ''),
(25, 2016, 37, 5, '201605005', 5, 'Class 5', '', 'Mintu  Fokir', 0, ''),
(26, 2016, 38, 1, '201606001', 6, 'Class 6', 'Section A', 'Shohid Islam', 100, ''),
(27, 2016, 39, 2, '201606002', 6, 'Class 6', 'Section B', 'Khadija Akter', 100, ''),
(28, 2016, 40, 3, '201606003', 6, 'Class 6', 'Section A', 'Maruf Hossain', 100, ''),
(29, 2016, 41, 4, '201606004', 6, 'Class 6', 'Section B', 'Mitu  Akter', 100, ''),
(30, 2016, 42, 5, '201606005', 6, 'Class 6', 'Section A', 'Rayhan  Kebria', 0, ''),
(32, 2016, 44, 2, '201607002', 7, 'Class 7', 'Section A,Section B,Section C,Section D', 'Airin Akter', 0, ''),
(33, 2016, 45, 3, '201607003', 7, 'Class 7', '', 'Hemel Hossain', 0, ''),
(34, 2016, 46, 4, '201607004', 7, 'Class 7', '', 'Mou Akter', 0, ''),
(35, 2016, 47, 5, '201607005', 7, 'Class 7', '', 'Dedar  Hossain', 0, ''),
(36, 2016, 48, 6, '201607006', 7, 'Class 7', '', 'Samia Akter', 0, ''),
(37, 2016, 49, 1, '201608001', 8, 'Class 8', '', 'Al Mamun', 0, ''),
(38, 2016, 50, 2, '201608002', 8, 'Class 8', '', 'Jiniya Hoq', 0, ''),
(39, 2016, 51, 3, '201608003', 8, 'Class 8', '', 'Junayed Ahmed', 0, ''),
(40, 2016, 52, 4, '201608004', 8, 'Class 8', '', 'Priya Ahmed', 0, ''),
(41, 2016, 53, 5, '201608005', 8, 'Class 8', '', 'Mithu Khondokar', 0, ''),
(42, 2016, 54, 1, '201609001', 9, 'Class 9', '', 'Rasel Hossain', 0, ''),
(43, 2016, 56, 2, '201609002', 9, 'Class 9', '', 'Test Name', 0, ''),
(44, 2018, 4, 1, '201701007', 13, 'Class 3', 'Matematika', 'Noviagati  Pramudia', 0, ''),
(46, 2017, 7, 3, '201713002', 12, 'Class 2', 'Matematika', 'Juniar Sandra', 0, ''),
(47, 2017, 11, 2, '201713003', 12, 'Class 2', 'Matematika', 'Khoriri Matoh', 0, ''),
(48, 2017, 12, 4, '201713004', 12, 'Class 2', 'Matematika', 'Silvia Kurnia', 0, '');

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
(1, 2016, 1, 'AMAR BANGLA BOI', '', 'Willie B. Quint', '2016', 'NCTB', 0),
(2, 2016, 1, 'ENGLISH FOR TODAY', '', 'Fredrick V. Keyes', '2016', 'NCTB', 0),
(3, 2016, 1, 'PRIMARY MATHEMATICS', '', 'mumar abboud', '2016', 'NCTB', 0),
(4, 2016, 2, 'AMAR BANGLA BOI', '', 'Inayah Asfour', '2016', 'NCTB', 0),
(5, 2016, 2, 'ENGLISH FOR TODAY', '', 'mumar abboud', '2016', 'NCTB', 0),
(6, 2016, 2, 'PRIMARY MATHEMATICS', '', 'Fredrick V. Keyes', '2016', 'NCTB', 0),
(7, 2016, 2, 'PRIMARY MATHEMATICS', '', 'Fredrick V. Keyes', '2016', 'NCTB', 0),
(8, 2016, 3, 'AMAR BANGLA BOI', '', 'Willie B. Quint', '2016', 'NCTB', 0),
(9, 2016, 3, 'ENGLISH FOR TODAY', '', 'Fredrick V. Keyes', '2016', 'NCTB', 0),
(10, 2016, 3, 'PRIMARY MATHEMATICS', '', 'mumar abboud', '2016', 'NCTB', 0),
(11, 2016, 3, 'BANGLADESH AND GLOBAL STUDIES', '', 'Inayah Asfour', '2016', 'NCTB', 0),
(12, 2016, 3, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(13, 2016, 3, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(14, 2016, 3, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(15, 2016, 3, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(16, 2016, 3, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(17, 2016, 4, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(18, 2016, 4, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(19, 2016, 4, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(20, 2016, 4, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(21, 2016, 4, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(22, 2016, 4, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(23, 2016, 4, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(24, 2016, 4, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(25, 2016, 4, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(26, 2016, 5, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(27, 2016, 5, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(28, 2016, 5, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(29, 2016, 5, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(30, 2016, 5, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(31, 2016, 5, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(32, 2016, 5, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(33, 2016, 5, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(34, 2016, 5, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(35, 2016, 6, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(36, 2016, 6, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(37, 2016, 6, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(38, 2016, 6, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(39, 2016, 6, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(40, 2016, 6, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(41, 2016, 6, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(42, 2016, 6, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(43, 2016, 6, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(44, 2016, 7, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(45, 2016, 7, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(46, 2016, 7, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(47, 2016, 7, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(48, 2016, 7, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(49, 2016, 7, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(50, 2016, 7, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(51, 2016, 7, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(52, 2016, 7, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(53, 2016, 8, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(54, 2016, 8, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(55, 2016, 8, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(56, 2016, 8, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(57, 2016, 8, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(58, 2016, 8, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(59, 2016, 8, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(60, 2016, 8, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(61, 2016, 8, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(62, 2016, 9, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(63, 2016, 9, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(64, 2016, 9, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(65, 2016, 9, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(66, 2016, 9, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(67, 2016, 9, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(68, 2016, 9, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(69, 2016, 9, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(70, 2016, 9, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(71, 2016, 10, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(72, 2016, 10, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(73, 2016, 10, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(74, 2016, 10, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(75, 2016, 10, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(76, 2016, 10, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(77, 2016, 10, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(78, 2016, 10, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(79, 2016, 10, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(80, 2016, 9, 'AGRICULTURE STUDIES', '', '', '2016', 'NCTB', 1),
(81, 2016, 10, 'AGRICULTURE STUDIES', '', '', '2016', 'NCTB', 1),
(82, 2016, 10, 'ARTS & CRAFTS', '', '', '2016', 'NCTB', 1),
(83, 2016, 10, 'ARTS & CRAFTS', '', '', '2016', 'NCTB', 1),
(84, 2016, 9, 'MUSIC', '', '', '2016', 'NCTB', 1),
(85, 2016, 10, 'MUSIC', '', '', '2016', 'NCTB', 1),
(86, 2017, 11, 'Persamaan Linier', '', 'Mokhamad Ariadi', 'Orentasi', 'Setia Malik', 0),
(87, 2017, 11, 'Kuadrat', '', 'Adhitya W. Yunanza', 'Pengembangan', 'Blibis Ketut', 1),
(88, 2017, 12, 'Statistika', '', 'Mokhamad Ariadi', '2017', 'Rin', 0);

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
(1, '', 'UP7', 'Goila Model High School', '12/12/1yyy', 'Mr. Jahirul Huque', 'Goila, Aghoiljhara, Barisal', '0123456789', 'info@goila.com', 'fa fa-money', 'Indonesia', '', '', '', '', '', 'abc123');

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
(1, '1483916400', '5', '201713001', 'Class 1', 'Matematika', '', 1, 'P', 'Amirul Arbi', 1, 1, 1, 1, 100, 100);

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

--
-- Dumping data for table `exam_attendanc`
--

INSERT INTO `exam_attendanc` (`id`, `date`, `user_id`, `student_id`, `student_title`, `class_id`, `roll_no`, `section`, `exam_title`, `exam_subject`, `attendance`) VALUES
(1, '09/01/2017', 5, '201713001', 'Amirul Arbi', 11, '1', 'Matematika', 'Ujian Class 1', 'Kuadrat', 'P'),
(2, '11/01/2017', 4, '201701007', 'Noviagati  Pramudia', 11, '7', 'Matematika', 'UAS', 'Persamaan Linier', 'P'),
(3, '11/01/2017', 7, '201713002', 'Juniar Sandra', 11, '2', 'Matematika', 'UAS', 'Persamaan Linier', 'P'),
(4, '11/01/2017', 11, '201713003', 'Khoriri Matoh', 11, '3', 'Matematika', 'UAS', 'Persamaan Linier', 'P'),
(5, '11/01/2017', 12, '201713004', 'Silvia Kurnia', 11, '4', 'Matematika', 'UAS', 'Persamaan Linier', 'P');

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

--
-- Dumping data for table `exam_grade`
--

INSERT INTO `exam_grade` (`id`, `grade_name`, `point`, `number_form`, `number_to`) VALUES
(1, 'A', '5', '80', '100');

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

--
-- Dumping data for table `exam_routine`
--

INSERT INTO `exam_routine` (`id`, `exam_id`, `exam_date`, `exam_subject`, `subject_code`, `rome_number`, `start_time`, `end_time`, `exam_shift`, `status`) VALUES
(2, 7, '11/01/2017', 'Persamaan Linier', 'PL01', '12', '10:30', '11:00', 'Morning shift', 'Result');

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

--
-- Dumping data for table `final_result`
--

INSERT INTO `final_result` (`id`, `class_id`, `section`, `exam_id`, `exam_title`, `student_id`, `student_name`, `total_mark`, `final_grade`, `maride_list`, `status`, `point`, `fail_amount`) VALUES
(1, 11, '', 6, 'Ujian Class 1', '201713001', 'Amirul Arbi', '90', 'A+', '1', 'Pass', '5', 0),
(2, 11, '', 7, 'UAS', '201701007', 'Noviagati  Pramudia', '90', 'A+', '1', 'Pass', '5', 0),
(3, 11, '', 7, 'UAS', '201713002', 'Juniar Sandra', '89', 'A+', '3', 'Pass', '5', 0),
(4, 11, '', 7, 'UAS', '201713003', 'Khoriri Matoh', '90', 'A+', '2', 'Pass', '5', 0),
(5, 11, '', 7, 'UAS', '201713004', 'Silvia Kurnia', '88', 'A+', '4', 'Pass', '5', 0);

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
(5, 'parents', 'This user is parent''s groups member.'),
(6, 'accountant', 'This user is accountent''s groups member.'),
(7, 'library_man', 'The library man can manage library and library''s account information'),
(8, '4th_class_employ', ''),
(9, 'driver', '');

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

-- --------------------------------------------------------

--
-- Table structure for table `parents_info`
--

CREATE TABLE `parents_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parents_name` varchar(100) NOT NULL,
  `relation` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents_info`
--

INSERT INTO `parents_info` (`id`, `user_id`, `class_id`, `student_id`, `parents_name`, `relation`, `email`, `phone`) VALUES
(1, 6, 12, 201713001, 'Wali  Aku', 'Ponakan', 'wali@gmail.com', '+62085895986526');

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

--
-- Dumping data for table `result_action`
--

INSERT INTO `result_action` (`id`, `class_id`, `exam_id`, `exam_title`, `status`, `publish`) VALUES
(1, 11, 6, 'Ujian Class 1', 'Complete', 'Publish'),
(2, 11, 7, 'UAS', 'Complete', 'Publish');

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

--
-- Dumping data for table `result_shit`
--

INSERT INTO `result_shit` (`id`, `exam_title`, `exam_id`, `class_id`, `section`, `student_name`, `student_id`, `exam_subject`, `mark`, `point`, `grade`, `roll_number`, `result`) VALUES
(1, 'Ujian Class 1', 6, 11, '', 'Amirul Arbi', '201713001', 'Kuadrat', '90', '5', 'A', 1, 'Pass'),
(2, 'UAS', 7, 11, '', 'Noviagati  Pramudia', '201701007', 'Persamaan Linier', '90', '5', 'A', 7, 'Pass'),
(3, 'UAS', 7, 11, '', 'Juniar Sandra', '201713002', 'Persamaan Linier', '89', '5', 'A', 2, 'Pass'),
(4, 'UAS', 7, 11, '', 'Khoriri Matoh', '201713003', 'Persamaan Linier', '90', '5', 'A', 3, 'Pass'),
(5, 'UAS', 7, 11, '', 'Silvia Kurnia', '201713004', 'Persamaan Linier', '88', '5', 'A', 4, 'Pass');

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

--
-- Dumping data for table `result_submition_info`
--

INSERT INTO `result_submition_info` (`id`, `class_id`, `section`, `exam_title`, `date`, `subject`, `submited`, `teacher`, `exam_id`) VALUES
(1, 11, '', 'Ujian Class 1', '09/01/2017', 'Kuadrat', '1', 'Headmaster', 6),
(2, 11, '', 'UAS', '11/01/2017', 'Persamaan Linier', '1', 'Head Office', 7);

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
  `setting_manage_user` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_based_access`
--

INSERT INTO `role_based_access` (`id`, `user_id`, `group_id`, `das_top_info`, `das_grab_chart`, `das_class_info`, `das_message`, `das_employ_attend`, `das_notice`, `das_calender`, `admission`, `all_student_info`, `stud_edit_delete`, `stu_own_info`, `teacher_info`, `add_teacher`, `teacher_details`, `teacher_edit_delete`, `all_parents_info`, `own_parents_info`, `make_parents_id`, `parents_edit_dlete`, `add_employee`, `employee_list`, `employ_attendance`, `empl_atte_view`, `add_new_class`, `all_class_info`, `class_details`, `class_delete`, `class_promotion`, `add_class_routine`, `own_class_routine`, `all_class_routine`, `rutin_edit_delete`, `attendance_preview`, `take_studence_atten`, `edit_student_atten`, `add_subject`, `all_subject`, `assin_optio_sub`, `make_suggestion`, `all_suggestion`, `own_suggestion`, `add_exam_gread`, `exam_gread`, `gread_edit_dele`, `add_exam_routin`, `all_exam_routine`, `own_exam_routine`, `exam_attend_preview`, `approve_result`, `view_result`, `all_mark_sheet`, `own_mark_sheet`, `take_exam_attend`, `change_exam_attendance`, `make_result`, `add_category`, `all_category`, `edit_delete_category`, `add_books`, `all_books`, `edit_delete_books`, `add_library_mem`, `memb_list`, `issu_return`, `add_dormitories`, `add_set_dormi`, `set_member_bed`, `dormi_report`, `add_transport`, `all_transport`, `transport_edit_dele`, `add_account_title`, `edit_dele_acco`, `trensection`, `fee_collection`, `all_slips`, `own_slip`, `slip_edit_delete`, `pay_salary`, `creat_notice`, `send_message`, `vendor`, `delet_vendor`, `add_inv_cat`, `inve_item`, `delete_inve_ite`, `delete_inv_cat`, `inve_issu`, `delete_inven_issu`, `check_leav_appli`, `setting_accounts`, `other_setting`, `front_setings`, `set_optional`, `setting_manage_user`) VALUES
(1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 4, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, 4, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 5, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 6, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 7, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 9, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 11, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 12, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
  `blood` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `year`, `user_id`, `student_id`, `roll_number`, `class_id`, `student_nam`, `farther_name`, `mother_name`, `birth_date`, `sex`, `present_address`, `permanent_address`, `phone`, `father_occupation`, `father_incom_range`, `mother_occupation`, `student_photo`, `last_class_certificate`, `t_c`, `national_birth_certificate`, `academic_transcription`, `testimonial`, `documents_info`, `starting_year`, `transfer_year`, `transfer_to`, `transfer_reason`, `tc_appli_approved_by`, `passing_year`, `compleat_level`, `registration_number`, `certificates_status`, `admission_year`, `admission_class`, `admission_roll`, `admission_form_no`, `admission_test_result`, `tc_form`, `blood`) VALUES
(1, 2018, 4, '201701007', 1, 13, 'Noviagati  Pramudia', 'Joko', 'Ibu', '06/11/1992', 'Female', ' Pacitan', 'Surabaya', '+6289679730967', 'Teachers', '4000000', 'Teachers', 'e9b934f653bbe7fbc4d251c6896c00d0.jpg', '', 'submited', '', '', '', 'Iso 001', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'A-'),
(2, 2017, 5, '201713001', 1, 12, 'Amirul Arbi', 'Aam', 'iim', '27/01/1991', 'Male', ' Pacitan', 'Surabaya', '+6285895986527', 'Teachers', '2000000', 'Housewife', '5c2b729d56ebaf2ed7ec87758bcd2e7b.jpg', 'submited', '', '', '', '', 'NO S-156', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'A+'),
(3, 2017, 7, '201713002', 3, 12, 'Juniar Sandra', 'Junjun', 'mom', '23/05/1993', 'Male', 'Sidoarjo', 'Sidoarjo', '+62085895986529', 'Employer', '4000000', 'Housewife', '875d151f16b91d969c33128bbdf47dcf.jpg', 'submited', '', '', '', '', 'NO S-15', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'A+'),
(4, 2017, 11, '201713003', 2, 12, 'Khoriri Matoh', 'Khoo', 'Mhoo', '09/12/1993', 'Male', 'Bojonegoro', 'Surabaya', '+6285895986529', 'Employer', '4000000', 'Housewife', 'd4a7e93b813e624fc2bb19e74d747c7c.jpg', 'submited', '', '', '', '', 'No S21213', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O-'),
(5, 2017, 12, '201713004', 4, 12, 'Silvia Kurnia', 'Soho', 'Mojo', '09/07/1993', 'Female', ' Mojokerto', 'Surabaya', '+6285895986529', 'Business', '4000000', 'Housewife', 'e8b34939ba022412a902f7a4b682896a.jpg', 'submited', '', '', '', '', 'No 1321321', 2017, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'O-');

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
(1, '2', 'Mokhamad Ariadi', 'Sopo', 'Momo', '27/01/1993', 'Male', 'Jombang', 'Surabaya', '+6285895986529', 'IPA', 'Teacher', 'Full time', 'Spd,Universitas Negeri Surabaya,3.40,2015', '', '', '', '', 'bb4847768092d9ea7aa1a9409f059174.jpg', 'submited', 'submited', '', 'No Ijazah 22.00072.15', '1'),
(2, '3', 'Adhitya W.  Yunanza', '-', '-', '20/03/1994', 'Male', 'Surabaya', 'Surabaya', '+6285707146567', 'IPA', 'Teacher', 'Full time', 'Spd,Universitas Negeri Surabaya,3.40,2016', '', '', '', '', '4fc4367281baeb3fc2a2b2ea6f02c906.jpg', 'submited', '', '', 'No Ijazah 22.00073.15', '2');

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
(1, 2017, 1484002800, 1, 'Headmaster', 'Present', '01:22 pm'),
(2, 2017, 1484002800, 2, 'Mokhamad Ariadi', 'Present', '01:19 pm'),
(3, 2017, 1484002800, 3, 'Adhitya W.  Yunanza', 'Present', '01:22 pm'),
(4, 2017, 1484002800, 8, 'Satria  Hernanda', 'Present', '01:21 pm');

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

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `user_id`, `group_id`, `full_name`, `farther_name`, `mother_name`, `birth_date`, `sex`, `present_address`, `permanent_address`, `working_hour`, `educational_qualification_1`, `educational_qualification_2`, `educational_qualification_3`, `educational_qualification_4`, `educational_qualification_5`, `users_photo`, `cv`, `educational_certificat`, `exprieance_certificatte`, `files_info`, `phone`) VALUES
(1, 8, 7, 'Satria  Hernanda', 'jojo', 'bubu', '03/03/1991', 'Male', 'Surabaya', 'Surabaya', 'Full time', 'D3,Universitas Negeri Surabaya,3.40,2016', '', '', '', '', '9f10cf333624408758536b895928f724.jpg', 'submited', '', '', 'No 232323', '+62085895986529'),
(2, 9, 6, 'Punggawa Cipto', 'Cipo', 'bubu', '04/04/1991', 'Male', 'Sidoarjo', 'Sidoarjo', 'Full time', 'D3,Universitas Negeri Surabaya,3.40,2016', '', '', '', '', '1ae6a93163275d53c10ba3132494d0cf.jpg', 'submited', '', '', 'No 12123', '+6285895986529');

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
(1, '127.0.0.1', 'Headmaster', '$2y$08$qBQ/MzJzXyil0yuVM.s1XewJerIMCntwxez/Jfs3x/xwxFnkKWo2y', NULL, 'admin@admin.com', NULL, 'HBj4C30st5pOHbjpHojzGu4667ad49e75655b131', 1420113369, 'IcD7gVAwU5DDX4jTuWOVXe', 1268889823, 1484277612, 1, 'Kermit J.', 'Jackson', '123456789', 'admin.png', 'Employee', 'Available', 1447196400, 1449874800, 0),
(2, '::1', 'Mokhamad Ariadi', '$2y$08$xSp/BEzMjbsTxBBLatsV/eCpar1FB66ZWyeHnVNUjfg3q20nUbORS', NULL, 'mokhamad27@gmail.com', NULL, NULL, NULL, NULL, 1483760492, 1483944250, 1, 'Mokhamad', 'Ariadi', '+6285895986529', 'bb4847768092d9ea7aa1a9409f059174.jpg', 'Employee', 'Available', 0, 0, 0),
(3, '::1', 'Adhitya W.  Yunanza', '$2y$08$.fyUctfOXweRHxJpmrqWTOwt4x1wBq4r1e0vMcIAmcbz1r198OYgS', NULL, 'adhityawayan@gmail.com', NULL, NULL, NULL, NULL, 1483760888, 1483760888, 1, 'Adhitya W. ', 'Yunanza', '+6285707146567', '4fc4367281baeb3fc2a2b2ea6f02c906.jpg', 'Employee', 'Available', 0, 0, 0),
(4, '::1', 'Noviagati  Pramudia', '$2y$08$G.Cf6JM6TzuqRjMPsHDA6.gyouLsVv2tOpmfO1qP1aKbTBx6HHvEG', NULL, 'noviagatipramudia@gmail.com', NULL, NULL, NULL, NULL, 1483761669, 1483943672, 1, 'Noviagati ', 'Pramudia', '+6289679730967', 'e9b934f653bbe7fbc4d251c6896c00d0.jpg', '', '', 0, 0, 0),
(6, '::1', 'Wali  Aku', '$2y$08$eEos7BrOFYA/DbHhIgh2COpeLDgjNoOpwdjo2yhi2GDoRHoao1Yd6', NULL, 'wali@gmail.com', NULL, NULL, NULL, NULL, 1483954071, 1483954750, 1, 'Wali ', 'Aku', '+62085895986526', 'f67b7771927eaebf8509f0a6cfa2fae5.jpg', '', '', 0, 0, 0),
(7, '::1', 'Juniar Sandra', '$2y$08$bzD6z7xX.ZzmeAfOjTxxPeJbWJMxo7zM.vVltsCV1IH8CdDzce1cG', NULL, 'juniarsandra@gmail.com', NULL, NULL, NULL, NULL, 1483955065, 1483955065, 1, 'Juniar', 'Sandra', '+62085895986529', '875d151f16b91d969c33128bbdf47dcf.jpg', '', '', 0, 0, 0),
(8, '::1', 'Satria  Hernanda', '$2y$08$XIOGluVIvxSs3LBXXJ0pf.7UTPdF6rHaXVjz3vm9C/.aFt1C0wSWq', NULL, 'satria@gmail.com', NULL, NULL, NULL, NULL, 1484031733, 1484031733, 1, 'Satria ', 'Hernanda', '+62085895986529', '9f10cf333624408758536b895928f724.jpg', 'Employee', 'Available', 0, 0, 0),
(9, '::1', 'Punggawa Cipto', '$2y$08$g4INzbOF6FZmVPovBByxVOd2EsUbcVmQwCEYxILQnOGVfethQ19ou', NULL, 'punggawa@gmail.com', NULL, NULL, NULL, NULL, 1484033771, 1484033771, 1, 'Punggawa', 'Cipto', '+6285895986529', '1ae6a93163275d53c10ba3132494d0cf.jpg', 'Employee', 'Available', 0, 0, 0),
(10, '::1', 'Head Office', '$2y$08$qBQ/MzJzXyil0yuVM.s1XewJerIMCntwxez/Jfs3x/xwxFnkKWo2y', NULL, 'ho@gmail.com', NULL, NULL, NULL, NULL, 1484033771, 1484550145, 1, 'Head', 'Office', '123456789', 'admin.png', 'Employee', 'Available', 0, 0, 0),
(11, '::1', 'Khoriri Matoh', '$2y$08$gHCD7VKD0S6Jk12I3SeOTuMFx3vFqctKCa9yj4h2wF0kJv/Y7Ul7G', NULL, 'khoriri@gmail.com', NULL, NULL, NULL, NULL, 1484102752, 1484106335, 1, 'Khoriri', 'Matoh', '+6285895986529', 'd4a7e93b813e624fc2bb19e74d747c7c.jpg', '', '', 0, 0, 0),
(12, '::1', 'Silvia Kurnia', '$2y$08$Ow.gGka1HvNprv7n3h/D5Or.RL0ZG7jBK1Cx5nQa7t/CXXAW.EbNC', NULL, 'silvi@gmail.com', NULL, NULL, NULL, NULL, 1484102972, 1484102972, 1, 'Silvia', 'Kurnia', '+6285895986529', 'e8b34939ba022412a902f7a4b682896a.jpg', '', '', 0, 0, 0);

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
(1, 1, 2),
(55, 2, 4),
(56, 3, 4),
(57, 4, 3),
(59, 6, 5),
(60, 7, 3),
(61, 8, 7),
(62, 9, 6),
(65, 10, 1),
(63, 11, 3),
(64, 12, 3);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `books_category`
--
ALTER TABLE `books_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `calender_events`
--
ALTER TABLE `calender_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `class_students`
--
ALTER TABLE `class_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `config_week_day`
--
ALTER TABLE `config_week_day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `exam_grade`
--
ALTER TABLE `exam_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exam_routine`
--
ALTER TABLE `exam_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fee_item`
--
ALTER TABLE `fee_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `final_result`
--
ALTER TABLE `final_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parents_info`
--
ALTER TABLE `parents_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `result_action`
--
ALTER TABLE `result_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `result_shit`
--
ALTER TABLE `result_shit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `result_submition_info`
--
ALTER TABLE `result_submition_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role_based_access`
--
ALTER TABLE `role_based_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
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
