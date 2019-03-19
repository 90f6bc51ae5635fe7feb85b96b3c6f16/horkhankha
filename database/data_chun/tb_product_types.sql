-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2019 at 03:29 AM
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
(4, 'ำกดหกดหกด', 'BBBB', '07032019162624-05032019145951-default.png', 1),
(5, 'หกดหกด', 'CCCC', '07032019162629-05032019145951-default.png', 1),
(6, 'หกดหกดหก', 'DDDD', '07032019110434-05032019145951-default.png', 1),
(7, 'กกกกกก', 'cc', '07032019162619-05032019145951-default.png', 1),
(8, 'หกดหกดหกด', '    nmbnmbbnm', '07032019110444-05032019145951-default.png', 1),
(9, 'หกดหก', 'ขข', '07032019110449-default.png', 0);

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
  MODIFY `product_types_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
