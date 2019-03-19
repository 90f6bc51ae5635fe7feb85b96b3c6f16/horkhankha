-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2019 at 03:27 AM
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
-- Table structure for table `tb_about_us`
--

CREATE TABLE `tb_about_us` (
  `about_us_id` int(5) NOT NULL,
  `about_us_title_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `about_us_sub_title_en` text COLLATE utf8_unicode_ci NOT NULL,
  `about_us_title_th` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `about_us_sub_title_th` text COLLATE utf8_unicode_ci NOT NULL,
  `about_us_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_about_us`
--

INSERT INTO `tb_about_us` (`about_us_id`, `about_us_title_en`, `about_us_sub_title_en`, `about_us_title_th`, `about_us_sub_title_th`, `about_us_img`) VALUES
(1, ' Penthouse', 'Penthouse apartment for sale located on Iancu Nicolae Road. Wit New Darwin suburb<br />\r\nMuirhead &ndash; which came in at number two with 49.7% price growth &ndash; and rapidly growing<br />\r\nnew Melbourne area, Clyde North, are examples of suburbs with high development,<br />\r\nexpansion potential and subsequent shifts in supply and demand.', 'เพนต์เฮาส์', 'เพนต์เฮาส์สำหรับขายตั้งอยู่บนถนน Iancu Nicolae ปัญญา New Darwin Muirhead ซึ่งครองอันดับ 2 ด้วยการเติบโตของราคา 49.7% และเติบโตอย่างรวดเร็ว พื้นที่เมลเบิร์นใหม่ไคลด์นอร์ ธ เป็นตัวอย่างของชานเมืองที่มีการพัฒนาสูง ศักยภาพในการขยายตัวและการเปลี่ยนแปลงที่ตามมาของอุปสงค์และอุปทาน', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_about_us`
--
ALTER TABLE `tb_about_us`
  ADD PRIMARY KEY (`about_us_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_about_us`
--
ALTER TABLE `tb_about_us`
  MODIFY `about_us_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
