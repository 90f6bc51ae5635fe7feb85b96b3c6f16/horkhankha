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
-- Table structure for table `tb_services`
--

CREATE TABLE `tb_services` (
  `services_id` int(11) NOT NULL,
  `services_name_th` varchar(200) NOT NULL,
  `services_name_en` varchar(200) NOT NULL,
  `services_img` text NOT NULL,
  `services_detail_th` text NOT NULL,
  `services_detail_en` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_services`
--

INSERT INTO `tb_services` (`services_id`, `services_name_th`, `services_name_en`, `services_img`, `services_detail_th`, `services_detail_en`) VALUES
(12, 'ผู้ขาย / ผู้ให้เช่า', 'SELLER / LESSOR', '13032019102341-seller-detial.png', 'หากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments'),
(13, 'ผู้ขาย', 'BUYER', '13032019102658-key-2323278_1920.jpg', '\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments'),
(14, 'ผู้ให้คำปรึกษา', 'ADVISOR', '13032019102646-buyer-detail.png', '\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments<br />\r\n&nbsp;');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_services`
--
ALTER TABLE `tb_services`
  ADD PRIMARY KEY (`services_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_services`
--
ALTER TABLE `tb_services`
  MODIFY `services_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
