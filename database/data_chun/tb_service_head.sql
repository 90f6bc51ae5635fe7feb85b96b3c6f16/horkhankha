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
-- Table structure for table `tb_service_head`
--

CREATE TABLE `tb_service_head` (
  `service_head_id` int(5) NOT NULL,
  `service_head_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `service_head_sub_title_en` text COLLATE utf8_unicode_ci NOT NULL,
  `service_head_title_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `service_head_sub_title_th` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_service_head`
--

INSERT INTO `tb_service_head` (`service_head_id`, `service_head_title_en`, `service_head_sub_title_en`, `service_head_title_th`, `service_head_sub_title_th`) VALUES
(1, 'SERVICE', 'Definition of service - the action of helping or doing work for someone, a system supplying a public need such as transport, communications, or utilities.', 'บริการ', 'ให้การสนับสนุนและดูลูกค้าในการซ่อมผลิตภัณฑ์และให้คำแนะนำรวมถึงความเชื่อเหลือในด้านต่างๆ โดยช่างที่ผ่านการฝึกอบรมและได้รับประกาศนียบัตรเป็นช่างผู้ชำนาญงานของศูนย์บริการซัมซุง \n\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_service_head`
--
ALTER TABLE `tb_service_head`
  ADD PRIMARY KEY (`service_head_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_service_head`
--
ALTER TABLE `tb_service_head`
  MODIFY `service_head_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
