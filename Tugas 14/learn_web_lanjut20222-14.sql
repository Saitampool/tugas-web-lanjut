-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 04:20 PM
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
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `PersonKey` int(11) NOT NULL,
  `Nama` varchar(128) NOT NULL,
  `DateofBirth` date NOT NULL DEFAULT '2000-01-01',
  `PlaceofBirth` varchar(128) NOT NULL,
  `HomeAddress` varchar(128) NOT NULL,
  `WorkAddress` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`PersonKey`, `Nama`, `DateofBirth`, `PlaceofBirth`, `HomeAddress`, `WorkAddress`) VALUES
(123, 'Adit TI Unaki 1', '2023-06-10', 'Tanah Mas 1', 'Tanah Mas 1', 'Tanah Mas 1'),
(12345, 'Dimas Hasim Mustofa', '2023-06-04', 'Mranggen', 'Sumberejo Sendang Delik', 'Mahasiswa Unaki'),
(12345678, 'Popeye', '2023-06-01', 'Popeye', 'Popeye', 'Popeye');

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
(11, 'Sabuk Kulit', '320000'),
(13, 'Seruling', '23000'),
(14, 'Raihan', '300');

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

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Email` varchar(128) NOT NULL,
  `PersonKey` int(11) NOT NULL,
  `Password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Email`, `PersonKey`, `Password`) VALUES
('adit@gmail.com', 123, '1234'),
('gentho@gmail.com', 12345, '1234'),
('popeye@gmail.com', 12345678, '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`PersonKey`);

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `PersonKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12345679;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_code` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
