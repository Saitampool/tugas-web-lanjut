-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 05:39 PM
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
-- Table structure for table `itemmaster`
--

CREATE TABLE `itemmaster` (
  `KodeItem` varchar(11) NOT NULL,
  `NamaItem` varchar(128) NOT NULL,
  `SatuanStok` enum('picis','liter','box','kg') NOT NULL,
  `IsActive` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itemmaster`
--

INSERT INTO `itemmaster` (`KodeItem`, `NamaItem`, `SatuanStok`, `IsActive`) VALUES
('itm-1', 'Detergen', 'picis', 'Aktif'),
('itm-10', 'Garam', 'box', 'Tidak Aktif'),
('itm-11', 'Gula Pasir', 'kg', 'Aktif'),
('itm-2', 'Sabun LifeBoy', 'picis', 'Aktif'),
('itm-3', 'Aqua', 'liter', 'Aktif'),
('itm-4', 'Tisu Passeo', 'box', 'Aktif'),
('itm-5', 'Apel Jawa', 'kg', 'Aktif'),
('itm-6', 'Buku', 'box', 'Aktif'),
('itm-7', 'Sepatu Adidas', 'picis', 'Aktif'),
('itm-8', 'Sandal Swallow', 'picis', 'Aktif'),
('itm-9', 'Tepung Terigu', 'kg', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `itemqtytransaksi`
--

CREATE TABLE `itemqtytransaksi` (
  `TransaksiId` int(11) NOT NULL,
  `NoTransaksi` int(11) NOT NULL,
  `ItemId` varchar(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `ExpiredDate` date NOT NULL DEFAULT '2000-01-01',
  `BatchNumber` int(11) NOT NULL,
  `ItemQtyLocation_Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itemqtytransaksi`
--

INSERT INTO `itemqtytransaksi` (`TransaksiId`, `NoTransaksi`, `ItemId`, `Qty`, `ExpiredDate`, `BatchNumber`, `ItemQtyLocation_Balance`) VALUES
(13, 1234, 'itm-2', 55, '2023-07-14', 56675, 65);

-- --------------------------------------------------------

--
-- Table structure for table `itemqtytransaksiheader`
--

CREATE TABLE `itemqtytransaksiheader` (
  `NoTransaksi` int(11) NOT NULL,
  `TglTransaksi` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `TipeTransaksi` varchar(128) NOT NULL,
  `Keterangan` varchar(128) NOT NULL,
  `EnteredBy` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itemqtytransaksiheader`
--

INSERT INTO `itemqtytransaksiheader` (`NoTransaksi`, `TglTransaksi`, `TipeTransaksi`, `Keterangan`, `EnteredBy`) VALUES
(3, '2023-06-01 01:30:00', 'stokopname', 'stockopname', 'gentho@gmail.com'),
(1234, '2023-06-28 20:26:00', 'stokopname', 'stockopname', 'gentho@gmail.com');

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
(3344, 'Dimas', '2023-07-07', 'Demak', 'Indonesia', 'Mahasiswa'),
(54552, 'Learn', '2023-07-14', 'Demak', 'Sumberejo', 'Mahasiswa'),
(114432, 'Admin', '2023-06-25', 'Demak', 'Tanah Mas', 'Dimas 1');

-- --------------------------------------------------------

--
-- Table structure for table `stockopnamedetail`
--

CREATE TABLE `stockopnamedetail` (
  `NoLine` int(11) NOT NULL,
  `NoTransaksi` int(11) NOT NULL,
  `KodeItem` varchar(11) NOT NULL,
  `BatchNumber` int(11) NOT NULL,
  `ExpiredDate` date NOT NULL DEFAULT '2000-01-01',
  `RealStock` int(11) NOT NULL,
  `EnteredBy` varchar(128) NOT NULL,
  `EnteredDate` datetime NOT NULL DEFAULT '2000-01-01 23:59:59'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stockopnamedetail`
--

INSERT INTO `stockopnamedetail` (`NoLine`, `NoTransaksi`, `KodeItem`, `BatchNumber`, `ExpiredDate`, `RealStock`, `EnteredBy`, `EnteredDate`) VALUES
(8, 1234, 'itm-11', 34, '2023-07-06', 141, 'gentho@gmail.com', '2023-07-27 19:41:00'),
(9, 1234, 'itm-5', 111, '2023-07-13', 11, '11', '2023-07-19 17:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `stokopname`
--

CREATE TABLE `stokopname` (
  `NoTransaksi` int(11) NOT NULL,
  `Tanggal` datetime NOT NULL DEFAULT '2000-01-01 23:59:59',
  `Keterangan` varchar(128) NOT NULL,
  `EnteredBy` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stokopname`
--

INSERT INTO `stokopname` (`NoTransaksi`, `Tanggal`, `Keterangan`, `EnteredBy`) VALUES
(3, '2023-06-09 10:44:00', 'Stockopname', 'adit@gmail.com'),
(1234, '2023-06-16 19:50:00', 'Mantap', 'adit@gmail.com'),
(1235, '2023-05-01 22:45:00', 'stock', 'dimas@gmail.com');

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
('admin@gmail.com', 114432, 'admin'),
('dimas@gmail.com', 3344, '1234'),
('learn@gmail.com', 54552, 'learn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `itemmaster`
--
ALTER TABLE `itemmaster`
  ADD PRIMARY KEY (`KodeItem`);

--
-- Indexes for table `itemqtytransaksi`
--
ALTER TABLE `itemqtytransaksi`
  ADD PRIMARY KEY (`TransaksiId`),
  ADD KEY `NoTransaksi` (`NoTransaksi`) USING BTREE,
  ADD KEY `ItemId` (`ItemId`);

--
-- Indexes for table `itemqtytransaksiheader`
--
ALTER TABLE `itemqtytransaksiheader`
  ADD PRIMARY KEY (`NoTransaksi`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`PersonKey`);

--
-- Indexes for table `stockopnamedetail`
--
ALTER TABLE `stockopnamedetail`
  ADD PRIMARY KEY (`NoLine`),
  ADD KEY `NoTransaksi` (`NoTransaksi`),
  ADD KEY `KodeItem` (`KodeItem`);

--
-- Indexes for table `stokopname`
--
ALTER TABLE `stokopname`
  ADD PRIMARY KEY (`NoTransaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Email`),
  ADD KEY `PersonKey` (`PersonKey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `itemqtytransaksi`
--
ALTER TABLE `itemqtytransaksi`
  MODIFY `TransaksiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `itemqtytransaksiheader`
--
ALTER TABLE `itemqtytransaksiheader`
  MODIFY `NoTransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432322;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `PersonKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66546646;

--
-- AUTO_INCREMENT for table `stockopnamedetail`
--
ALTER TABLE `stockopnamedetail`
  MODIFY `NoLine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stokopname`
--
ALTER TABLE `stokopname`
  MODIFY `NoTransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432323;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `itemqtytransaksi`
--
ALTER TABLE `itemqtytransaksi`
  ADD CONSTRAINT `ItemId` FOREIGN KEY (`ItemId`) REFERENCES `itemmaster` (`KodeItem`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `itemqtytransaksi_ibfk_1` FOREIGN KEY (`NoTransaksi`) REFERENCES `itemqtytransaksiheader` (`NoTransaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stockopnamedetail`
--
ALTER TABLE `stockopnamedetail`
  ADD CONSTRAINT `KodeItem` FOREIGN KEY (`KodeItem`) REFERENCES `itemmaster` (`KodeItem`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `NoTransaksi` FOREIGN KEY (`NoTransaksi`) REFERENCES `stokopname` (`NoTransaksi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
