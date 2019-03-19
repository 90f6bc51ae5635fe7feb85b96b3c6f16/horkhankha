-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 15, 2019 at 02:28 AM
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
-- Table structure for table `tb_product_types`
--

CREATE TABLE `tb_product_types` (
  `product_types_id` int(11) NOT NULL,
  `product_types_name_th` varchar(200) NOT NULL,
  `product_types_name_en` varchar(200) NOT NULL,
  `product_types_img` text NOT NULL,
  `product_types_popular` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_product_types`
--

INSERT INTO `tb_product_types` (`product_types_id`, `product_types_name_th`, `product_types_name_en`, `product_types_img`, `product_types_popular`) VALUES
(10, 'คอนโดมิเนียม', 'CONDOMINIUM', '13032019095215-architecture-1359707_1920.jpg', 1),
(11, 'วิลล่า', 'VILLA', '13032019095513-detroit-1.jpg', 0),
(12, 'บ้าน', 'HOUSE', '13032019095558-566508.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_product_types`
--
ALTER TABLE `tb_product_types`
  ADD PRIMARY KEY (`product_types_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_product_types`
--
ALTER TABLE `tb_product_types`
  MODIFY `product_types_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
