-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2018 at 05:02 AM
-- Server version: 5.7.20
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airlines_reservation_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `airlines_id` int(11) NOT NULL,
  `airlines_company_id` varchar(255) NOT NULL,
  `airlines_at_id` varchar(255) NOT NULL,
  `airlines_name` varchar(255) NOT NULL,
  `airlines_no` varchar(255) NOT NULL,
  `airlines_from` varchar(255) NOT NULL,
  `airlines_deaprture` varchar(255) NOT NULL,
  `airlines_to` varchar(255) NOT NULL,
  `airlines_arrival` varchar(255) NOT NULL,
  `airlines_travel_time` varchar(255) NOT NULL,
  `airlines_total_distance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`airlines_id`, `airlines_company_id`, `airlines_at_id`, `airlines_name`, `airlines_no`, `airlines_from`, `airlines_deaprture`, `airlines_to`, `airlines_arrival`, `airlines_travel_time`, `airlines_total_distance`) VALUES
(2, '1', '2', 'India Air', 'AI-1563', '2', '12:20 AM', '16', '09:12 PM', '12 Hours', '1200 KM'),
(3, '2', '2', 'OA-9078', '', '2', '09:30 AM', '16', '10:45 PM', '07 Hours', '1200'),
(4, '3', '2', 'France A098', 'FR-22104', '5', '07:40 AM', '1', '08:12 PM', '09 Hours', ''),
(5, '4', '2', 'Canadian CDE', 'AC-12324', '2', '06:55 AM', '17', '03:00 AM', '26 Hours', '1462'),
(7, '', '', '', '', '2', '', '0', '', '', ''),
(8, '', '', '', '', '14', '', '0', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `airlines_type`
--

CREATE TABLE `airlines_type` (
  `at_id` int(11) NOT NULL,
  `at_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `airlines_type`
--

INSERT INTO `airlines_type` (`at_id`, `at_name`) VALUES
(1, 'Domestic'),
(2, 'Intenational');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `booking_user_id` varchar(255) NOT NULL,
  `booking_route_id` varchar(255) NOT NULL,
  `booking_date` varchar(255) NOT NULL,
  `booking_total_fare` varchar(255) NOT NULL,
  `booking_journey_date` varchar(255) NOT NULL,
  `booking_seat_type` varchar(255) NOT NULL,
  `booking_status` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_user_id`, `booking_route_id`, `booking_date`, `booking_total_fare`, `booking_journey_date`, `booking_seat_type`, `booking_status`) VALUES
(1, '7', '4', '05 March, 2017', '11250', '16 March,2017', 'Economy', '0'),
(2, '7', '3', '05 March, 2017', '200', '23 March,2017', 'Economy', '0'),
(3, '7', '4', '05 March, 2017', '8250', '24 March,2017', 'Economy', '0'),
(4, '7', '3', '05 March, 2017', '1300', '23 March,2017', 'Economy', '0'),
(5, '7', '3', '17 October, 2018', '600', '17 October,2018', 'Economy', '0'),
(6, '7', '3', '17 October, 2018', '600', '17 October,2018', 'Economy', '0'),
(7, '7', '3', '17 October, 2018', '650', '18 October,2018', 'Economy', '0');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(10) UNSIGNED NOT NULL,
  `city_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Mumbai'),
(2, 'Delhi'),
(3, 'Chenai'),
(4, 'Banglore'),
(5, 'Varanasi'),
(6, 'Kolkatta'),
(7, 'Ghaziabad'),
(8, 'Aligarh'),
(9, 'Tundal'),
(10, 'Kanpur'),
(11, 'Allahabad'),
(12, 'Mirzapur'),
(13, 'Mughalsarai'),
(14, 'Bhabua Road'),
(15, 'Sasaram'),
(16, 'Gaya'),
(17, 'Howrah'),
(18, 'Kodarma'),
(19, 'Asansol'),
(20, 'Dhanbad');

-- --------------------------------------------------------

--
-- Table structure for table `coach_type`
--

CREATE TABLE `coach_type` (
  `ct_id` int(11) NOT NULL,
  `ct_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coach_type`
--

INSERT INTO `coach_type` (`ct_id`, `ct_name`) VALUES
(1, 'Sleeper'),
(2, 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_image` varchar(255) NOT NULL,
  `company_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_image`, `company_description`) VALUES
(1, 'Air India', 'air-india-logo-156x156.gif', 'Air India'),
(2, 'Air Oman', 'untitled-1_287.png', 'Air Oman'),
(3, 'Air France', 'logo-af-app.png', 'Air France'),
(4, 'Air Canada', 'Screen-shot-2013-03-17-at-11.27.43-PM.png', 'Air Canada');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `login_user` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `login_level` varchar(255) NOT NULL,
  `login_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_user`, `login_password`, `login_level`, `login_date`) VALUES
(1, 'admin', 'test', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `passengar`
--

CREATE TABLE `passengar` (
  `passengar_id` int(11) NOT NULL,
  `passengar_booking_id` varchar(255) NOT NULL,
  `passengar_type` varchar(255) NOT NULL,
  `passengar_name` varchar(255) NOT NULL,
  `passengar_gender` varchar(255) NOT NULL,
  `passengar_age` varchar(255) NOT NULL,
  `passengar_seat_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengar`
--

INSERT INTO `passengar` (`passengar_id`, `passengar_booking_id`, `passengar_type`, `passengar_name`, `passengar_gender`, `passengar_age`, `passengar_seat_no`) VALUES
(1, '1', 'adult', 'Kaushal Kishore', 'Male', '31', '1234'),
(2, '1', 'adult', 'Atul Kumar', 'Male', '26', '1234'),
(3, '1', 'adult', 'Sumit Kumar', 'Male', '24', '1234'),
(4, '1', 'adult', 'Amit Kumar', 'Male', '34', '1234'),
(5, '1', 'child', 'Pranshu Kumar', 'Male', '5', '1234'),
(6, '1', 'child', 'Aman Kumar', 'Male', '8', '1234'),
(7, '1', 'child', 'Ajit Kumar', 'Male', '10', '1234'),
(8, '1', 'infant', 'Teesha Jaiswal', 'Female', '1.3', '1234'),
(9, '1', 'infant', 'Tani Jaiswal', 'Female', '1.2', '1234'),
(10, '2', 'adult', 'Kaushal Kishore', 'Male', '45', '1234'),
(11, '3', 'adult', 'Suresh Kumar', 'Male', '35', '1234'),
(12, '3', 'adult', 'Mahesh Kumar', 'Female', '31', '1234'),
(13, '3', 'adult', 'Sumit Kumar', 'Male', '35', '1234'),
(14, '3', 'child', 'Amit Singh', 'Male', '10', '1234'),
(15, '3', 'child', 'Suman Singh', 'Female', '12', '1234'),
(16, '3', 'infant', 'Teesha Jaiswal', 'Female', '1', '1234'),
(17, '3', 'infant', 'Tani Jaiswal', 'Female', '1.9', '1234'),
(18, '4', 'adult', 'Adult 1', 'Male', '32', '1234'),
(19, '4', 'adult', 'Adult 2', 'Male', '31', '1234'),
(20, '4', 'adult', 'Adult 3', 'Female', '35', '1234'),
(21, '4', 'child', 'Child 1', 'Male', '12', '1234'),
(22, '4', 'child', 'Child 2', 'Female', '10', '1234'),
(23, '4', 'child', 'Child 3', 'Male', '15', '1234'),
(24, '4', 'infant', 'Infant 1', 'Male', '1', '1234'),
(25, '4', 'infant', 'Infant 2', 'Female', '1.5', '1234'),
(26, '', 'adult', 'adfg', 'Male', '23', '1234'),
(27, '', 'adult', 'dsfg', 'Male', '43', '1234'),
(28, '', 'adult', 'adfsg', 'Female', '23', '1234'),
(29, '6', 'adult', 'adfg', 'Male', '23', '1234'),
(30, '6', 'adult', 'dsfg', 'Male', '43', '1234'),
(31, '6', 'adult', 'adfsg', 'Female', '23', '1234'),
(32, '7', 'adult', 'Kaushal Kishore', 'Male', '34', '1234'),
(33, '7', 'adult', 'Atul Kumar', 'Male', '25', '1234'),
(34, '7', 'child', 'Amit Singh', 'Male', '2', '1234'),
(35, '7', 'infant', 'Aman Kumar', 'Male', '1', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Doctor');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_id` int(11) NOT NULL,
  `route_airlines_id` varchar(255) NOT NULL,
  `route_from_city` varchar(255) NOT NULL,
  `route_from_arrival` varchar(255) NOT NULL,
  `route_from_departure` varchar(255) NOT NULL,
  `route_to_city` varchar(255) NOT NULL,
  `route_economy_fare` varchar(255) NOT NULL,
  `route_business_fare` varchar(255) NOT NULL,
  `route_duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `route_airlines_id`, `route_from_city`, `route_from_arrival`, `route_from_departure`, `route_to_city`, `route_economy_fare`, `route_business_fare`, `route_duration`) VALUES
(2, '2', '2', '12:00', '09:00', '12', '100', '150', '2h 35m'),
(3, '3', '2', '01:00 ', '03:45', '16', '200', '300', '1h 50m'),
(4, '2', '2', '03:20', '06:32', '16', '1500', '1700', '10h 15m'),
(5, '2', '11', '04:55', '06:45', '16', '600', '800', '4h 12m'),
(6, '5', '2', '12:10', '06:55', '10', '200', '300', '6h 10m'),
(7, '5', '10', '13:20 ', '13:40	', '11', '300', '400', '3h 10m'),
(8, '5', '11', '16:35', '16:45', '13', '400', '400', '1h 30m');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'UttarnPradesh'),
(2, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_level_id` varchar(255) NOT NULL DEFAULT '2',
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_add1` varchar(255) NOT NULL,
  `user_add2` varchar(255) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_state` varchar(255) NOT NULL,
  `user_country` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_dob` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_level_id`, `user_username`, `user_password`, `user_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_country`, `user_email`, `user_mobile`, `user_gender`, `user_dob`, `user_image`) VALUES
(7, '2', 'customer', 'test', 'Amit Kumar', 'House no : 768', 'Sector 2B', '2', '1', '2', 'amit@gmail.com', '9324324546', '', '26 December,2015', 'doctor1.jpg'),
(8, '2', 'suman', 'test', 'Suman Singh', 'House no : 768', 'Sector 2A', '1', '2', '1', 'suman@gmail.com', '987654321', '', '13 January,1961', 'doctor3.jpg'),
(10, '2', 'manasa', 'test', 'Manasa', 'New Delhi', 'India', '2', '2', '1', 'manasa@gmail.com', '9876543212', '', '18 January,1968', 'doctor2.jpg'),
(16, '1', 'admin', 'test', 'Kaushal Kishore', 'House No : 355, Sector 23', 'Sector 2A', '1', '1', '1', 'kaushal.rahuljaiswal@gmail.com', '9567654565', '', '10 March,2016', 'Image.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`airlines_id`);

--
-- Indexes for table `airlines_type`
--
ALTER TABLE `airlines_type`
  ADD PRIMARY KEY (`at_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `coach_type`
--
ALTER TABLE `coach_type`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `passengar`
--
ALTER TABLE `passengar`
  ADD PRIMARY KEY (`passengar_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `airlines_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `airlines_type`
--
ALTER TABLE `airlines_type`
  MODIFY `at_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coach_type`
--
ALTER TABLE `coach_type`
  MODIFY `ct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `passengar`
--
ALTER TABLE `passengar`
  MODIFY `passengar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
