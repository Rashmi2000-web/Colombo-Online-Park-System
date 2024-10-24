-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2020 at 02:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

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
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`parkingID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`user _name`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`vehicle_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parking`
--
ALTER TABLE `parking`
  MODIFY `parkingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `vehicle_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
