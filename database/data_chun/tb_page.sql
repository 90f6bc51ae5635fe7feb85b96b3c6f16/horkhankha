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
-- Table structure for table `tb_page`
--

CREATE TABLE `tb_page` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(100) NOT NULL,
  `page_title_th` varchar(100) DEFAULT NULL,
  `page_title_en` varchar(100) DEFAULT NULL,
  `page_tag_th` text,
  `page_tag_en` text,
  `page_description_th` text,
  `page_description_en` text,
  `page_image` varchar(200) NOT NULL,
  `updateby` int(11) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_page`
--

INSERT INTO `tb_page` (`page_id`, `page_name`, `page_title_th`, `page_title_en`, `page_tag_th`, `page_tag_en`, `page_description_th`, `page_description_en`, `page_image`, `updateby`, `lastupdate`) VALUES
(1, 'index', 'REALESTATE-หน้าหลัก', 'REALESTATE-HOME PAGE ', 'หน้าหลัก', 'HOME PAGE', 'หน้าหลัก', 'HOME PAGE', '', 1, '2019-03-01 16:15:51'),
(2, 'about', 'REALESTATE-เกี่ยวกับเรา', 'REALESTATE-ABOUT', 'REALESTATE-เกี่ยวกับเรา', 'REALESTATE-ABOUT', 'REALESTATE-เกี่ยวกับเรา', 'REALESTATE-ABOUT', '', 1, '2019-03-01 16:15:51'),
(3, 'service', 'REALESTATE-บริการ', 'REALESTATE-SERVICE', 'REALESTATE-บริการ', 'REALESTATE-SERVICE', 'REALESTATE-บริการ', 'REALESTATE-SERVICE', '', 1, '2019-03-01 16:15:51'),
(4, 'property', 'REALESTATE-คุณสมบัติ', 'REALESTATE-PROPERTY', 'REALESTATE-คุณสมบัติ', 'REALESTATE-PROPERTY', 'REALESTATE-คุณสมบัติ', 'REALESTATE-PROPERTY', '', 1, '2019-03-01 16:15:51'),
(5, 'news&event', 'REALESTATE-ข่าวและเหตุการณ์', 'REALESTATE-NEWS&EVENT', 'REALESTATE-ข่าวและเหตุการณ์', 'REALESTATE-NEWS&EVENT', 'REALESTATE-ข่าวและเหตุการณ์', 'REALESTATE-NEWS&EVENT', '', 1, '2019-03-01 16:15:51'),
(6, 'contact', 'REALESTATE-ติดต่อเรา', 'REALESTATE-CONTACT', 'REALESTATE-ติดต่อเรา', 'REALESTATE-CONTACT', 'REALESTATE-ติดต่อเรา', 'REALESTATE-CONTACT', '', 1, '2019-03-01 16:15:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_page`
--
ALTER TABLE `tb_page`
  ADD PRIMARY KEY (`page_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_page`
--
ALTER TABLE `tb_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
