-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2018 at 09:44 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` varchar(10) NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  `hod` varchar(25) NOT NULL,
  `dept_loc` varchar(30) NOT NULL,
  `dept_contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_name`, `hod`, `dept_loc`, `dept_contact`) VALUES
('A12', 'CSE', 'RKM', 'CSDPT', 80754),
('c12', 'CS', 'SPyne', 'NAGAP', 80976),
('E12', 'ECE', 'TKDan', 'ECDEPT', 87656);

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`username`, `password`) VALUES
('116cs0232', 'arna123'),
('ARNA', 'arna123');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` varchar(10) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `address` varchar(30) NOT NULL,
  `dept_id` varchar(10) NOT NULL,
  `date_joining` date NOT NULL,
  `project_id` varchar(10) NOT NULL,
  `pay_id` varchar(10) NOT NULL,
  `contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `age`, `sex`, `address`, `dept_id`, `date_joining`, `project_id`, `pay_id`, `contact`) VALUES
('ec', 'pavan', 21, 'male', 'Hyderabad', 'E12', '2015-06-01', 'A56', 'P23', 9438823051);

-- --------------------------------------------------------

--
-- Table structure for table `paytable`
--

CREATE TABLE `paytable` (
  `pay_id` varchar(10) NOT NULL,
  `basic_pay` int(11) NOT NULL,
  `ta` int(11) NOT NULL,
  `da` int(11) NOT NULL,
  `hra` int(11) NOT NULL,
  `pf` int(11) NOT NULL,
  `net_salary` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paytable`
--

INSERT INTO `paytable` (`pay_id`, `basic_pay`, `ta`, `da`, `hra`, `pf`, `net_salary`) VALUES
('P12', 20000, 500, 1000, 500, 400, 53000),
('P23', 25000, 500, 1000, 500, 400, 65850);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` varchar(10) NOT NULL,
  `project_name` varchar(30) NOT NULL,
  `project_head` varchar(30) NOT NULL,
  `project_loc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `project_head`, `project_loc`) VALUES
('A23', 'ML', 'ANandy', 'RKL'),
('A56', 'IOT', 'MOkhade', 'Hyd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `paytable`
--
ALTER TABLE `paytable`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
