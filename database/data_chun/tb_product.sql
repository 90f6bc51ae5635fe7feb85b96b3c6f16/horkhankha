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
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `product_types_id` int(11) NOT NULL,
  `furniture_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `product_name_th` varchar(200) NOT NULL,
  `product_name_en` varchar(200) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_detail_th` text NOT NULL,
  `product_detail_en` text NOT NULL,
  `product_bedroom` varchar(10) NOT NULL,
  `product_bathroom` varchar(10) NOT NULL,
  `product_latitude` varchar(100) NOT NULL,
  `product_longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `product_types_id`, `furniture_id`, `location_id`, `product_name_th`, `product_name_en`, `product_price`, `product_detail_th`, `product_detail_en`, `product_bedroom`, `product_bathroom`, `product_latitude`, `product_longitude`) VALUES
(13, 4, 1, 5, 'ฟหกฟหกฟหก', 'dasdasdassa', 2147483647, 'aaa', 'bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(14, 4, 1, 5, 'ฟหกฟหกฟหก', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(15, 8, 1, 5, 'ฟหกฟหกฟห', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(16, 4, 1, 5, 'ฟหกฟหกฟหก', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(17, 9, 1, 5, 'ฟหกฟหกฟห', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(18, 4, 1, 5, 'ฟหกฟหกฟหก', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(19, 9, 1, 5, 'ฟหกฟหกฟห', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(20, 4, 1, 5, 'ฟหกฟหกฟหกฟห', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(21, 9, 1, 5, 'ฟหกฟหกฟห', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(22, 5, 1, 5, 'ฟหกฟหกฟหกฟหกฟห', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(23, 7, 1, 5, 'ฟหกฟหกฟห', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(24, 5, 1, 5, 'ฟหกฟหกฟหก', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(25, 7, 1, 5, 'ฟหกฟหกฟห', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(26, 5, 1, 5, 'ฟหกฟหกฟหก', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '18.3170581', '99.3986862'),
(27, 7, 1, 5, 'ฟหกฟหก', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(28, 6, 1, 5, 'ฟหกฟหกฟหก', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(29, 7, 1, 5, 'ฟหกฟหก', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(30, 6, 1, 5, 'ฟหกฟหกฟหกฟหกฟหฟหกฟหก', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(31, 7, 1, 5, 'asdasdasd', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(32, 6, 1, 5, 'ฟหกฟหกฟหก', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(33, 7, 1, 5, 'asdasdasd', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(34, 7, 1, 5, 'ฟหกฟหกฟหก', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(35, 7, 1, 5, 'asdasdasd', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(36, 7, 1, 5, 'ฟหกฟหกฟหกฟห', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(37, 7, 1, 5, 'asdasdasd', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(38, 7, 1, 5, 'ฟหกฟหกฟหกฟหก', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(39, 7, 1, 5, 'asdasdasd', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(40, 7, 1, 5, 'ฟหกฟหกฟหก', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(41, 7, 1, 5, 'asdasdasd', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(42, 8, 1, 5, 'ฟหกฟหกฟหกฟหกฟห', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625'),
(43, 7, 1, 5, 'asdasdasd', 'dasdasdassa', 2147483647, ' aaa', ' bbb', '3', '3', '-0.25488177067127094', '3.9111328125'),
(44, 8, 1, 5, 'ฟหกฟหกฟหก', 'dasdasd', 0, ' asdasdas', ' dasdasd', 'asda', 'dasd', '-0.002832412718561038', '0.037937164306640625');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
