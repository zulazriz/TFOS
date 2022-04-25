-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 07:50 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tfos`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery_list`
--

CREATE TABLE `delivery_list` (
  `delivery_ID` int(11) NOT NULL,
  `delivery_name` varchar(255) NOT NULL,
  `delivery_code` int(15) NOT NULL,
  `delivery_remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `manager_ID` int(11) NOT NULL,
  `manager_username` varchar(255) NOT NULL,
  `manager_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_ID` int(11) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `prod_code` int(15) NOT NULL,
  `prod_quantity` int(100) NOT NULL,
  `prod_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reject_list`
--

CREATE TABLE `reject_list` (
  `reject_ID` int(11) NOT NULL,
  `reject _name` varchar(255) NOT NULL,
  `reject _code` int(15) NOT NULL,
  `reject _remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `return_list`
--

CREATE TABLE `return_list` (
  `return_ID` int(11) NOT NULL,
  `return_name` varchar(255) NOT NULL,
  `return _code` int(15) NOT NULL,
  `return _remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salary_ID` int(11) NOT NULL,
  `salary` decimal(5,2) NOT NULL,
  `salary_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_ID` int(11) NOT NULL,
  `schedule_workshift` varchar(255) NOT NULL,
  `Schedule_WorkersName` varchar(255) NOT NULL,
  `schedule_workcell` char(255) NOT NULL,
  `schedule_WorkersPhonenum` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_ID` int(11) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `staff_matric` varchar(255) NOT NULL,
  `staff_ic` int(12) NOT NULL,
  `staff_phonenum` int(12) NOT NULL,
  `staff_gender` varchar(255) NOT NULL,
  `staff_email` varchar(255) NOT NULL,
  `staff_faculty` varchar(255) NOT NULL,
  `staff_bankaccount` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `sv_ID` int(11) NOT NULL,
  `sv_username` varchar(255) NOT NULL,
  `sv_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `swr`
--

CREATE TABLE `swr` (
  `swr_ID` int(11) NOT NULL,
  `sv_ID` int(11) NOT NULL,
  `prod_ID` int(11) NOT NULL,
  `swr_ItemID` int(11) NOT NULL,
  `swr_ItemDescription` varchar(255) NOT NULL,
  `swr_UnitMeasure` varchar(255) NOT NULL,
  `swr_ItemQuantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workcell`
--

CREATE TABLE `workcell` (
  `workcell_ID` int(11) NOT NULL,
  `workcell_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivery_list`
--
ALTER TABLE `delivery_list`
  ADD PRIMARY KEY (`delivery_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`manager_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_ID`);

--
-- Indexes for table `reject_list`
--
ALTER TABLE `reject_list`
  ADD PRIMARY KEY (`reject_ID`);

--
-- Indexes for table `return_list`
--
ALTER TABLE `return_list`
  ADD PRIMARY KEY (`return_ID`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salary_ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_ID`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`sv_ID`);

--
-- Indexes for table `swr`
--
ALTER TABLE `swr`
  ADD PRIMARY KEY (`swr_ID`);

--
-- Indexes for table `workcell`
--
ALTER TABLE `workcell`
  ADD PRIMARY KEY (`workcell_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery_list`
--
ALTER TABLE `delivery_list`
  MODIFY `delivery_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `manager_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reject_list`
--
ALTER TABLE `reject_list`
  MODIFY `reject_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_list`
--
ALTER TABLE `return_list`
  MODIFY `return_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `sv_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `swr`
--
ALTER TABLE `swr`
  MODIFY `swr_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workcell`
--
ALTER TABLE `workcell`
  MODIFY `workcell_ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
