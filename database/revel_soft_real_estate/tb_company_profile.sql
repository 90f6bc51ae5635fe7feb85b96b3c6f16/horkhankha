-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 15, 2019 at 02:26 AM
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
(0, '', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments', '', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'วิสัยทัศน์', 'VISION', '\"ศักยภาพในการขยายและการเลื่อนตามมา\"', '\"expansion potential and subsequent shifts\"', 'หน้าที่', 'MISSION', '\"การเลื่อนที่อาจเกิดการขยายตัว\"\r\n', '\"expansion potential shifts\"', '130320191035181303201910351870400806.jpg');

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
