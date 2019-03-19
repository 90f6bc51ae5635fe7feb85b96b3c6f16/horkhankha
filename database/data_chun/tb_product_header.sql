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
-- Table structure for table `tb_product_header`
--

CREATE TABLE `tb_product_header` (
  `product_header_id` int(5) NOT NULL,
  `product_header_th` varchar(200) NOT NULL,
  `product_header_en` varchar(200) NOT NULL,
  `product_header_detail_th` text NOT NULL,
  `product_header_detail_en` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_product_header`
--

INSERT INTO `tb_product_header` (`product_header_id`, `product_header_th`, `product_header_en`, `product_header_detail_th`, `product_header_detail_en`) VALUES
(1, 'บีบีซี เวิลด์ นิวส์ ', ' Donald J. Trump', 'ช่องรายการถูกส่งสัญญาณโดย Red Bee Media จากสถานีหลัก ณ The Broadcast Centre ซึ่งเป็นส่วนหนึ่งของ BBC Media&nbsp;&nbsp;', 'The channel is broadcast by Red Bee Media from the main station at The Broadcast Center, which is&nbsp; nd Sundays. At 01.00 hrs.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_product_header`
--
ALTER TABLE `tb_product_header`
  ADD PRIMARY KEY (`product_header_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
