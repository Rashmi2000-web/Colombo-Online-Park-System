-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 02:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `colpark`
--

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `Fname` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`Fname`, `contact_no`, `email`, `feedback`) VALUES
('thisa', '0112824403', 'thashilamanayakkara@gmail.com', '0'),
('thiwa', '0112824403', 'thashilamanayakkara@gmail.com', '0'),
('thiwa', '0112824403', 'thashilamanayakkara@gmail.com', '0'),
('thiwanka', '0112325598', 'thisu@gmail.com', '0'),
('thiwanka', '0112824403', 'thisu@gmail.com', 'good'),
('', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hr`
--

CREATE TABLE `hr` (
  `vehicle_reg_no` varchar(255) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `vehicle_weight` float NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `id_no` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hr`
--

INSERT INTO `hr` (`vehicle_reg_no`, `vehicle_type`, `vehicle_weight`, `owner_name`, `address`, `id_no`, `phone_no`) VALUES
('p12', 'bus', 23.9, 'kamal', '23,fight,nugegoda', 'w23456', '0114523369');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `RegisterNo` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `Fullname` varchar(255) NOT NULL,
  `contactNo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nic` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`RegisterNo`, `username`, `Fullname`, `contactNo`, `email`, `nic`, `dob`, `address`, `postcode`) VALUES
(1, 'JillBiden', 'namal', '11237456', 'asd@gmail.com', '123435v', '2020-10-01', '12cbnrxvvfd', '123'),
(4, 'JillBiden', 'reason', '0112824403', 'ase@gmail.com', '901245678v', '2020-09-29', 'cxcvs', '012365'),
(25, 'JillBiden', 'thiwankaaa', '0452369874', 'eric@gmail.com', '901245678v', '2020-10-05', 'asdfsdgs', '456321'),
(26, 'JillBiden', 'thiwankaaa', '0452369874', 'eric@gmail.com', '901245678v', '2020-10-05', 'asdfsdgs', '456321'),
(27, 'JillBiden', 'thiwankaaa', '0452369874', 'eric@gmail.com', '901245678v', '2020-10-05', 'asdfsdgs', '456321');

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `parkingID` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `charging` tinyint(1) NOT NULL,
  `parked_type` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `cardholder_name` varchar(255) NOT NULL,
  `card_no` int(11) NOT NULL,
  `expire_date` date NOT NULL,
  `cvc_no` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `deposit_amount` int(11) NOT NULL,
  `vehicle_no` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_pwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `cardholder_name`, `card_no`, `expire_date`, `cvc_no`, `c_name`, `deposit_amount`, `vehicle_no`, `username`, `password`, `confirm_pwd`) VALUES
(7, 'thisarani', 2147483647, '2020-10-07', 7845, 'thiwa', 5000, 'p12', 'Amilia35?', 'er5@y', 'er5@y'),
(8, 'thisarani', 2147483647, '2020-10-07', 7845, 'thiwa', 5000, 'p12', 'Amilia35?', 'er5@y', 'er5@y'),
(12, 'yohani', 2147483647, '2020-11-07', 4125, 'nimal', 1000, 'p12', 'John_Fill', 'df23@k', 'df23@k'),
(13, 'yohani', 2147483647, '2020-10-05', 1236, 'thiwa', 2000, 'p12', 'John_Fill', 'ui7@9@9', 'ui7@9@9');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `user _name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user _name`, `first_name`, `last_name`, `password`, `email`, `contactno`, `address`) VALUES
('Amilia35?', 'Amilia', 'Cooper', '@?1546asgfsd', 'Amilia@yahoo.com', '0715654658', 'No-18, x road, colombo-15'),
('JillBiden', 'Jill', 'Biden', '@$*(1514sg5SD', 'Jill@outlook.com', '0759462543', 'No-13, 8th lane,colombo-3'),
('John_Fill', 'John', 'Fill', 'aq1?544s5gFDSFSD', 'John@gmail.com', '0778956487', 'No-132, 2nd cross street, colombo 13'),
('Jsm215', 'James', 'Chrishan', '@?1546ajsdiaA', 'James23@my.sliit.lk', '0779214582', 'No-05, first cross street, colombo-05'),
('Marry_mary', 'Marry', 'Cooper', '16545632affdafsas@?', 'mary@gmail.com', '0710659451', 'No-05,5th lane, Colombo-05 ');

-- --------------------------------------------------------

--
-- Table structure for table `removed_vehicle`
--

CREATE TABLE `removed_vehicle` (
  `remove_id` int(11) NOT NULL,
  `veicle_reg_no` varchar(255) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_repair`
--

CREATE TABLE `vehicle_repair` (
  `Vehicle_no` varchar(255) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `register_no` int(11) NOT NULL,
  `required_parts` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_repair`
--

INSERT INTO `vehicle_repair` (`Vehicle_no`, `owner_name`, `contact_no`, `register_no`, `required_parts`) VALUES
('v001', 'namal', '0998763345', 4, 'wash'),
('v004', 'hemal', '02213265478', 1, 'repair');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `vehicle_ID` int(20) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `Per_hour_charges` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`vehicle_ID`, `vehicle_type`, `Per_hour_charges`) VALUES
(1, 'Car', 20.25),
(2, 'Van', 23.5),
(3, 'Bike', 15.35),
(4, 'Three_wheeler', 10.35),
(5, 'Cycle', 3.15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hr`
--
ALTER TABLE `hr`
  ADD PRIMARY KEY (`vehicle_reg_no`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`RegisterNo`),
  ADD KEY `user_FK` (`username`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`parkingID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `user1_fk` (`username`),
  ADD KEY `vehicle_no_FK` (`vehicle_no`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`user _name`);

--
-- Indexes for table `removed_vehicle`
--
ALTER TABLE `removed_vehicle`
  ADD PRIMARY KEY (`remove_id`);

--
-- Indexes for table `vehicle_repair`
--
ALTER TABLE `vehicle_repair`
  ADD PRIMARY KEY (`Vehicle_no`),
  ADD KEY `register_FK` (`register_no`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`vehicle_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `RegisterNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `parking`
--
ALTER TABLE `parking`
  MODIFY `parkingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `removed_vehicle`
--
ALTER TABLE `removed_vehicle`
  MODIFY `remove_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `vehicle_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `user_FK` FOREIGN KEY (`username`) REFERENCES `register` (`user _name`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `user1_fk` FOREIGN KEY (`username`) REFERENCES `register` (`user _name`),
  ADD CONSTRAINT `vehicle_no_FK` FOREIGN KEY (`vehicle_no`) REFERENCES `hr` (`vehicle_reg_no`);

--
-- Constraints for table `vehicle_repair`
--
ALTER TABLE `vehicle_repair`
  ADD CONSTRAINT `register_FK` FOREIGN KEY (`register_no`) REFERENCES `member` (`RegisterNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
