-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 12:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_service_credits`
--

CREATE TABLE `add_service_credits` (
  `add_service_credits_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `days` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_service_credits`
--

INSERT INTO `add_service_credits` (`add_service_credits_id`, `employee_id`, `days`, `date`) VALUES
(3, 33, '15', '02 05, 2014 '),
(18, 64, '100', '05 30, 2023 ');

-- --------------------------------------------------------

--
-- Table structure for table `administrative_information`
--

CREATE TABLE `administrative_information` (
  `administrative_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `affinity_national` varchar(100) NOT NULL,
  `affinity_local` varchar(100) NOT NULL,
  `charges` varchar(100) NOT NULL,
  `offenses` varchar(100) NOT NULL,
  `criminal_record` varchar(100) NOT NULL,
  `service_records` varchar(100) NOT NULL,
  `candidacy` varchar(100) NOT NULL,
  `indigenous_group` varchar(100) NOT NULL,
  `differently_abled` varchar(100) NOT NULL,
  `solo_parent` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `am_in` varchar(20) NOT NULL,
  `am_out` varchar(20) NOT NULL,
  `pm_in` varchar(20) NOT NULL,
  `pm_out` varchar(20) NOT NULL,
  `late` varchar(30) NOT NULL,
  `undertime` varchar(30) NOT NULL,
  `member_id` varchar(100) NOT NULL,
  `month` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL,
  `year` varchar(15) NOT NULL,
  `row_num` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `child_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`child_id`, `employee_id`, `name`, `birthdate`) VALUES
(1, 32, 'qwwqe', 'q'),
(4, 64, 'r', '2023-05-09'),
(5, 1, 'rudo', '2023-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `civil_service_eligibility`
--

CREATE TABLE `civil_service_eligibility` (
  `civil_service_eligibility_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `career_service` varchar(50) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `date_examination_conferment` varchar(20) NOT NULL,
  `place_examination_conferment` varchar(50) NOT NULL,
  `license_number` varchar(30) NOT NULL,
  `license_date_release` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `civil_service_eligibility`
--

INSERT INTO `civil_service_eligibility` (`civil_service_eligibility_id`, `employee_id`, `career_service`, `rating`, `date_examination_conferment`, `place_examination_conferment`, `license_number`, `license_date_release`) VALUES
(1, 1, '1', 'q', '2023-01-24', 'q', 'q', '2023-01-24'),
(6, 64, 'psc', '10-', '2023-05-01', 'hhh', '77', '2023-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `college_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `degree_course` varchar(50) NOT NULL,
  `year_graduated` varchar(30) NOT NULL,
  `highest_grade_level_units_earned` varchar(50) NOT NULL,
  `dates_from_to` varchar(50) NOT NULL,
  `scholar_academic_honors` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`college_id`, `employee_id`, `school_name`, `degree_course`, `year_graduated`, `highest_grade_level_units_earned`, `dates_from_to`, `scholar_academic_honors`) VALUES
(1, 1, '4', '4', '4', '4', '4', '4'),
(2, 30, '0', '0', '0', '0', '0', '0'),
(3, 30, 'q', 'q', 'q', 'q', '0', 'q'),
(4, 39, 'C', 'C', 'ccccccccc', 'C', '0', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `elementary`
--

CREATE TABLE `elementary` (
  `elementary_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `school_name` varchar(50) NOT NULL,
  `degree_course` varchar(50) NOT NULL,
  `year_graduated` varchar(50) NOT NULL,
  `highest_grade_level_units_earned` varchar(50) NOT NULL,
  `dates_from_to` varchar(50) NOT NULL,
  `scholar_academic_honors` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `elementary`
--

INSERT INTO `elementary` (`elementary_id`, `employee_id`, `school_name`, `degree_course`, `year_graduated`, `highest_grade_level_units_earned`, `dates_from_to`, `scholar_academic_honors`) VALUES
(1, 1, '1', '1', '1', '1', '1', '1'),
(2, 30, 'q', 'q', 'q', 'q', '0', 'q'),
(3, 39, 'x', 'ggg', 'x', 'ggg', 'x', 'x');

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `employee_details_id` int(11) NOT NULL,
  `employee_id` varchar(11) NOT NULL,
  `citizenship` varchar(30) NOT NULL,
  `height` varchar(10) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `bloodtype` varchar(10) NOT NULL,
  `gsis_id_no` varchar(20) NOT NULL,
  `pag_ibig_id_no` varchar(20) NOT NULL,
  `philhealth_no` varchar(20) NOT NULL,
  `sss_no` varchar(20) NOT NULL,
  `residential_address` varchar(50) NOT NULL,
  `ra_zip_code` varchar(10) NOT NULL,
  `ra_telephone_no` varchar(20) NOT NULL,
  `permanent_address` varchar(50) NOT NULL,
  `pa_zip_code` varchar(10) NOT NULL,
  `pa_telephone_no` varchar(20) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `cellphone_no` varchar(20) NOT NULL,
  `agency_employee_no` varchar(20) NOT NULL,
  `tin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`employee_details_id`, `employee_id`, `citizenship`, `height`, `weight`, `bloodtype`, `gsis_id_no`, `pag_ibig_id_no`, `philhealth_no`, `sss_no`, `residential_address`, `ra_zip_code`, `ra_telephone_no`, `permanent_address`, `pa_zip_code`, `pa_telephone_no`, `email_address`, `cellphone_no`, `agency_employee_no`, `tin`) VALUES
(21, '1', 'ESP', '5', '69 kgs', 'a', '55600', '12', '212', '2522', 'talisay cty  ', '0202', '0939302890', 'talisay city', '0202', '09393002890', 'demo@gmail.com', '85200000002', '1', '5552'),
(76, '64', 'zimbabwean', '1.66', '65', 'A', '25', 'ray', 'psmas', '677', '630 churchill ', '00', '0776358507', ' 630 churchill', '00', '0776358507', 'raymond@gmail.com', '0776358507', '062A', 'harare');

-- --------------------------------------------------------

--
-- Table structure for table `graduate_studies`
--

CREATE TABLE `graduate_studies` (
  `graduate_studies_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `degree_course` varchar(50) NOT NULL,
  `year_graduated` varchar(30) NOT NULL,
  `highest_grade_level_units_earned` varchar(50) NOT NULL,
  `dates_from_to` varchar(30) NOT NULL,
  `scholar_academic_honors` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `graduate_studies`
--

INSERT INTO `graduate_studies` (`graduate_studies_id`, `employee_id`, `school_name`, `degree_course`, `year_graduated`, `highest_grade_level_units_earned`, `dates_from_to`, `scholar_academic_honors`) VALUES
(1, 1, '5', '5', '5', '5', '5', '5'),
(4, 39, 'S', 'S', 'S', 'S', '0', 'sdas');

-- --------------------------------------------------------

--
-- Table structure for table `leave_credits`
--

CREATE TABLE `leave_credits` (
  `leave_credits_id` int(11) NOT NULL,
  `leave_type` varchar(20) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `days` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `leave_credits`
--

INSERT INTO `leave_credits` (`leave_credits_id`, `leave_type`, `employee_id`, `date`, `days`) VALUES
(22, 'Sick', 64, '05/05/2023', '45');

-- --------------------------------------------------------

--
-- Table structure for table `other_information`
--

CREATE TABLE `other_information` (
  `other_information_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `special_skills` varchar(100) NOT NULL,
  `non_academic_distinctions_recognition` varchar(100) NOT NULL,
  `membership_association_organization` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `other_information`
--

INSERT INTO `other_information` (`other_information_id`, `employee_id`, `special_skills`, `non_academic_distinctions_recognition`, `membership_association_organization`) VALUES
(1, 1, 'q', 'q', 'q'),
(5, 64, 'swimming', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `parents_id` int(11) NOT NULL,
  `employee_id` varchar(11) NOT NULL,
  `father_firstname` varchar(50) NOT NULL,
  `father_middlename` varchar(50) NOT NULL,
  `father_surname` varchar(50) NOT NULL,
  `mother_firstname` varchar(50) NOT NULL,
  `mother_middlename` varchar(50) NOT NULL,
  `mother_surname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`parents_id`, `employee_id`, `father_firstname`, `father_middlename`, `father_surname`, `mother_firstname`, `mother_middlename`, `mother_surname`) VALUES
(1, '32', 'v', 'v', 'v', 'vv', 'v', 'vv'),
(6, '64', 'a', 'b', 'c', 'd', 'e', 'f'),
(7, '1', 'tatenda', 'tino', 'tatenda', 'paida', 'chipo', 'tatenda');

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `employee_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `name_extension` varchar(10) NOT NULL,
  `place_birth` varchar(30) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `civil_status` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `image` varchar(500) NOT NULL,
  `cis_no` varchar(50) NOT NULL,
  `position` varchar(30) NOT NULL,
  `date_of_birth` varchar(30) NOT NULL,
  `member_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `personal_information`
--

INSERT INTO `personal_information` (`employee_id`, `firstname`, `middlename`, `surname`, `name_extension`, `place_birth`, `sex`, `civil_status`, `department`, `image`, `cis_no`, `position`, `date_of_birth`, `member_id`) VALUES
(1, 'Curthbert', 'jnr', 'Tenda', '', 'ESPN', 'male', 'Single', 'IT', 'images.png', '', 'administrative officer IV', 'October 9, 2020', 'ROD-001'),
(64, 'Raymond ', 'Josh', 'Zenda', '000', 'harare', 'Male', 'Single', 'ict', 'zingsa_image.JPG', '125', 'Developer', '1995-06-07', 'RAY-063');

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `reference_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `telephone_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `secondary`
--

CREATE TABLE `secondary` (
  `secondary_id` int(11) NOT NULL,
  `employee_id` varchar(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `degree_course` varchar(50) NOT NULL,
  `year_graduated` varchar(30) NOT NULL,
  `highest_grade_level_units_earned` varchar(100) NOT NULL,
  `dates_from_to` varchar(50) NOT NULL,
  `scholar_academic_honors` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `secondary`
--

INSERT INTO `secondary` (`secondary_id`, `employee_id`, `school_name`, `degree_course`, `year_graduated`, `highest_grade_level_units_earned`, `dates_from_to`, `scholar_academic_honors`) VALUES
(1, '1', '2', '2', '2', '2', '2', '2'),
(4, '39', 'Q', 'WQSWDASDASDAS', '', '', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `service_credits`
--

CREATE TABLE `service_credits` (
  `service_credits_id` int(11) NOT NULL,
  `Balance` varchar(20) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `days` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `service_credits`
--

INSERT INTO `service_credits` (`service_credits_id`, `Balance`, `employee_id`, `date`, `days`) VALUES
(71, '-45', 64, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spouse`
--

CREATE TABLE `spouse` (
  `spouse_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `spouse_firstname` varchar(50) NOT NULL,
  `spouse_middlename` varchar(50) NOT NULL,
  `spouse_surname` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `employer_bus_name` varchar(50) NOT NULL,
  `business_address` varchar(50) NOT NULL,
  `telephone_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `spouse`
--

INSERT INTO `spouse` (`spouse_id`, `employee_id`, `spouse_firstname`, `spouse_middlename`, `spouse_surname`, `occupation`, `employer_bus_name`, `business_address`, `telephone_no`) VALUES
(1, 30, 'p', 'p', '', 'p', 'p', 'p', 'p'),
(8, 64, 'a', 'b', 'c', 'd', 'e', 'f', '99'),
(9, 1, 'rose', 'roselyne', 'gamu', 'teacher', 'zimta', 'harare', '0667358507');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `tax_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `tax_certificate` varchar(50) NOT NULL,
  `issued_at` varchar(20) NOT NULL,
  `issued_on` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_programs`
--

CREATE TABLE `training_programs` (
  `training_programs_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title_seminar` varchar(100) NOT NULL,
  `date_from` varchar(30) NOT NULL,
  `date_to` varchar(30) NOT NULL,
  `number_hours` varchar(10) NOT NULL,
  `conducted` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `training_programs`
--

INSERT INTO `training_programs` (`training_programs_id`, `employee_id`, `title_seminar`, `date_from`, `date_to`, `number_hours`, `conducted`) VALUES
(1, 1, '1', '1', '1', '1', '1'),
(3, 64, 'nds1', '2023-05-16', '2023-05-31', '5', 'gvt of zim');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `employee_id`, `username`, `password`) VALUES
(1, 1, 'admin1', 'admin1'),
(45, 62, 'tenda', 'tenda'),
(47, 64, 'raymond', 'raymond1');

-- --------------------------------------------------------

--
-- Table structure for table `vocational_trade_course`
--

CREATE TABLE `vocational_trade_course` (
  `vocational_trade_course_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `degree_course` varchar(50) NOT NULL,
  `year_graduated` varchar(30) NOT NULL,
  `highest_grade_level_units_earned` varchar(50) NOT NULL,
  `dates_from_to` varchar(50) NOT NULL,
  `scholar_academic_honors` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vocational_trade_course`
--

INSERT INTO `vocational_trade_course` (`vocational_trade_course_id`, `employee_id`, `school_name`, `degree_course`, `year_graduated`, `highest_grade_level_units_earned`, `dates_from_to`, `scholar_academic_honors`) VALUES
(1, 1, '3', '3', '3', '3', '3', '3'),
(4, 39, 'R', 'TRT', 'RT', '', '0', 'RT');

-- --------------------------------------------------------

--
-- Table structure for table `voluntary_work`
--

CREATE TABLE `voluntary_work` (
  `voluntary_work_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `name_address_organization` varchar(100) NOT NULL,
  `dates_from` varchar(20) NOT NULL,
  `dates_to` varchar(20) NOT NULL,
  `number_hours` varchar(20) NOT NULL,
  `position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voluntary_work`
--

INSERT INTO `voluntary_work` (`voluntary_work_id`, `employee_id`, `name_address_organization`, `dates_from`, `dates_to`, `number_hours`, `position`) VALUES
(1, 1, 'q', '2023-01-04', '2023-01-04', 'q', 'q'),
(5, 64, 'f', '2023-05-10', '2023-05-31', '5', 'Developer');

-- --------------------------------------------------------

--
-- Table structure for table `work_experience`
--

CREATE TABLE `work_experience` (
  `work_experience_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `dates_from` varchar(30) NOT NULL,
  `dates_to` varchar(30) NOT NULL,
  `position_title` varchar(50) NOT NULL,
  `work_place` varchar(50) NOT NULL,
  `monthly_salary` varchar(30) NOT NULL,
  `salary_grade_step_inc` varchar(30) NOT NULL,
  `status_appointment` varchar(50) NOT NULL,
  `gov_service` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `work_experience`
--

INSERT INTO `work_experience` (`work_experience_id`, `employee_id`, `dates_from`, `dates_to`, `position_title`, `work_place`, `monthly_salary`, `salary_grade_step_inc`, `status_appointment`, `gov_service`) VALUES
(2, 1, 'q', 'q', 'qq', 'q', 'q', 'q', 'q', 'q');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_service_credits`
--
ALTER TABLE `add_service_credits`
  ADD PRIMARY KEY (`add_service_credits_id`);

--
-- Indexes for table `administrative_information`
--
ALTER TABLE `administrative_information`
  ADD PRIMARY KEY (`administrative_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`child_id`);

--
-- Indexes for table `civil_service_eligibility`
--
ALTER TABLE `civil_service_eligibility`
  ADD PRIMARY KEY (`civil_service_eligibility_id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `elementary`
--
ALTER TABLE `elementary`
  ADD PRIMARY KEY (`elementary_id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`employee_details_id`);

--
-- Indexes for table `graduate_studies`
--
ALTER TABLE `graduate_studies`
  ADD PRIMARY KEY (`graduate_studies_id`);

--
-- Indexes for table `leave_credits`
--
ALTER TABLE `leave_credits`
  ADD PRIMARY KEY (`leave_credits_id`);

--
-- Indexes for table `other_information`
--
ALTER TABLE `other_information`
  ADD PRIMARY KEY (`other_information_id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`parents_id`);

--
-- Indexes for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`reference_id`);

--
-- Indexes for table `secondary`
--
ALTER TABLE `secondary`
  ADD PRIMARY KEY (`secondary_id`);

--
-- Indexes for table `service_credits`
--
ALTER TABLE `service_credits`
  ADD PRIMARY KEY (`service_credits_id`);

--
-- Indexes for table `spouse`
--
ALTER TABLE `spouse`
  ADD PRIMARY KEY (`spouse_id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `training_programs`
--
ALTER TABLE `training_programs`
  ADD PRIMARY KEY (`training_programs_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vocational_trade_course`
--
ALTER TABLE `vocational_trade_course`
  ADD PRIMARY KEY (`vocational_trade_course_id`);

--
-- Indexes for table `voluntary_work`
--
ALTER TABLE `voluntary_work`
  ADD PRIMARY KEY (`voluntary_work_id`);

--
-- Indexes for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`work_experience_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_service_credits`
--
ALTER TABLE `add_service_credits`
  MODIFY `add_service_credits_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `administrative_information`
--
ALTER TABLE `administrative_information`
  MODIFY `administrative_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `child_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `civil_service_eligibility`
--
ALTER TABLE `civil_service_eligibility`
  MODIFY `civil_service_eligibility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `elementary`
--
ALTER TABLE `elementary`
  MODIFY `elementary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `employee_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `graduate_studies`
--
ALTER TABLE `graduate_studies`
  MODIFY `graduate_studies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leave_credits`
--
ALTER TABLE `leave_credits`
  MODIFY `leave_credits_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `other_information`
--
ALTER TABLE `other_information`
  MODIFY `other_information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `parents_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_information`
--
ALTER TABLE `personal_information`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `reference_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `secondary`
--
ALTER TABLE `secondary`
  MODIFY `secondary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_credits`
--
ALTER TABLE `service_credits`
  MODIFY `service_credits_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `spouse`
--
ALTER TABLE `spouse`
  MODIFY `spouse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_programs`
--
ALTER TABLE `training_programs`
  MODIFY `training_programs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `vocational_trade_course`
--
ALTER TABLE `vocational_trade_course`
  MODIFY `vocational_trade_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `voluntary_work`
--
ALTER TABLE `voluntary_work`
  MODIFY `voluntary_work_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `work_experience_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
