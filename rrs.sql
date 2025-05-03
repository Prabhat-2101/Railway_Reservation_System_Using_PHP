-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 03, 2025 at 08:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `user` varchar(255) NOT NULL,
  `pnr` varchar(10) NOT NULL,
  `reservation_date` date NOT NULL,
  `source` varchar(10) NOT NULL,
  `destination` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fare_rate`
--

CREATE TABLE `fare_rate` (
  `source` varchar(6) NOT NULL,
  `destination` varchar(6) NOT NULL,
  `fare` int(5) NOT NULL,
  `time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fare_rate`
--

INSERT INTO `fare_rate` (`source`, `destination`, `fare`, `time`) VALUES
('DNR', 'PNBE', 60, '1HR'),
('GNT', 'PNBE', 1900, '30HR'),
('GNT', 'DNR', 1930, '31HR'),
('TEL', 'GNT', 30, '1HR');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--
-- Error reading structure for table rrs.stations: #1932 - Table &#039;rrs.stations&#039; doesn&#039;t exist in engine
-- Error reading data for table rrs.stations: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `rrs`.`stations`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `src_code` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`src_code`, `source`) VALUES
('PNBE', 'Patna'),
('DNR', 'Danapur'),
('GNT', 'Guntur'),
('DLE', 'Delhi'),
('HYD', 'Hyderabad'),
('BOM', 'Mumbai'),
('CHN', 'Chennai'),
('KOL', 'Kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `s.no` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(70) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`s.no`, `name`, `username`, `email`, `address`, `dob`, `password`) VALUES
(6, 'Sonu Kumar', 'sonu123', 'aa@gmail.com', 'Motihari Bihar', '2008-01-09', '1234567890'),
(5, 'Prabhat Kumar', 'Prabhat2101', 'sahprabhat2101@gmail.com', 'Motihari', '2023-10-11', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`pnr`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `s.no` (`s.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
