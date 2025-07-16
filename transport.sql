-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 1, 2024 at 06:33 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transport`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `abcd` (IN `push` INT)  NO SQL
SELECT* from user_info$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `om` (IN `bus` INT)  NO SQL
SELECT* from bus_details$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `nandu` (IN `nandu` INT)  NO SQL
SELECT* from ticket$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `psw` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `name`, `psw`) VALUES
(1, 'omprakash', 'omprakash');

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `uid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `adhar_no` varchar(30) NOT NULL,
  `psw` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`uid`, `name`, `uname`, `age`, `adhar_no`, `psw`, `email`) VALUES
(1, 'Rajesh', 'rajesh', '22', '123456', 'rajesh', 'raj@gmail.com'),
(2, 'Nishant', 'nishant', '22', '12345', 'nishant', 'ni@gmail.com'),
(3, 'Rajeev Kumar', 'rajeev', '23', '1234567', 'rajeev', 'ra@gmail.com');

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`uid`);


-- --------------------------------------------------------

--
-- Table structure for table `bus_details`
--

CREATE TABLE `bus_details` (
  `bus_id` int(11) NOT NULL,
  `bname` varchar(30) NOT NULL,
  `bno` varchar(20) NOT NULL,
  `bfrom` varchar(30) NOT NULL,
  `bto` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `no_seat` int(11) NOT NULL,
  `fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_details`
--

INSERT INTO `bus_details` (`bus_id`, `bname`, `bno`, `bfrom`, `bto`, `time`, `type`, `no_seat`, `fare`) VALUES
(2, 'Toofan Express', 'mp 30 sc 0137', 'Bhind ', 'Delhi', '6pm', 'Ac', 80, 1000),
(3, 'Satabdi Express', 'MP07 Se1212', 'Bhind ', 'Delhi', '7 pm', 'Non Ac', 80, 500),
(4, 'Janrath', 'up16sc1212', 'Lucknow', 'gorakhpur', '6am', 'Ac', 80, 350),
(5, 'Taj express', 'mp30Ka1213', 'Bangalore', 'Ladakh', '8AM', 'Ac', 80, 5000),
(6, 'Volvo Express', 'DL01 AB1234', 'Delhi', 'Mumbai', '10PM', 'AC', 50, 2500),
(7, 'Rajdhani Travels', 'MH12 XY9876', 'Mumbai', 'Pune', '6AM', 'Non AC', 60, 600),
(8, 'Shatabdi Deluxe', 'UP32 BC5678', 'Lucknow', 'Delhi', '8AM', 'AC', 70, 1500),
(9, 'Garib Rath', 'RJ14 CD4321', 'Jaipur', 'Agra', '11AM', 'Non AC', 55, 300),
(10, 'Karnataka Express', 'KA03 EF7890', 'Bangalore', 'Chennai', '5PM', 'AC', 80, 1800),
(11, 'Golden Temple Express', 'PB10 GH1234', 'Amritsar', 'Delhi', '9PM', 'AC', 100, 2000),
(12, 'Himachal Roadways', 'HP34 IJ5678', 'Manali', 'Shimla', '7AM', 'Non AC', 40, 700),
(13, 'Andhra Express', 'AP05 KL8901', 'Hyderabad', 'Visakhapatnam', '9PM', 'AC', 60, 1600),
(14, 'Goa Express', 'GA08 MN2345', 'Panjim', 'Mumbai', '4PM', 'AC', 70, 2200),
(15, 'Desert Queen', 'RJ11 OP6789', 'Jodhpur', 'Jaisalmer', '6AM', 'Non AC', 50, 800),
(16, 'North East Express', 'AS01 QR3456', 'Guwahati', 'Shillong', '8AM', 'Non AC', 45, 500),
(17, 'Punjab Mail', 'PB02 ST7890', 'Ludhiana', 'Chandigarh', '10AM', 'AC', 40, 1000),
(18, 'Sundarban Express', 'WB03 UV1234', 'Kolkata', 'Sundarban', '5AM', 'Non AC', 55, 400),
(19, 'Kerala King', 'KL09 WX5678', 'Kochi', 'Trivandrum', '7PM', 'AC', 80, 1500),
(20, 'Maharashtra Rajdhani', 'MH10 YZ8901', 'Nagpur', 'Pune', '6PM', 'AC', 60, 1800);

--
-- Indexes for table `bus_details`
--
ALTER TABLE `bus_details`
  ADD PRIMARY KEY (`bus_id`);

-- --------------------------------------------------------

--
-- Table structure for table `booking_det`
--

CREATE TABLE `booking_det` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,  -- Added a unique primary key column
  `bus_id` int(11) NOT NULL,
  `vacant` int(11) NOT NULL,
  `jdate` varchar(30) NOT NULL,
  `bfrom` varchar(30) NOT NULL,
  `bto` varchar(30) NOT NULL,
   PRIMARY KEY (`id`),
   FOREIGN KEY (`bus_id`) REFERENCES `bus_details`(`bus_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_det`
--

INSERT INTO `booking_det` (`bus_id`, `vacant`, `jdate`, `bfrom`, `bto`) VALUES
(3, 75, '2024-10-27', 'Bhind ', 'Delhi'),
(2, 78, '2024-10-28', 'Bhind ', 'Delhi'),
(5, 70, '2024-10-28', 'Bangalore', 'Ladakh'),
(6, 45, '2024-10-29', 'Delhi', 'Mumbai'),
(7, 50, '2024-10-30', 'Mumbai', 'Pune'),
(8, 60, '2024-11-06', 'Lucknow', 'Delhi'),
(9, 55, '2024-11-07', 'Jaipur', 'Agra'),
(10, 70, '2024-11-07', 'Bangalore', 'Chennai'),
(11, 95, '2024-11-08', 'Amritsar', 'Delhi'),
(12, 35, '2024-11-08', 'Manali', 'Shimla'),
(13, 40, '2024-11-09', 'Hyderabad', 'Visakhapatnam'),
(14, 65, '2024-11-09', 'Panjim', 'Mumbai'),
(15, 50, '2024-11-10', 'Jodhpur', 'Jaisalmer'),
(16, 30, '2024-11-10', 'Guwahati', 'Shillong'),
(17, 38, '2024-11-11', 'Ludhiana', 'Chandigarh'),
(18, 42, '2024-11-11', 'Kolkata', 'Sundarban'),
(19, 55, '2024-11-11', 'Kochi', 'Trivandrum'),
(20, 48, '2024-11-11', 'Nagpur', 'Pune'),
(2, 72, '2024-11-12', 'Bhind', 'Delhi'),
(4, 78, '2024-11-12', 'Lucknow', 'Gorakhpur'),
(5, 68, '2024-11-12', 'Bangalore', 'Ladakh'),
(3, 70, '2024-11-13', 'Bhind', 'Delhi'),
(9, 50, '2024-11-13', 'Jaipur', 'Agra');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `tid` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `seat_no` varchar(30) NOT NULL,
  `no_seat` int(11) NOT NULL,
  `ticket_status` varchar(30) NOT NULL,
  `jdate` varchar(30) NOT NULL,
  `booking_date` date NOT NULL,
  `pname` varchar(30) NOT NULL,
   FOREIGN KEY (`bus_id`) REFERENCES `bus_details`(`bus_id`) ON DELETE CASCADE,
   FOREIGN KEY (`uid`) REFERENCES `user_info`(`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`tid`, `bus_id`, `uid`, `seat_no`, `no_seat`, `ticket_status`, `jdate`, `booking_date`, `pname`) VALUES
(1, 3, 1, ' 1 2', 2, 'Confirm', '2024-11-13', '2024-11-12', 'rajesh'),
(2, 2, 1, ' 1 2', 2, 'Confirm', '2024-11-12', '2024-11-11', 'Rajesh'),
(3, 5, 2, ' 1 2 3 4 5 6 7 8 9 10', 10, 'Confirm', '2024-11-10', '2024-11-09', 'Nishant'),
(4, 3, 3, ' 3 4 5', 3, 'Confirm', '2024-11-09', '2024-11-08', 'Rajeev Kumar'),
(5, 6, 1, '1 2 3', 3, 'Confirm', '2024-11-10', '2024-11-08', 'Amit Sharma'),
(6, 7, 2, '5 6', 2, 'Confirm', '2024-11-09', '2024-11-07', 'Pooja Singh'),
(7, 8, 3, '7 8 9', 3, 'Confirm', '2024-11-08', '2024-11-06', 'Karan Verma'),
(8, 9, 1, '10 11 12 13', 4, 'Confirm', '2024-11-07', '2024-11-05', 'Sunita Rao'),
(9, 10, 2, '14 15', 2, 'Confirm', '2024-11-06', '2024-11-04', 'Rohit Mehta'),
(10, 11, 3, '16 17 18', 3, 'Confirm', '2024-11-05', '2024-11-03', 'Simran Kaur'),
(11, 12, 1, '19 20', 2, 'Confirm', '2024-11-04', '2024-11-02', 'Vikram Patel'),
(12, 13, 2, '21 22 23', 3, 'Confirm', '2024-11-03', '2024-11-01', 'Megha Rathi'),
(13, 14, 3, '24 25 26 27', 4, 'Confirm', '2024-11-02', '2024-10-31', 'Arjun Singh'),
(14, 15, 1, '28 29', 2, 'Confirm', '2024-11-01', '2024-10-30', 'Priya Pandey'),
(15, 16, 2, '30 31', 2, 'Confirm', '2024-10-31', '2024-10-29', 'Sanjay Dutt'),
(16, 17, 3, '32 33 34', 3, 'Confirm', '2024-10-30', '2024-10-28', 'Kavita Gupta'),
(17, 18, 1, '35 36', 2, 'Confirm', '2024-10-29', '2024-10-27', 'Ravi Shankar'),
(18, 19, 2, '37 38 39 40', 4, 'Confirm', '2024-10-28', '2024-10-26', 'Aditi Sharma'),
(19, 20, 3, '41 42', 2, 'Confirm', '2024-10-27', '2024-10-25', 'Manoj Tiwari'),
(20, 4, 1, '43 44 45', 3, 'Confirm', '2024-10-26', '2024-10-24', 'Suresh Kumar'),
(21, 5, 2, '46 47 48 49', 4, 'Confirm', '2024-10-25', '2024-10-23', 'Reena Kapoor'),
(22, 9, 3, '50 51', 2, 'Confirm', '2024-10-24', '2024-10-22', 'Mohan Lal'),
(23, 3, 1, '52 53 54', 3, 'Confirm', '2024-10-23', '2024-10-21', 'Swati Jain'),
(24, 2, 2, '55 56', 2, 'Confirm', '2024-10-22', '2024-10-20', 'Alok Verma');

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tid`);

-- --------------------------------------------------------

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bus_details`
--
ALTER TABLE `bus_details`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `tid` INT(11) NOT NULL AUTO_INCREMENT,
  MODIFY `ticket_status` ENUM('Confirm', 'Cancelled') DEFAULT 'Confirm',
  AUTO_INCREMENT = 25;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;