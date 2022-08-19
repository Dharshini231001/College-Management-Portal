-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 08:07 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imperial_college`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_result`
--

CREATE TABLE `class_result` (
  `class_result_id` int(11) NOT NULL,
  `roll_no` varchar(30) NOT NULL,
  `course_code` varchar(30) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `total_marks` varchar(11) NOT NULL,
  `obtain_marks` varchar(11) NOT NULL,
  `result_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_result`
--

INSERT INTO `class_result` (`class_result_id`, `roll_no`, `course_code`, `subject_code`, `semester`, `total_marks`, `obtain_marks`, `result_date`) VALUES
(1, '21BA01', 'B.Arch', 'DM', '2', '100', '98', '10-05-22'),
(2, '21BA02', 'B.Arch', 'DM', '2', '100', '93', '10-05-22'),
(3, '21BA03', 'B.Arch', 'DM', '2', '100', '92', '10-05-22'),
(4, '21BA04', 'B.Arch', 'DM', '2', '100', '98', '10-05-22'),
(5, '21BA05', 'B.Arch', 'DM', '2', '100', '96', '10-05-22'),
(6, '21BA06', 'B.Arch', 'DM', '2', '100', '97', '10-05-22'),
(7, '21BA07', 'B.Arch', 'DM', '2', '100', '94', '10-05-22'),
(8, '21BA08', 'B.Arch', 'DM', '2', '100', '91', '10-05-22'),
(9, '21BA09', 'B.Arch', 'DM', '2', '100', '90', '10-05-22'),
(10,'21BA10', 'B.Arch', 'DM', '2', '100', '98', '10-05-22'),
(11,'21MA01', 'M.Arch', 'DM', '2', '100', '98', '10-05-22'),
(12, '21MA02', 'M.Arch', 'DM', '2', '100', '98', '10-05-22'),
(13, '21MA03', 'M.Arch', 'DM', '2', '100', '98', '10-05-22'),
(14, '21MA04', 'M.Arch', 'DM', '2', '100', '98', '10-05-22'),
(15, '21MA05', 'M.Arch', 'DM', '2', '100', '98', '10-05-22'),
(16, '21MA06', 'M.Arch', 'DM', '2', '100', '64', '10-05-22'),
(17, '21MA07', 'M.Arch', 'DM', '2', '100', '98', '10-05-22'),
(18, '21MA08', 'M.Arch', 'DM', '2', '100', '98', '10-05-22'),
(19, '21MA09', 'M.Arch', 'DM', '2', '100', '76', '10-05-22'),
(20, '21MA10', 'M.Arch', 'DM', '2', '100', '97', '10-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `semester_or_year` varchar(10) NOT NULL,
  `no_of_year` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_name`, `semester_or_year`, `no_of_year`) VALUES
('B.Arch', 'Bachelor of Architecture', 'Semester', 5),
('M.Arch', 'Masters of Architecture', 'Semester', 2);
-- --------------------------------------------------------

--
-- Table structure for table `course_subjects`
--

CREATE TABLE `course_subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `credit_hours` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_subjects`

INSERT INTO `course_subjects` (`subject_code`, `subject_name`, `course_code`, `semester`, `credit_hours`) VALUES
('AAA', 'Art and Architectural Appreciation', 'B.Arch', 1, 3),
('AD', 'Architectural Design', 'B.Arch', 2, 4),
('CA', 'Computer Applications', 'B.Arch', 2, 3),
('CoA', 'Contemporary Architecture', 'M.Arch', 1, 3),
('DM', 'Design Methodology', 'B.Arch', 1, 4),
('HA', 'History of Architecture ', 'B.Arch', 2, 3),
('PM', 'Project Management', 'M.Arch', 2, 4),
('TS', 'Theory of Structures', 'M.Arch', 2, 4),
('VABD', 'Visual Arts and Basic Design', 'B.Arch', 1, 4),
('WD', 'Working Drawings', 'B.Arch', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `account` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `user_id`, `Password`, `Role`, `account`) VALUES
(1, 'admin@gmail.com', 'admin123*', 'Admin', ''),
(2, 'staff1@gmail.com', 'teacher123*', 'Teacher', '');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `name`, `course_code`) VALUES
('B.Fashion-S19-1', 'husnain', 'B.Fashion'),
('B.Fashion-S19-2', 'razarai663@gmail.com', 'B.Fashion'),
('MCS-S19-1', 'Muhammad Husnain Raza', 'MCS'),
('MCS-S19-2', 'razarai663@gmail.com', 'MCS'),
('MIT-S19-1', 'Muhammad Husnain Raza', 'MIT');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `session` varchar(30) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `session`, `created_date`) VALUES
(1, 'S19', '2022-05-10 20:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `attendance_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`attendance_id`, `course_code`, `subject_code`, `semester`, `student_id`, `attendance`, `attendance_date`) VALUES
(1, 'B.Arch', 'DM', 2, '21BA01', 1, '10-05-22'),
(2, 'B.Arch', 'DM', 2, '21BA02', 1, '10-05-22'),
(3, 'B.Arch', 'DM', 2, '21BA03', 1, '10-05-22'),
(4, 'B.Arch', 'DM', 2, '21BA04', 0, '10-05-22'),
(5, 'B.Arch', 'DM', 2, '21BA05', 1, '10-05-22'),
(6, 'B.Arch', 'DM', 2, '21BA06', 1, '10-05-22'),
(7, 'B.Arch', 'DM', 2, '21BA07', 0, '10-05-22'),
(8, 'B.Arch', 'DM', 2, '21BA08', 1, '10-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `student_course_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`student_course_id`, `course_code`, `semester`, `roll_no`, `subject_code`, `session`, `assign_date`) VALUES
(1, 'B.Arch', 2, '21BA01', 'AAA', 'S19', '15-03-20'),
(2, 'B.Arch', 2, '21BA01', 'DM', 'S19', '15-03-20'),
(3, 'B.Arch', 2, '21BA01', 'VABD', 'S19', '15-03-20'),
(4, 'B.Arch', 2, '21BA01', 'CA', 'S19', '15-03-20'),
(5, 'B.Arch', 2, '21BA01', 'HA', 'S19', '15-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `fee_voucher` int(11) NOT NULL,
  `roll_no` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_fee`
--

INSERT INTO `student_fee` (`fee_voucher`, `roll_no`, `amount`, `posting_date`, `status`) VALUES
(1, '21BA01', 23455, '2020-03-29 11:24:36', 'Paid'),
(2, '21BA02', 20093, '2020-03-30 12:35:39', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `roll_no` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `prospectus_issued` varchar(10) NOT NULL,
  `paid_fees` varchar(10) NOT NULL,
  `hsc_percentage` varchar(20) NOT NULL,
  `nata_mark` varchar(20) NOT NULL,
  `application_status` varchar(20) NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `other_phone` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(150) NOT NULL,
  `current_address` varchar(150) NOT NULL,
  `place_of_birth` varchar(150) NOT NULL,
  `sslc_start_date` varchar(10) NOT NULL,
  `sslc_complition_date` varchar(10) NOT NULL,
  `sslc_certificate` varchar(100) NOT NULL,
  `hsc_start_date` varchar(10) NOT NULL,
  `hsc_complition_date` varchar(10) NOT NULL,
  `hsc_certificate` varchar(10) NOT NULL,
  `admission_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `attendance_id` int(11) NOT NULL,
  `teacher_id` varchar(30) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`attendance_id`, `teacher_id`, `attendance`, `attendance_date`) VALUES
(1, '3', 1, '09-03-20'),
(2, '3', 1, '10-05-22'),
(3, '3', 1, '11-04-20'),
(4, '3', 1, '30-03-20'),
(5, '2', 0, '30-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_courses`
--

CREATE TABLE `teacher_courses` (
  `teacher_courses_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `teacher_id` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL,
  `total_classes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_courses`
--

INSERT INTO `teacher_courses` (`teacher_courses_id`, `course_code`, `semester`, `teacher_id`, `subject_code`, `assign_date`, `total_classes`) VALUES
(1, 'B.Arch', 2, '3', 'DM', '01-05-22', 30),
(2, 'B.Arch', 2, '1', 'HA', '01-05-22', 30),
(3, 'B.Arch', 2, '3', 'AAA', '01-05-22', 30),
(4, 'B.Arch', 2, '1', 'CA', '01-05-22', 30),
(5, 'B.Arch', 2, '3', 'VABD', '01-05-22', 30);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `profile_image` blob NOT NULL,
  `teacher_status` varchar(10) NOT NULL,
  `marital_status` varchar(10) NOT NULL,
  `aadhar` varchar(15) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `other_phone` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(100) NOT NULL,
  `current_address` varchar(100) NOT NULL,
  `place_of_birth` varchar(50) NOT NULL,
  `matric_complition_date` varchar(10) NOT NULL,
  `matric_awarded_date` varchar(10) NOT NULL,
  `matric_certificate` varchar(100) NOT NULL,
  `ba_complition_date` varchar(10) NOT NULL,
  `ba_awarded_date` varchar(10) NOT NULL,
  `ba_certificate` varchar(100) NOT NULL,
  `ma_complition_date` varchar(10) NOT NULL,
  `ma_awarded_date` varchar(100) NOT NULL,
  `ma_certificate` varchar(101) NOT NULL,
  `last_qualification` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `hire_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`teacher_id`, `first_name`, `middle_name`, `last_name`, `email`, `phone_no`, `profile_image`, `teacher_status`, `marital_status`, `aadhar`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `matric_complition_date`, `matric_awarded_date`, `matric_certificate`, `ba_complition_date`, `ba_awarded_date`, `ba_certificate`, `ma_complition_date`, `ma_awarded_date`, `ma_certificate`, `last_qualification`, `state`, `hire_date`) VALUES
(2, 'Chithra', '.', 'K', 'chithra@gmail.com', '9807367624', 0x696d616765732e706e67, 'Permanent', 'Un Married', '8670 3456 7890', '1987-01-17', 0, 'Female', 'abc street', 'abc street', 'Erode', '', '', '', '', '', '', '', '', '', '', '', '18-05-22');
-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_allowances`
--

CREATE TABLE `teacher_salary_allowances` (
  `teacher_id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `medical_allowance` int(11) NOT NULL,
  `hr_allowance` int(11) NOT NULL,
  `scale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary_allowances`
--

INSERT INTO `teacher_salary_allowances` (`teacher_id`, `basic_salary`, `medical_allowance`, `hr_allowance`, `scale`) VALUES
(1, 40000, 5, 10, 15),
(2, 55000, 7, 15, 18),
(3, 43000, 5, 8, 14);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_report`
--

CREATE TABLE `teacher_salary_report` (
  `salary_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `paid_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary_report`
--

INSERT INTO `teacher_salary_report` (`salary_id`, `teacher_id`, `total_amount`, `status`, `paid_date`) VALUES
(1, 1, 46000, 'Paid', '2020-03-27 11:28:57'),
(2, 2, 67100, 'Paid', '2020-03-27 11:50:13'),
(3, 3, 48590, 'Paid', '2020-03-27 11:55:58'),
(4, 1, 46000, 'Paid', '2020-03-27 12:33:39'),
(5, 3, 48590, 'Paid', '2020-03-28 08:26:59'),
(6, 2, 67100, 'Paid', '2020-03-28 08:30:46'),
(7, 2, 67100, 'Paid', '2020-03-28 08:32:06'),
(8, 2, 67100, 'Paid', '2020-03-28 08:32:46'),
(9, 2, 67100, 'Paid', '2020-03-28 08:33:59'),
(10, 2, 67100, 'Paid', '2020-03-28 08:35:54'),
(11, 2, 67100, 'Paid', '2020-03-28 08:38:17'),
(12, 2, 67100, 'Paid', '2020-03-28 08:39:22'),
(13, 2, 67100, 'Paid', '2020-03-28 08:40:44'),
(14, 2, 67100, 'Paid', '2020-03-28 08:41:26'),
(15, 2, 67100, 'Paid', '2020-03-28 08:42:25'),
(16, 2, 67100, 'Paid', '2020-03-28 08:43:32'),
(17, 2, 67100, 'Paid', '2020-03-28 08:44:03'),
(18, 2, 67100, 'Paid', '2020-03-28 08:44:39'),
(19, 2, 67100, 'Paid', '2020-03-28 08:45:09'),
(20, 2, 67100, 'Paid', '2020-03-28 08:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `timing_from` varchar(10) NOT NULL,
  `timing_to` varchar(10) NOT NULL,
  `day` varchar(20) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `course_code`, `semester`, `timing_from`, `timing_to`, `day`, `subject_code`, `room_no`) VALUES
(1, 'B.Arch', 2, '09:00', '13:00', '1', 'AD', 13),
(2, 'B.Arch', 2, '09:00', '13:00', '2', 'VABD', 13),
(3, 'B.Arch', 2, '09:00', '13:00', '3', 'CA', 7),
(4, 'B.Arch', 2, '09:00', '13:00', '4', 'HA', 13),
(5, 'B.Arch', 2, '09:00', '13:00', '5', 'DM', 13),
(6, 'B.Arch', 2, '09:00', '13:00', '6', 'WD', 12),
(7, 'M.Arch', 2, '09:00', '13:00', '1', 'PM', 5),
(8, 'M.Arch', 2, '09:00', '13:00', '4', 'TS', 7);

-- --------------------------------------------------------

--
-- Table structure for table `weekdays`
--

CREATE TABLE `weekdays` (
  `day_id` int(11) NOT NULL,
  `day_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekdays`
--

INSERT INTO `weekdays` (`day_id`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_result`
--
ALTER TABLE `class_result`
  ADD PRIMARY KEY (`class_result_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course_subjects`
--
ALTER TABLE `course_subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`student_course_id`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`fee_voucher`),
  ADD KEY `roll_no` (`roll_no`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  ADD PRIMARY KEY (`teacher_courses_id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_allowances`
--
ALTER TABLE `teacher_salary_allowances`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weekdays`
--
ALTER TABLE `weekdays`
  ADD PRIMARY KEY (`day_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_result`
--
ALTER TABLE `class_result`
  MODIFY `class_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `student_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_fee`
--
ALTER TABLE `student_fee`
  MODIFY `fee_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  MODIFY `teacher_courses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `weekdays`
--
ALTER TABLE `weekdays`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD CONSTRAINT `teacher_salary_report_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_salary_allowances` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
