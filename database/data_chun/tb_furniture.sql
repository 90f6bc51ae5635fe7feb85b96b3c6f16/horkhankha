-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2019 at 03:28 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `revel_soft_real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_furniture`
--

CREATE TABLE `tb_furniture` (
  `furniture_id` int(11) NOT NULL,
  `furniture_name_th` varchar(100) NOT NULL,
  `furniture_name_en` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_furniture`
--

INSERT INTO `tb_furniture` (`furniture_id`, `furniture_name_th`, `furniture_name_en`) VALUES
(1, 'แม่ร้องไห้แทบขาดใจ ลูกชาย ม.1 คิดสั้นสิ้นใจก่อนไปสอบวันสุดท้าย', 'Mother cried almost unheard of. Son 1, short of death, before going to the final exam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_furniture`
--
ALTER TABLE `tb_furniture`
  ADD PRIMARY KEY (`furniture_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_furniture`
--
ALTER TABLE `tb_furniture`
  MODIFY `furniture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
