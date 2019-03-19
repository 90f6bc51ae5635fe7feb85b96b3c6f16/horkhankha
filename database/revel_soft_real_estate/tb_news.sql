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
-- Table structure for table `tb_news`
--

CREATE TABLE `tb_news` (
  `news_id` int(11) NOT NULL,
  `news_name_th` varchar(200) NOT NULL,
  `news_name_en` varchar(200) NOT NULL,
  `news_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `news_img` text NOT NULL,
  `news_detail_th` text NOT NULL,
  `news_detail_en` text NOT NULL,
  `news_read` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_news`
--

INSERT INTO `tb_news` (`news_id`, `news_name_th`, `news_name_en`, `news_date`, `news_img`, `news_detail_th`, `news_detail_en`, `news_read`) VALUES
(22, '\"แสนสิริ\" เปิดไม่ยั้งลุยตลาดปีหมู', ' \"Sansiri\" is not open to the pig market.', '2019-03-13 03:15:22', '13032019101522-4dqpjutzluwmjzzpfgauw7jwvwuiz27ztee7ozi8vxtz.jpg', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments<br />\r\n&nbsp;', 0),
(23, 'ผนึกกำลังสร้างฝัน “บ้าน” เอเวอร์ซิตี้', ' Join forces to create the Everland Dream House', '2019-03-13 03:16:58', '13032019101658-dtbezn3nnuxytg04osx4qpvrjmtoton4p115aw0dhztrag.jpg', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments<br />\r\n&nbsp;', 0),
(24, 'ทิศทางธุรกิจอสังหาริมทรัพย์ปี 2562', 'Real estate business direction year 2019', '2019-03-13 03:18:01', '13032019101801-4dqpjutzluwmjzzpfilzjofucadxgjedpbvhifqwxp9d.jpg', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments<br />\r\n&nbsp;', 1),
(25, 'นาทีทองผู้ประกอบการอสังหาริมทรัพย์', 'Gold minute real estate entrepreneur', '2019-03-13 03:19:56', '13032019101956-4dqpjutzluwmjzzpfhixcgqsngz0c8gqudnbkmqksmo5.jpg', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments<br />\r\n&nbsp;', 0),
(26, 'เปิดมิติใหม่แห่งการใช้ชีวิต \"แสนสิริ\" วางวิสัยทัศน์สอดรับเทรนด์ Wellness โลก', ' Opening a new dimension of living \"Sansiri\", putting vision in line with the global health trend', '2019-03-13 03:21:00', '13032019102100-4dqpjutzluwmjzzpfitbooq06laixs5wnnjftfjupc25.jpg', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments<br />\r\n&nbsp;', 0),
(27, '\"นวัตกรรม\" สิ่งสำคัญในการพัฒนาเศรษฐกิจ', '\"Innovation\" important in economic development', '2019-03-13 03:21:54', '13032019102154-4dqpjutzluwmjzzpfiy3bujhn4u9oxc2h0ytjhxv09fc.jpg', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments<br />\r\n&nbsp;', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`news_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
