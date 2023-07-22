-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 07:31 AM
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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_code` int(5) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_code`, `product_name`, `product_price`) VALUES
(1, 'Kangkung', '10000'),
(2, 'Bayam', '3000'),
(3, 'Laptop Lenovo', '13000000'),
(4, 'Kursi Plastik', '150000'),
(5, 'Obat Nyamuk', '5500'),
(6, 'Roti', '3500'),
(8, 'Tisu', '5500'),
(10, 'Lampu', '8500'),
(11, 'Sabuk Kulit', '320000'),
(12, 'Sarung Wadimor', '150000');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`RNum`, `NoOrder`, `IdBed`, `Location`, `NoFasilitasOrderDetail`) VALUES
(107, 5149, 1289, 85, 179),
(108, 5147, 1311, 85, 180),
(109, 5187, 1303, 86, 176),
(111, 5130, 1234, 89, 154),
(113, 4444, 4444, 444, 4444),
(115, 5150, 2221, 11, 1111);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_code`);

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
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_code` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `RNum` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `stockopnamedetail`
--
ALTER TABLE `stockopnamedetail`
  MODIFY `NoLine` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13093;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
