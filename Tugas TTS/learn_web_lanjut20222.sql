-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 04:40 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn_web_lanjut20222`
--

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `RNum` int(3) NOT NULL,
  `NoOrder` int(5) NOT NULL,
  `IdBed` int(5) NOT NULL,
  `Location` int(4) NOT NULL,
  `NoFasilitasOrderDetail` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`RNum`, `NoOrder`, `IdBed`, `Location`, `NoFasilitasOrderDetail`) VALUES
(107, 5149, 1289, 85, 179),
(108, 5147, 1311, 85, 180),
(109, 5187, 1303, 86, 176),
(111, 5130, 1234, 89, 154),
(113, 4444, 4444, 444, 4444);

-- --------------------------------------------------------

--
-- Table structure for table `stockopnamedetail`
--

CREATE TABLE `stockopnamedetail` (
  `NoLine` int(4) NOT NULL,
  `NoTransaksi` int(4) NOT NULL,
  `KodeItem` varchar(10) NOT NULL,
  `RealStock` int(3) NOT NULL,
  `IdLokasi` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stockopnamedetail`
--

INSERT INTO `stockopnamedetail` (`NoLine`, `NoTransaksi`, `KodeItem`, `RealStock`, `IdLokasi`) VALUES
(13082, 5149, 'L010100018', 190, 85),
(13083, 5147, 'L010100019', 35, 85),
(13084, 5187, 'L010100040', 40, 89),
(13089, 6666, 'L010100666', 777, 666),
(13091, 5555, 'L010100055', 55, 888),
(13092, 5111, 'L010100071', 71, 81);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`RNum`);

--
-- Indexes for table `stockopnamedetail`
--
ALTER TABLE `stockopnamedetail`
  ADD PRIMARY KEY (`NoLine`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `RNum` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `stockopnamedetail`
--
ALTER TABLE `stockopnamedetail`
  MODIFY `NoLine` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13093;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
