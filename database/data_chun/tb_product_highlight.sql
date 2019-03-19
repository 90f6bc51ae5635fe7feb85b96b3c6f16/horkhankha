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
-- Table structure for table `tb_product_highlight`
--

CREATE TABLE `tb_product_highlight` (
  `product_highlight_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_highlight_name_th` varchar(100) NOT NULL,
  `product_highlight_name_en` varchar(100) NOT NULL,
  `product_highlight_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_product_highlight`
--

INSERT INTO `tb_product_highlight` (`product_highlight_id`, `product_id`, `product_highlight_name_th`, `product_highlight_name_en`, `product_highlight_img`) VALUES
(26, 8, 'xxzz', 'xxxxzzzz', '11032019140235-default.png'),
(27, 8, 'x', 'zc', '11032019140235-default.png'),
(28, 9, 'xx', 'vv', '11032019140235-default.png'),
(29, 9, 'aaa', 'ddd', '11032019140235-default.png'),
(30, 10, 'cccc', 'ddddddd', '11032019140235-default.png'),
(31, 11, 'dddddd', 'vvvvvvvvv', '11032019140235-default.png'),
(32, 11, 'xxzz', 'xxxxzzzz', '11032019140235-default.png'),
(33, 12, 'x', 'zc', '11032019140235-default.png'),
(34, 12, 'xx', 'vv', '11032019140235-default.png'),
(37, 14, 'dddddd', 'vvvvvvvvv', '11032019140235-default.png'),
(38, 14, 'xxzz', 'xxxxzzzz', '11032019140235-default.png'),
(39, 15, 'x', 'zc', '11032019140235-default.png'),
(40, 15, 'xx', 'vv', '11032019140235-default.png'),
(41, 16, 'aaa', 'ddd', '11032019140235-default.png'),
(42, 16, 'cccc', 'ddddddd', '11032019140235-default.png'),
(43, 17, 'dddddd', 'vvvvvvvvv', '11032019140235-default.png'),
(44, 17, 'xxzz', 'xxxxzzzz', '11032019140235-default.png'),
(45, 18, 'x', 'zc', '11032019140235-default.png'),
(46, 18, 'xx', 'vv', '11032019140235-default.png'),
(47, 19, 'aaa', 'ddd', '11032019140235-default.png'),
(48, 19, 'cccc', 'ddddddd', '11032019140235-default.png'),
(49, 20, 'dddddd', 'vvvvvvvvv', '11032019140235-default.png'),
(50, 21, 'xxzz', 'xxxxzzzz', '11032019140235-default.png'),
(51, 22, 'x', 'zc', '11032019140235-default.png'),
(52, 23, 'xx', 'vv', '11032019140235-default.png'),
(53, 23, 'aaa', 'ddd', '11032019140235-default.png'),
(54, 24, 'cccc', 'ddddddd', '11032019140235-default.png'),
(55, 24, 'dddddd', 'vvvvvvvvv', '11032019140235-default.png'),
(56, 25, 'xxzz', 'xxxxzzzz', '11032019140235-default.png'),
(57, 25, 'x', 'zc', '11032019140235-default.png'),
(58, 26, 'xx', 'vv', '11032019140235-default.png'),
(59, 26, 'aaa', 'ddd', '11032019140235-default.png'),
(60, 27, 'cccc', 'ddddddd', '11032019140235-default.png'),
(61, 27, 'dddddd', 'vvvvvvvvv', '11032019140235-default.png'),
(62, 28, 'xxzz', 'xxxxzzzz', '11032019140235-default.png'),
(63, 28, 'x', 'zc', '11032019140235-default.png'),
(64, 29, 'xx', 'vv', '11032019140235-default.png'),
(65, 29, 'aaa', 'ddd', '11032019140235-default.png'),
(66, 30, 'cccc', 'ddddddd', '11032019140235-default.png'),
(67, 30, 'dddddd', 'vvvvvvvvv', '11032019140235-default.png'),
(68, 31, 'xxzz', 'xxxxzzzz', '11032019140235-default.png'),
(69, 31, 'x', 'zc', '11032019140235-default.png'),
(70, 32, 'xx', 'vv', '11032019140235-default.png'),
(71, 32, 'aaa', 'ddd', '11032019140235-default.png'),
(72, 33, 'cccc', 'ddddddd', '11032019140235-default.png'),
(73, 33, 'dddddd', 'vvvvvvvvv', '11032019140235-default.png'),
(74, 13, 'ว่ายน้ำ', 'swimmer', '11032019140235-default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_product_highlight`
--
ALTER TABLE `tb_product_highlight`
  ADD PRIMARY KEY (`product_highlight_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_product_highlight`
--
ALTER TABLE `tb_product_highlight`
  MODIFY `product_highlight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
