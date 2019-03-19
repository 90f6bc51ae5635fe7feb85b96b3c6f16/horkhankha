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
-- Table structure for table `tb_company_profile`
--

CREATE TABLE `tb_company_profile` (
  `company_profile_id` int(5) NOT NULL,
  `company_profile_title_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `company_profile_sub_title_en` text COLLATE utf8_unicode_ci NOT NULL,
  `company_profile_title_th` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `company_profile_sub_title_th` text COLLATE utf8_unicode_ci NOT NULL,
  `company_profile_vision_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_profile_vision_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_profile_vision_detail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `company_profile_vision_detail_en` text COLLATE utf8_unicode_ci NOT NULL,
  `company_profile_mission_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_profile_mission_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_profile_mission_detail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `company_profile_mission_detail_en` text COLLATE utf8_unicode_ci NOT NULL,
  `company_profile_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_company_profile`
--

INSERT INTO `tb_company_profile` (`company_profile_id`, `company_profile_title_en`, `company_profile_sub_title_en`, `company_profile_title_th`, `company_profile_sub_title_th`, `company_profile_vision_th`, `company_profile_vision_en`, `company_profile_vision_detail_th`, `company_profile_vision_detail_en`, `company_profile_mission_th`, `company_profile_mission_en`, `company_profile_mission_detail_th`, `company_profile_mission_detail_en`, `company_profile_img`) VALUES
(0, 'COMPANYPROFILE', 'Penthouse apartment for sale located on Iancu Nicolae Road. Wit New Darwin suburb Muirhead &ndash; which came in at number two with 49.7% price growth &ndash; and rapidly growing new Melbourne area, Clyde North, are examples of suburbs with high development, expansion potential and subsequent shifts in supply and demand Penthouse apartment for sale located on Iancu Nicolae Road. Wit New Darwin suburb Muirhead &ndash; which came in at number two with 49.7% price growth &ndash; and rapidly growing new Melbourne area, Clyde North, are examples of suburbs with high development, expansion potential and subsequent shifts in supply and demand.&quot;', 'COMPANYPROFILE', 'เพนต์เฮาส์สำหรับขายตั้งอยู่บนถนน Iancu Nicolae ปัญญา New Darwin Muirhead ซึ่งครองอันดับ 2 ด้วยการเติบโตของราคา 49.7% และเติบโตอย่างรวดเร็ว พื้นที่เมลเบิร์นใหม่ไคลด์นอร์ ธ เป็นตัวอย่างของชานเมืองที่มีการพัฒนาสูง ศักยภาพในการขยายตัวและการเปลี่ยนแปลงที่ตามมาของอุปสงค์และอุปทานในอพาร์ทเมนท์เพนต์เฮาส์เพื่อขายตั้งอยู่บน ถนน Iancu Nicolae ปัญญา New Darwin Muirhead ซึ่งครองอันดับ 2 ด้วยการเติบโตของราคา 49.7% และเติบโตอย่างรวดเร็ว พื้นที่เมลเบิร์นใหม่ไคลด์นอร์ ธ เป็นตัวอย่างของชานเมืองที่มีการพัฒนาสูง ศักยภาพในการขยายและการเปลี่ยนแปลงของอุปสงค์และอุปทานในเวลาต่อมา&quot;', 'วิสัยทัศน์', 'VISION', 'ชื่อย่อยวิสัยทัศน์', '\"expansion potential and subsequent shifts\"', 'หน้าที่', 'MISSION', 'คำอธิบายหน้าที่', '\"expansion potential shifts\"', '26022019162311260220191623111232915682.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_company_profile`
--
ALTER TABLE `tb_company_profile`
  ADD PRIMARY KEY (`company_profile_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
