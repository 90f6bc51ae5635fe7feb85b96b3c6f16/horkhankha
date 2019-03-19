-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 13, 2019 at 10:32 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mengsen1_db`
--
CREATE DATABASE IF NOT EXISTS `mengsen1_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mengsen1_db`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_about`
--

CREATE TABLE `tb_about` (
  `about_id` int(11) NOT NULL,
  `about_title_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `about_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `about_detail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `about_detail_en` text COLLATE utf8_unicode_ci NOT NULL,
  `img_about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about_show` int(11) NOT NULL,
  `addby` int(11) NOT NULL,
  `adddate` datetime NOT NULL,
  `updateby` int(11) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_about`
--

INSERT INTO `tb_about` (`about_id`, `about_title_th`, `about_title_en`, `about_detail_th`, `about_detail_en`, `img_about`, `about_show`, `addby`, `adddate`, `updateby`, `lastupdate`) VALUES
(1, 'เกี่ยวกับเรา', 'About us', '<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<ul>\r\n	<li>บริษัทแป้งมันเม่งเส็ง ตั้งอยู่บนพื้นที่กว่า 580 ไร่ ที่ ต.ห้วยบง อ.ด่านขุนทด จ. นครราชสีมา โดยพื้นที่นี้เป็นแหล่งเพาะปลูกมันสำปะหลังสำคัญ ของจังหวัดนครราชสีมา ซึ่งมีหัวมันสดที่มีเชื้อแป้งคุณภาพดี</li>\r\n	<li>เปิดทำการเมื่อปี 2555 โดยกลุ่มผู้บริหารที่มีประสบการณ์การทำโรงงานแป้งมันสำปะหลังมาแล้วกว่า 10 ปี&nbsp;&nbsp;</li>\r\n	<li>ผลิตสินค้าที่มีคุณภาพ ตามมาตรฐานสากล อาทิเช่น ISO GMP HACCP</li>\r\n	<li>ใช้เครื่องจักรที่มีคุณภาพและมีประสิทธิภาพ โดยนำเทคโนโลยีใหม่ๆจากต่างประเทศมาใช้</li>\r\n	<li>ให้ความสำคัญกับสิ่งแวดล้อม โดยใช้โครงการผลิตก๊าซชีวภาพเพื่อใช้เป็นพลังงานทดแทนในการผลิต</li>\r\n</ul>\r\n', '<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<ul>\r\n	<li>&nbsp;Mengseng starch located at Huaybong, Nakhon Ratchasima province, with an area of 580 rai (230 acre).&nbsp;</li>\r\n	<li>Our company has established since 2012, we are specialize in producing and trading native starch and other tapioca products more than 10 years.</li>\r\n	<li>&nbsp;High Quality Native Starch with GMP, ISO and HACCP Standards.&nbsp;</li>\r\n	<li>Arrange different loading condition : the factory / the port</li>\r\n	<li>New technology and machine of production line for high quality products.</li>\r\n	<li>Place importance on clean environment by Biogas technology</li>\r\n</ul>\r\n', '18102018131022-img_0001.jpg', 1, 1, '0000-00-00 00:00:00', 1, '2018-10-18 13:56:23'),
(2, 'วิสัยทัศน์', 'Vision', '<div style=\"text-align: center;\"><br />\r\n<strong><span style=\"font-family:calibri,sans-serif; font-size:16.5pt\">&quot; </span></strong><strong><span style=\"font-family:browallia new,sans-serif; font-size:16.5pt\">คุณภาพสินค้าเป็นหนึ่ง</span></strong><strong><span style=\"font-family:calibri,sans-serif; font-size:16.5pt\"> </span></strong><br />\r\n<strong><span style=\"font-family:browallia new,sans-serif; font-size:16.5pt\">คำนึงถึงความปลอดภัย</span></strong><strong><span style=\"font-family:calibri,sans-serif; font-size:16.5pt\"> </span></strong><br />\r\n<strong><span style=\"font-family:browallia new,sans-serif; font-size:16.5pt\">ใส่ใจบริการลูกค้า<br />\r\n&nbsp; &nbsp; &nbsp;</span></strong><strong><span style=\"font-family:calibri,sans-serif; font-size:16.5pt\"> </span></strong><strong><span style=\"font-family:browallia new,sans-serif; font-size:16.5pt\">มุ่งมั่นพัฒนาองค์กร</span></strong><strong><span style=\"font-family:calibri,sans-serif; font-size:16.5pt\"> &quot;</span></strong><br />\r\n&nbsp;\r\n<div class=\"videoWrapper\"><strong><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"//www.youtube.com/embed/7UCbpIm2zqw?rel=0&amp;autoplay=1\" width=\"640\"></iframe></strong></div>\r\n</div>\r\n', '<div style=\"text-align: center;\"><br />\r\n&quot; Excellent quality<br />\r\nSafety Processes<br />\r\nCustomer Satisfaction<br />\r\nNever Stop Developing &quot;<br />\r\n&nbsp;\r\n<div class=\"videoWrapper\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"//www.youtube.com/embed/7UCbpIm2zqw?rel=0&amp;autoplay=1\" width=\"640\"></iframe></div>\r\n</div>\r\n', '18102018134140-2.jpg', 1, 1, '0000-00-00 00:00:00', 1, '2018-11-21 10:50:30'),
(3, 'บริษัทในเครือ', 'Assosiated company', '<div style=\"text-align: center;\"><span style=\"font-size:16px\"><u><strong>บริษัทครบุรีเม่งเส็งขนส่ง จำกัด</strong></u></span></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;ตั้งอยู่ที่ อ.ครบุรี จ.นครราชสีมา รับขนส่งสินค้าผลิตภัณฑ์ทางการเกษตร แป้ง น้ำตาล และอื่นๆ ทั้งในเขตกรุงเทพมหานครและต่างจังหวัด รวมไปถึงท่าเรือต่างๆ &nbsp;โดยมีประสบการณ์การดำเนินธุรกิจขนส่งมาแล้วกว่า 20 ปีดำเนินธุรกิจโดยยึดหลักความซื่อสัตย์ต่อลูกค้า คุณภาพ และความตรงต่อเวลา&nbsp;<br />\r\n<br />\r\n<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/contact/page.jpg\" style=\"float:right; height:500px; width:500px\" /></div>\r\n&nbsp;\r\n\r\n<div><br />\r\n<br />\r\n<br />\r\n<br />\r\n<u><strong>บริษัทครบุรีเม่งเส็งขนส่ง จำกัด</strong></u></div>\r\n\r\n<div>เลขที่&nbsp; 235&nbsp;&nbsp;&nbsp; ม. 8&nbsp;&nbsp;&nbsp; ต. บ้านใหม่&nbsp;&nbsp;&nbsp; อ. ครบุรี&nbsp;&nbsp;&nbsp; จ. นครราชสีมา&nbsp;&nbsp;&nbsp; 30250<br />\r\nโทร&nbsp; :&nbsp; 044-448178 , 0898459177&nbsp;<br />\r\nโทรสาร&nbsp; :&nbsp; 044-448516<br />\r\nemail: <a href=\"mailto:ms2546@hotmail.com\">ms2546@hotmail.com</a></div>\r\n\r\n<div style=\"text-align: center;\"><br />\r\n&nbsp;</div>\r\n', '<div style=\"text-align: center;\"><span style=\"font-size:16px\"><u><strong>MengsengTransport .Co, ltd.</strong></u></span></div>\r\n\r\n<ul>\r\n	<li style=\"text-align:center\">This company has been start since 1999 at Khonburi , Nakhon Ratchasima province.</li>\r\n	<li style=\"text-align:center\">More than 60 trucks are available for service.</li>\r\n	<li style=\"text-align:center\">Provider of agricultural (starch, sugar fertilizer and etc) transportation service by truck in Thailand.</li>\r\n	<li style=\"text-align:center\">Every truck is tracked by GPS system, which makes our service more accurate.<br />\r\n	<br />\r\n	<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/contact/page.jpg\" style=\"float:right; height:500px; width:500px\" /><br />\r\n	&nbsp; &nbsp; &nbsp;<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<div><u><strong>Mengseng Transport .Co, ltd.</strong></u><br />\r\n235 moo8, Banmai, Khonburi, Nakhonratchasima, 30250, Thailand<br />\r\nTel: 044-448178, 0898459177 / Fax: 044448516<br />\r\nemail: <a href=\"mailto:ms2546@hotmail.com\">ms2546@hotmail.com</a></div>\r\n', '18102018135455-kms.jpg', 1, 1, '0000-00-00 00:00:00', 1, '2019-01-15 20:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact`
--

CREATE TABLE `tb_contact` (
  `contact_id` int(11) NOT NULL,
  `contact_address_th` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_address_en` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_tel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_fax` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_line` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_qr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_lat` float(10,4) NOT NULL,
  `contact_lon` float(10,4) NOT NULL,
  `updateby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastupdate` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_contact`
--

INSERT INTO `tb_contact` (`contact_id`, `contact_address_th`, `contact_address_en`, `contact_tel`, `contact_fax`, `contact_email`, `contact_facebook`, `contact_line`, `contact_qr`, `contact_lat`, `contact_lon`, `updateby`, `lastupdate`) VALUES
(1, '																																																																																																																																																															บริษัท แป้งมันเม่งเส็ง จำกัด เลขที่ 99 หมู่ 20 ถ.ด่านขุนทด-ชัยบาดาล  ต.ห้วยบง  อ.ด่านขุนทด  จ.นครราชสีมา 30210 																																																																																																																																																																				', '																												Mengseng Starch Co.,Ltd.\r\n99 Moo 20, Huaybong, Dankhuntod, Nakhonratchasima, 30210, Thailand\r\nTel: 044-756616-8 / Fax: 044756619																																																																																																																																																													', ' 044-756616-8', '044-756619', 'info@mengseng.co.th', 'www.facebook.com/mengsengstarch', 'mengsengstarch', '18102018150620-qr line.jpg', 0.0000, 0.0000, '', '2019-01-15 21:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact_email`
--

CREATE TABLE `tb_contact_email` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_contact_email`
--

INSERT INTO `tb_contact_email` (`id`, `name`, `title`, `phone`, `detail`, `email`, `date`) VALUES
(10, 'วรายุทธ', 'ทดสอบ', 'wwww', 'ทดสอบส่งข้อความ', 'k00000ko@hotmail.com', '2018-09-10 14:44:09'),
(11, 'warayut chotwong', 'ทดสอบ test test', '0807272521', 'contact 1234 ส่งข้อความ', 'k00000ko@hotmail.com', '2018-09-10 14:46:02'),
(12, 'พิมพ์', 'สอบถามราคา', '0631499035', 'สอบถามราคาหัวมันสด และเงื่อนไขที่ทางบริษัทรับซื้อจากลานคะ', 'pimwalan.y@gmail.com', '2019-01-10 14:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `tb_content`
--

CREATE TABLE `tb_content` (
  `content_id` int(11) NOT NULL,
  `content_detail_th` text NOT NULL,
  `content_detail_en` text NOT NULL,
  `img_content` varchar(200) NOT NULL,
  `updateby` int(11) NOT NULL,
  `lastupdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_content`
--

INSERT INTO `tb_content` (`content_id`, `content_detail_th`, `content_detail_en`, `img_content`, `updateby`, `lastupdate`) VALUES
(1, '<span style=\"font-size:16px\">บริษัทแป้งมันเม่งเส็ง ได้รับการรับรองมาตรฐานสินค้า ดังต่อไปนี้</span>\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:#008000\"><u><strong>ISO 9001 (International Standard Organization):</strong></u></span>&nbsp;เป็นมาตรฐานสากลที่องค์กรธุรกิจทั่วโลกให้ความสำคัญ เพื่อความเป็นเลิศทางด้านคุณภาพ และความมีประสิทธิภาพของการดำเนินงานภายในองค์กร</span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:#008000\"><u><strong>GMP (Good Manufacturing Practice):</strong></u></span> คือ ระบบประกันคุณภาพในการผลิตอาหาร เพื่อให้มีความปลอดภัย มีคุณภาพ และเป็นที่ไว้วางใจต่อผู้บริโภค </span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:#008000\"><u><strong>HACCP (Hazard Analysis Critical Control Point):</strong></u></span> คือ ระบบการวิเคราะห์อันตรายและจุดวิกฤตที่ต้องควบคุมในการผลิตอาหาร ซึ่งจัดเป็นมาตรฐานในการส่งออกผลิตภัณฑ์ทั่วโลก เพื่อรับรองคุณภาพและความปลอดภัยของผลิตภัณฑ์อาหาร</span></li>\r\n</ul>\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/other/files/iso9001.png\" style=\"height:135px; width:165px\" />&nbsp;<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/other/images/ha.png\" style=\"height:135px; width:165px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/other/images/gmpsgs.png\" style=\"height:135px; width:165px\" />', '<span style=\"font-size:16px\">บริษัทแป้งมันเม่งเส็ง ได้รับการรับรองมาตรฐานสินค้า ดังต่อไปนี้</span>\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:rgb(0, 128, 0)\"><u><strong>ISO 9001 (International Standard Organization):</strong></u></span>&nbsp;เป็นมาตรฐานสากลที่องค์กรธุรกิจทั่วโลกให้ความสำคัญ เพื่อความเป็นเลิศทางด้านคุณภาพ และความมีประสิทธิภาพของการดำเนินงานภายในองค์กร</span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:rgb(0, 128, 0)\"><u><strong>GMP (Good Manufacturing Practice):</strong></u></span>&nbsp;คือ ระบบประกันคุณภาพในการผลิตอาหาร เพื่อให้มีความปลอดภัย มีคุณภาพ และเป็นที่ไว้วางใจต่อผู้บริโภค&nbsp;</span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:rgb(0, 128, 0)\"><u><strong>HACCP (Hazard Analysis Critical Control Point):</strong></u></span>&nbsp;คือ ระบบการวิเคราะห์อันตรายและจุดวิกฤตที่ต้องควบคุมในการผลิตอาหาร ซึ่งจัดเป็นมาตรฐานในการส่งออกผลิตภัณฑ์ทั่วโลก เพื่อรับรองคุณภาพและความปลอดภัยของผลิตภัณฑ์อาหาร</span></li>\r\n</ul>\r\n<br />\r\n<span style=\"font-size:16px\"><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/other/files/iso9001.png\" style=\"height:135px; width:165px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/other/images/ha.png\" style=\"height:135px; width:165px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/other/images/gmpsgs.png\" style=\"height:135px; width:165px\" /></span>', '30102018160727-ms1.jpg', 1, '2018-10-30 16:07:27'),
(2, '<strong><u>Product Specification:</u></strong><br />\r\n<strong>Food Grade Tapioca Starch</strong><br />\r\nColor: White<br />\r\nFineness (%): 99<br />\r\nMOISTURE:13.0% Max<br />\r\nWhiteness: 90% Min<br />\r\npH:5.0-7.0<br />\r\nSO2:&nbsp; 30 ppm Max<br />\r\nVISCOSITY:650 BU Min<br />\r\nASH: 0.2% Max<br />\r\nPulp: 0.2% Max<br />\r\nResidue: 200 ppm Max<br />\r\n&nbsp;<br />\r\n<strong>Industrial Grade Tapioca Starch</strong><br />\r\nColor: White<br />\r\nFineness (%): 99<br />\r\nMOISTURE:13.0% Max<br />\r\nWhiteness: 90% Min<br />\r\npH:5.0-7.0<br />\r\nSO2:&nbsp; 100 ppm Max<br />\r\nVISCOSITY:650 BU Min<br />\r\nASH: 0.2% Max<br />\r\nPulp: 0.2% Max<br />\r\nResidue: 200 ppm Max<br />\r\n&nbsp;', '<strong><u>Product Specification:</u></strong><br />\r\n<strong>Food Grade Tapioca Starch</strong><br />\r\nColor: White<br />\r\nFineness (%): 99<br />\r\nMOISTURE:13.0% Max<br />\r\nWhiteness: 90% Min<br />\r\npH:5.0-7.0<br />\r\nSO2:&nbsp; 30 ppm Max<br />\r\nVISCOSITY:650 BU Min<br />\r\nASH: 0.2% Max<br />\r\nPulp: 0.2% Max<br />\r\nResidue: 200 ppm Max<br />\r\n&nbsp;<br />\r\n<strong>Industrial Grade Tapioca Starch</strong><br />\r\nColor: White<br />\r\nFineness (%): 99<br />\r\nMOISTURE:13.0% Max<br />\r\nWhiteness: 90% Min<br />\r\npH:5.0-7.0<br />\r\nSO2:&nbsp; 100 ppm Max<br />\r\nVISCOSITY:650 BU Min<br />\r\nASH: 0.2% Max<br />\r\nPulp: 0.2% Max<br />\r\nResidue: 200 ppm Max', '24102018194821-2.jpg', 1, '2018-10-24 19:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `tb_img_header`
--

CREATE TABLE `tb_img_header` (
  `id` int(11) NOT NULL COMMENT '1 about 2 iso 3 news 4 product 5 contact',
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `updateby` int(11) NOT NULL,
  `lastupdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_img_header`
--

INSERT INTO `tb_img_header` (`id`, `img`, `title`, `keyword`, `description`, `updateby`, `lastupdate`) VALUES
(1, '07092018142425bg_about.png', 'เกียวกับเรา', 'about us', 'เกียวกับเรา', 1, '2018-10-30 16:42:02'),
(2, '07092018110900bg-standard1.png', 'STANDARD', 'มาตรฐาน,โรงแป้งมันมาตรฐาน,โคราช, ISO, GMP, HACCP', 'Mengseng Starch Co., Ltd. (MS Starch)', 1, '2018-10-30 16:07:27'),
(3, '07092018092215bg-news.png', 'NEWS', 'ข่าวสาร,กิจกรรม,โรงแป้งมันเม่งเส็ง', 'Mengseng Starch Co., Ltd. (MS Starch)', 1, '2018-10-18 15:02:41'),
(4, '07092018092739bg-product.png', 'PRODUCT', 'ผลิตภัณฑ์แป้ง,ผลิตภัณฑ์อาหาร,ผลิตภัณฑ์อุตสาหกรรม,สินค้าอาหาร,สินค้าอุตสาหกรรม,แป้งมันสำปะหลัง,แป้งมัน', 'Mengseng Starch Co., Ltd. (MS Starch)', 1, '2018-10-24 19:48:49'),
(5, '07092018093151bg_contact.png', 'CONTACT', 'ติดต่อ,โรงแป้งมัน,ที่อยู่โรงแป้งมัน,เม่งเส็ง,แป้งมันเม่งเส็ง,ที่อยู่,แผนที่', 'Mengseng Starch Co., Ltd. (MS Starch)', 1, '2019-01-15 21:03:39'),
(6, '2011201817371707092018110826img_1_resize.png', 'บริษัทแป้งมันเม่งเส็ง จำกัด', 'หน้าหลัก,โรงแป้งมัน,โรงแป้งมันโคราช,แป้งมันเม่งเส็ง,โรงแป้งมันมาตรฐาน,แป้งมันสำปะหลัง,มันสำปะหลัง,กากสด,กากมันสำปะหลัง', 'Mengseng Starch.Co.,Ltd. (MS Starch)', 1, '2018-11-20 17:37:17'),
(7, '15012019201218.JPG', 'บริษัทแป้งมันเม่งเส็ง จำกัด', 'หน้าหลัก,โรงแป้งมัน,โรงแป้งมันโคราช,แป้งมันเม่งเส็ง,โรงแป้งมันมาตรฐาน,แป้งมันสำปะหลัง,มันสำปะหลัง,กากสด,กากมันสำปะหลัง', 'Mengseng Starch.Co.,Ltd. (MS Starch)', 1, '2018-10-18 11:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_news`
--

CREATE TABLE `tb_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail_th` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_th` varchar(500) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `description_th` varchar(500) NOT NULL,
  `description_en` varchar(500) NOT NULL,
  `detail_en` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `view` int(10) NOT NULL,
  `ans` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updateby` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastupdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_news`
--

INSERT INTO `tb_news` (`id`, `img`, `detail_th`, `title_th`, `title_en`, `description_th`, `description_en`, `detail_en`, `view`, `ans`, `updateby`, `lastupdate`) VALUES
(8, '18102018145557S__93159508.jpg', '<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/S__93159564.jpg\" style=\"height:375px; width:500px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/S__93159651.jpg\" style=\"height:375px; width:500px\" />', 'ซ้อมป้องกันอัคคีภัย ปี2561', 'Fire Safety Training ', '', '', '<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/S__93159564.jpg\" style=\"height:375px; width:500px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/S__93159651.jpg\" style=\"height:375px; width:500px\" />', 1, '', '', '2019-01-15 21:48:42'),
(9, '11092018182749news-pic2.png', '<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/27.jpg\" style=\"height:412px; width:550px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/S__12771373.jpg\" style=\"height:533px; width:400px\" />', 'ตรวจสุขภาพประจำปี 2561', 'Check up Program', '', '', '<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/27.jpg\" style=\"height:412px; width:550px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/S__12771373.jpg\" style=\"height:533px; width:400px\" />', 1, '', '', '2019-01-15 21:47:02'),
(10, '18102018145944IMG_1510.jpg', '<div style=\"text-align: center;\"><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/IMG_1467.jpg\" style=\"height:233px; width:350px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/%E0%B8%97%E0%B8%B3%E0%B8%9A%E0%B8%B8%E0%B8%8D%E0%B8%A3%E0%B8%87.jpg\" style=\"height:233px; width:350px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/IMG_1821.jpg\" style=\"height:233px; width:350px\" /></div>\r\n', 'กิจกรรมทำบุญบริษัท', 'Company Ceremony', '', '', '<div style=\"text-align: center;\"><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/IMG_1467.jpg\" style=\"height:233px; width:350px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/%E0%B8%97%E0%B8%B3%E0%B8%9A%E0%B8%B8%E0%B8%8D%E0%B8%A3%E0%B8%87.jpg\" style=\"height:233px; width:350px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/IMG_1821.jpg\" style=\"height:233px; width:350px\" /></div>\r\n', 1, '', '', '2019-01-15 21:53:40'),
(11, '18102018150035IMG_0692.JPG', '<div style=\"text-align: center;\"><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/IMG_0740.JPG\" style=\"height:375px; width:500px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/IMG_0751.JPG\" style=\"height:375px; width:500px\" /></div>\r\n', 'เทศกาลสงกรานต์ ปี2561', 'Songkran festival 2018 ', '', '', '<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/IMG_0740.JPG\" style=\"height:375px; width:500px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/%E0%B8%81%E0%B8%B4%E0%B8%88%E0%B8%81%E0%B8%A3%E0%B8%A3%E0%B8%A1%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5/IMG_0751.JPG\" style=\"height:375px; width:500px\" />', 1, '', '', '2019-01-15 21:54:44'),
(12, '15012019195807IMG-3123.JPG', '<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/HNY/%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%9B%E0%B8%B5%E0%B9%83%E0%B8%AB%E0%B8%A1%E0%B9%88%20%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5%2062_190105_0051.jpg\" style=\"height:263px; width:350px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/HNY/IMG_8602.JPG\" style=\"height:263px; width:350px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/HNY/IMG_8719.JPG\" style=\"height:263px; width:350px\" /><br />\r\n<br />\r\n&nbsp;\r\n<div style=\"text-align: center;\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"//www.youtube.com/embed/FU2X3ZaVKwA?rel=0&amp;autoplay=1\" width=\"640\"></iframe></div>\r\n', 'สวัสดีปีใหม่ 2562', 'HAPPY NEW YEAR 2019', '', '', '<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/HNY/%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%9B%E0%B8%B5%E0%B9%83%E0%B8%AB%E0%B8%A1%E0%B9%88%20%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%9B%E0%B8%B5%2062_190105_0051.jpg\" style=\"height:262px; width:350px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/HNY/IMG_8602.JPG\" style=\"height:263px; width:350px\" /><img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/news/HNY/IMG_8719.JPG\" style=\"height:263px; width:350px\" /><br />\r\n<br />\r\n&nbsp;\r\n<div style=\"text-align: center;\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"//www.youtube.com/embed/FU2X3ZaVKwA?rel=0&amp;autoplay=1\" width=\"640\"></iframe></div>\r\n', 1, '', '', '2019-01-15 20:55:25'),
(13, '06092018142507news-list1.png', '', 'test', 'aa', 'you like on your page. I’ma great place for you to tell a story and let your users know a little more about you.This is a great space to write long text about your company and your services. You can use this space to go into a little more detail about your company. Talk about your team and what services you provide. Tell your visitors the story of how you came up with the idea for yourbusiness and what makes you different from your competitors. Make your company stand out and show your visitors ', 'Description ENyou like on your page. I’ma great place for you to tell a story and let your users know a little more about you.This is a great space to write long text about your company and your services. You can use this space to go into a little more detail about your company. Talk about your team and what services you provide. Tell your visitors the story of how you came up with the idea for yourbusiness and what makes you different from your competitors. Make your company stand out and show ', '', 0, '', '', '2018-09-06 15:43:21'),
(14, '06092018142554industail.png', 'as', 'Title TH *', 'Title EN *', 'Description THyou like on your page. I’ma great place for you to tell a story and let your users know a little more about you.This is a great space to write long text about your company and your services. You can use this space to go into a little more detail about your company. Talk about your team and what services you provide. Tell your visitors the story of how you came up with the idea for yourbusiness and what makes you different from your competitors. Make your company stand out and show ', 'you like on your page. I’ma great place for you to tell a story and let your users know a little more about you.This is a great space to write long text about your company and your services. You can use this space to go into a little more detail about your company. Talk about your team and what services you provide. Tell your visitors the story of how you came up with the idea for yourbusiness and what makes you different from your competitors. Make your company stand out and show your visitors ', 'asd', 0, '', '', '2018-09-06 15:43:13'),
(15, '06092018143604news-list3.png', 'sss', 'Title TH *', 'Title EN *', 'testDescription THyou like on your page. I’ma great place for you to tell a story and let your users know a little more about you.This is a great space to write long text about your company and your services. You can use this space to go into a little more detail about your company. Talk about your team and what services you provide. Tell your visitors the story of how you came up with the idea for yourbusiness and what makes you different from your competitors. Make your company stand out and s', 'Description THyou like on your page. I’ma great place for you to tell a story and let your users know a little more about you.This is a great space to write long text about your company and your services. You can use this space to go into a little more detail about your company. Talk about your team and what services you provide. Tell your visitors the story of how you came up with the idea for yourbusiness and what makes you different from your competitors. Make your company stand out and show ', 'ssss', 0, '', '', '2018-09-10 15:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `tb_news_gallery`
--

CREATE TABLE `tb_news_gallery` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `updateby` int(11) NOT NULL,
  `lastupdate` varchar(100) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_news_gallery`
--

INSERT INTO `tb_news_gallery` (`id`, `news_id`, `img`, `updateby`, `lastupdate`, `view`) VALUES
(1, 8, '06092018161122news-list3.png', 1, '2018-09-06 16:11:22', 1),
(2, 8, '06092018162852contact-img3.png', 1, '2018-09-06 16:28:52', 1),
(3, 1, '06092018162229slide-3.png', 0, '2018-09-06 16:22:29', 1),
(4, 1, '06092018162246slide-3.png', 0, '2018-09-06 16:22:46', 1),
(6, 0, '06092018164001gallery-3.png', 1, '2018-09-06 16:40:01', 1),
(7, 0, '06092018164008gallery-4.png', 1, '2018-09-06 16:40:08', 1),
(8, 10, '06092018164048news-pic1.png', 1, '2018-09-06 16:40:48', 1),
(9, 10, '06092018164101product1.png', 1, '2018-09-06 16:41:01', 1),
(10, 10, '06092018164109gallery-2.png', 1, '2018-09-06 16:41:09', 1),
(11, 11, '06092018164119gallery-5.png', 1, '2018-09-06 16:41:19', 1),
(12, 11, '06092018164130news-list1.png', 1, '2018-09-06 16:41:30', 1),
(13, 12, '06092018164149gallery-2.png', 1, '2018-09-06 16:41:49', 1),
(14, 12, '06092018164155gallery-3.png', 1, '2018-09-06 16:41:55', 1),
(15, 12, '06092018164201gallery-4.png', 1, '2018-09-06 16:42:01', 1),
(16, 15, '06092018164229gallery-1.png', 1, '2018-09-06 16:42:29', 1),
(17, 15, '06092018164235gallery-2.png', 1, '2018-09-06 16:42:35', 1),
(18, 15, '06092018164240gallery-3.png', 1, '2018-09-06 16:42:40', 1),
(19, 15, '06092018164246gallery-4.png', 1, '2018-09-06 16:42:46', 1),
(20, 14, '06092018164326gallery-6.png', 1, '2018-09-06 16:43:26', 1),
(21, 14, '06092018164332gallery-5.png', 1, '2018-09-06 16:43:32', 1),
(22, 13, '06092018164342gallery-2.png', 1, '2018-09-06 16:43:42', 1),
(23, 13, '06092018164346gallery-3.png', 1, '2018-09-06 16:43:46', 1),
(24, 13, '06092018164401news-pic2.png', 1, '2018-09-06 16:44:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `title_th` varchar(300) NOT NULL,
  `title_en` varchar(300) NOT NULL,
  `description_th` text NOT NULL,
  `description_en` text NOT NULL,
  `keyword_th` varchar(200) NOT NULL,
  `keyword_en` varchar(200) NOT NULL,
  `img` varchar(255) NOT NULL,
  `detail_th` text NOT NULL,
  `detail_en` text NOT NULL,
  `view` int(10) NOT NULL,
  `ans` varchar(255) NOT NULL,
  `updateby` varchar(20) NOT NULL,
  `lastupdate` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`id`, `type_id`, `title_th`, `title_en`, `description_th`, `description_en`, `keyword_th`, `keyword_en`, `img`, `detail_th`, `detail_en`, `view`, `ans`, `updateby`, `lastupdate`) VALUES
(17, 2, 'แป้งมันสำปะหลังสำหรับอุตสาหกรรม', 'Industrial Grade Tapioca Starch', 'industrial', 'industrial', 'แป้งสำหรับอุตสาหกรรม,แป้งมันสำปะหลัง,มันสำปะหลัง,อุตสาหกรรมกระดาษ,อุตสาหกรรมสิ่งทอ,กาว,กระดาษ', 'industrial,starch,drug,sorbital,syrup,tapioca,tapioca starch,cassava starch,paper,glue', '30102018161256.jpg', '<p style=\"text-align:center\"><strong>Industrial Grade Tapioca Starch</strong></p>\r\n\r\n<p style=\"text-align: center;\"><strong>Color</strong>: White<br />\r\n<strong>Fineness </strong>(%): 99<br />\r\n<strong>MOISTURE</strong>: 13.0% Max<br />\r\n<strong>Whiteness</strong>: 90% Min<br />\r\n<strong>pH</strong>: 5.0-7.0<br />\r\n<strong>SO2</strong>:&nbsp; 100 ppm Max<br />\r\n<strong>VISCOSITY</strong>: 650 BU Min<br />\r\n<strong>ASH</strong>: 0.2% Max<br />\r\n<strong>Pulp</strong>: 0.2% Max<br />\r\n<strong>Residue</strong>: 200 ppm Max</p>\r\n\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<img alt=\"paper\" class=\"img-material\" src=\"http://www.mengseng.co.th/img_upload/other/images/other/images/%E0%B8%81%E0%B8%A3%E0%B8%B0%E0%B8%94%E0%B8%B2%E0%B8%A92.png\" style=\"height:173px; width:300px\" /><br />\r\n<br />\r\n<img alt=\"\" class=\"img-material\" src=\"http://www.mengseng.co.th/img_upload/other/images/other/images/%E0%B8%81%E0%B8%A3%E0%B8%B0%E0%B8%94%E0%B8%B2%E0%B8%A9.jpg\" style=\"height:200px; width:300px\" /><br />\r\n<br />\r\n<img alt=\"\" class=\"img-material\" src=\"http://www.mengseng.co.th/img_upload/other/images/other/images/%E0%B8%AA%E0%B8%B4%E0%B9%88%E0%B8%87%E0%B8%97%E0%B8%AD2.jpg\" style=\"height:182px; width:300px\" /></p>\r\n', '<p style=\"text-align:center\">Model Number: <strong>Industrial Grade Tapioca Starch</strong></p>\r\n\r\n<p style=\"text-align: center;\"><strong>Color</strong>: White<br />\r\n<strong>Fineness </strong>(%): 99<br />\r\n<strong>MOISTURE</strong>: 13.0% Max<br />\r\n<strong>Whiteness</strong>: 90% Min<br />\r\n<strong>pH</strong>: 5.0-7.0<br />\r\n<strong>SO2</strong>:&nbsp; 100 ppm Max<br />\r\n<strong>VISCOSITY</strong>: 650 BU Min<br />\r\n<strong>ASH</strong>: 0.2% Max<br />\r\n<strong>Pulp</strong>: 0.2% Max<br />\r\n<strong>Residue</strong>: 200 ppm Max</p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"img-material\" src=\"http://www.mengseng.co.th/img_upload/other/images/other/images/%E0%B8%81%E0%B8%A3%E0%B8%B0%E0%B8%94%E0%B8%B2%E0%B8%A92.png\" style=\"height:173px; width:300px\" /><br />\r\n<br />\r\n<img alt=\"\" class=\"img-material\" src=\"http://www.mengseng.co.th/img_upload/other/images/other/images/%E0%B8%81%E0%B8%A3%E0%B8%B0%E0%B8%94%E0%B8%B2%E0%B8%A9.jpg\" style=\"height:200px; width:300px\" /><br />\r\n<br />\r\n<img alt=\"\" class=\"img-material\" src=\"http://www.mengseng.co.th/img_upload/other/images/other/images/%E0%B8%AA%E0%B8%B4%E0%B9%88%E0%B8%87%E0%B8%97%E0%B8%AD2.jpg\" style=\"height:242px; width:300px\" /></p>\r\n', 1, '', '', '2018-11-22 10:55:18'),
(16, 1, 'แป้งมันสำปะหลังสำหรับอุตสาหกรรมอาหาร', 'Food Grade Tapioca Starch', 'food', 'food', 'อาหาร,แป้งสำหรับอุตสาหกรรมอาหาร,แป้งมันสำปะหลัง,เส้นมาม่า,สารให้ความหวาน,ยา,มันสำปะหลัง', 'food,noodle,starch,drug,sorbital,syrup,tapioca,tapioca starch,cassava starch', '22112018132014.jpg', '<div style=\"text-align: center;\">แป้งมันสำปะหลังสามารถนำไปใช้ในอุตสาหกรรมด้านอาหารได้หลากหลายประเภท เช่น อุตสาหกรรมอาหาร และเครื่องดื่ม, อุตสาหกรรมยา, อุตสาหกรรมเกี่ยวกับสารให้ความหวาน, อุตสาหกรรมผลิตผงชูรส, อุตสาหกรรมเบียร์ เป็นต้น&nbsp; เนื่องจากแป้งมันสำปะหลัง มีคุณสมบัติในเรื่องความเหนียว ความมันวาว ความติดแน่นและการคงรูปร่าง ทั้งหมดนี้เราจึงสามารถนำคุณสมบัติของแป้งมันสำปะหลัง ไปใช้เป็นส่วนประกอบของอุตสาหกรรมต่างๆได้มากมาย<br />\r\n<br />\r\n<br />\r\n<strong><u><span style=\"color:#008000\">Product Specification:</span></u></strong><br />\r\n<span style=\"color:#008000\"><strong>Food Grade Tapioca Starch</strong></span></div>\r\n\r\n<div style=\"text-align: center;\"><strong>Color:</strong> White<br />\r\n<strong>Fineness (%): </strong>99<br />\r\n<strong>MOISTURE:</strong>13.0% Max<br />\r\n<strong>Whiteness: </strong>90% Min<br />\r\n<strong>pH:</strong>5.0-7.0<br />\r\n<strong>SO2:&nbsp;</strong> 30 ppm Max<br />\r\n<strong>VISCOSITY:</strong>650 BU Min<br />\r\n<strong>ASH: </strong>0.2% Max<br />\r\n<strong>Pulp:</strong> 0.2% Max<br />\r\n<strong>Residue: </strong>200 ppm Max</div>\r\n\r\n<div style=\"text-align: center;\"><br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/content/food%20page.jpg\" style=\"height:781px; width:800px\" /></div>\r\n', '<div style=\"text-align: center;\">แป้งมันสำปะหลังสามารถนำไปใช้ในอุตสาหกรรมด้านอาหารได้หลากหลายประเภท เช่น อุตสาหกรรมอาหาร และเครื่องดื่ม, อุตสาหกรรมยา, อุตสาหกรรมเกี่ยวกับสารให้ความหวาน, อุตสาหกรรมผลิตผงชูรส, อุตสาหกรรมเบียร์ เป็นต้น&nbsp; เนื่องจากแป้งมันสำปะหลัง มีคุณสมบัติในเรื่องความเหนียว ความมันวาว ความติดแน่นและการคงรูปร่าง ทั้งหมดนี้เราจึงสามารถนำคุณสมบัติของแป้งมันสำปะหลัง ไปใช้เป็นส่วนประกอบของอุตสาหกรรมต่างๆได้มากมาย<br />\r\n<br />\r\n<strong><u><span style=\"color:#008000\">Product Specification:</span></u></strong><br />\r\n<span style=\"color:#008000\"><strong>Food Grade Tapioca Starch</strong></span></div>\r\n\r\n<div style=\"text-align: center;\"><strong>Color:</strong> White<br />\r\n<strong>Fineness (%):</strong> 99<br />\r\n<strong>MOISTURE:</strong>13.0% Max<br />\r\n<strong>Whiteness:</strong> 90% Min<br />\r\n<strong>pH:</strong>5.0-7.0<br />\r\n<strong>SO2:</strong>&nbsp; 30 ppm Max<br />\r\n<strong>VISCOSITY:</strong>650 BU Min<br />\r\n<strong>ASH:</strong> 0.2% Max<br />\r\n<strong>Pulp:</strong> 0.2% Max<br />\r\n<strong>Residue:</strong> 200 ppm Max</div>\r\n\r\n<div style=\"text-align: center;\"><br />\r\n<br />\r\n<img alt=\"\" src=\"http://www.mengseng.co.th/img_upload/other/images/content/food%20page.jpg\" style=\"height:781px; width:800px\" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</div>\r\n', 1, '', '', '2018-11-22 13:28:59');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_type`
--

CREATE TABLE `tb_product_type` (
  `product_type_id` int(11) NOT NULL,
  `product_type_name_th` varchar(255) NOT NULL,
  `product_type_name_en` varchar(255) NOT NULL,
  `description_th` text NOT NULL,
  `description_en` text NOT NULL,
  `product_type_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_product_type`
--

INSERT INTO `tb_product_type` (`product_type_id`, `product_type_name_th`, `product_type_name_en`, `description_th`, `description_en`, `product_type_img`) VALUES
(1, 'อาหาร', 'food ', 'แป้งมันสำปะหลังสามารถนำไปใช้ในอุตสาหกรรมด้านอาหารได้หลากหลายประเภท เช่น อุตสาหกรรมอาหาร และเครื่องดื่ม, อุตสาหกรรมยา, อุตสาหกรรมเกี่ยวกับสารให้ความหวาน, อุตสาหกรรมผลิตผงชูรส, อุตสาหกรรมเบียร์ เป็นต้น  เนื่องจากแป้งมันสำปะหลัง มีคุณสมบัติในเรื่องความเหนียว ความมันวาว ความติดแน่นและการคงรูปร่าง ทั้งหมดนี้เราจึงสามารถนำคุณสมบัติของแป้งมันสำปะหลัง ไปใช้เป็นส่วนประกอบของอุตสาหกรรมต่างๆได้มากมาย', ' Due to characteristics of starch for increase strengthening, add viscosity, and concentration.\r\nTapioca starch is used as a raw material for products in number of industries such as: Food and beverage industries: Bread, noodles, Sweetener industries, MSG and lysine industries, Medical industry', '25102018154727-hleba.jpg'),
(2, 'อุตสาหกรรม', 'industrial', 'แป้งมันสำปะหลังสามารถนำไปใช้ในอุตสาหกรรมได้หลากหลายประเภท เช่น อุตสาหกรรมกระดาษ, อุตสาหกรรมกาว, อุตสาหกรรมการทอผ้า อุตสาหกรรมไม้อัด เป็นต้น โดยใช้คุณสมบัติหลักๆ ในเรื่องความ เหนียว ความมันวาว ความติดแน่นและการคงรูปร่าง', 'Due to characteristics of starch for increase strengthening, add viscosity, and concentration.\r\nTapioca starch is used as a raw material for products in number of industries such as: Paper industry, Glue industry, Textile industry, Plywood industry', '25102018154727-f0000.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_project`
--

CREATE TABLE `tb_project` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `title_th` varchar(300) NOT NULL,
  `title_en` varchar(300) NOT NULL,
  `description_th` varchar(300) NOT NULL,
  `description_en` varchar(300) NOT NULL,
  `keyword_th` varchar(200) NOT NULL,
  `keyword_en` varchar(200) NOT NULL,
  `img` varchar(255) NOT NULL,
  `detail_th` text NOT NULL,
  `detail_en` text NOT NULL,
  `view` int(10) NOT NULL,
  `ans` varchar(255) NOT NULL,
  `updateby` varchar(20) NOT NULL,
  `lastupdate` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_project`
--

INSERT INTO `tb_project` (`id`, `type`, `title_th`, `title_en`, `description_th`, `description_en`, `keyword_th`, `keyword_en`, `img`, `detail_th`, `detail_en`, `view`, `ans`, `updateby`, `lastupdate`) VALUES
(8, 1, 'th', 'en', 'en', 'en', 'keyth', 'keyen', '040520181503091.PNG', 'detail th', 'detail en', 1, '', '', '2018-05-04 15:42:28'),
(9, 2, 'th', 'en', 'en', 'en', 'keyth', 'keyen', '040520181501512.PNG', 'detail th', 'detail en', 1, '', '', '2018-05-04 15:01:51'),
(10, 3, 'th', 'en', 'en', 'en', 'keyth', 'keyen', '040520181502043.PNG', 'detail th', 'detail en', 1, '', '', '2018-05-04 15:02:04'),
(11, 4, 'th', 'en', 'en', 'en', 'keyth', 'keyen', '040520181502184.PNG', 'detail th', 'detail en', 1, '', '', '2018-05-04 15:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_project_type`
--

CREATE TABLE `tb_project_type` (
  `id` int(11) NOT NULL,
  `title_th` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `view` int(11) NOT NULL,
  `updateby` int(11) NOT NULL,
  `lastupdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_project_type`
--

INSERT INTO `tb_project_type` (`id`, `title_th`, `title_en`, `img`, `view`, `updateby`, `lastupdate`) VALUES
(1, 'Cutting tools', 'Cutting tools', '', 1, 1, ''),
(2, 'Supply tools', 'Supply tools', '', 1, 1, ''),
(3, 'Special tools', 'Special tools', '', 1, 1, ''),
(4, 'Tool management', 'Tool management', '', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_seo_setting`
--

CREATE TABLE `tb_seo_setting` (
  `seo_id` int(10) NOT NULL,
  `seo_page_name` varchar(50) NOT NULL,
  `seo_title_th` text NOT NULL,
  `seo_title_en` text NOT NULL,
  `seo_key_th` text NOT NULL,
  `seo_key_en` text NOT NULL,
  `seo_descript_th` text NOT NULL,
  `seo_descript_en` text NOT NULL,
  `seo_image` text NOT NULL,
  `seo_logo` varchar(600) NOT NULL,
  `add_by` varchar(50) NOT NULL,
  `add_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_seo_setting`
--

INSERT INTO `tb_seo_setting` (`seo_id`, `seo_page_name`, `seo_title_th`, `seo_title_en`, `seo_key_th`, `seo_key_en`, `seo_descript_th`, `seo_descript_en`, `seo_image`, `seo_logo`, `add_by`, `add_date`) VALUES
(1, 'HOME', 'บริษัท ทูล เมเนจเมนท์ จำกัด', 'TOOL MANAGEMENT CO.,LTD.', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'บริษัท ทูล เมเนจเมนท์ จำกัด ประกอบกิจการประเภทการขายส่งเครื่องจักรและอุปกรณ์เพื่อใช้ในงานอุตสาหกรรม สถานะปัจจุบันยังดำเนินกิจการอยู่ ', 'Tooling Management Co., Ltd. is engaged in wholesale business of machinery and equipment for industrial use. The current status is also ongoing.', 'img_upload/img_title/07022018110953-logo.png', 'img_upload/img_title/07022018110953-2logo.png', '2', '07-02-2018 11:09:53'),
(2, 'ABOUT', 'เกี่ยวกับเรา : บริษัท ทูล เมเนจเมนท์ จำกัด', 'ABOUT US : TOOL MANAGEMENT CO.,LTD.', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'บริษัท ทูล เมเนจเมนท์ จำกัด ประกอบกิจการประเภทการขายส่งเครื่องจักรและอุปกรณ์เพื่อใช้ในงานอุตสาหกรรม สถานะปัจจุบันยังดำเนินกิจการอยู่ ', 'Tooling Management Co., Ltd. is engaged in wholesale business of machinery and equipment for industrial use. The current status is also ongoing.', 'img_upload/img_title/13012018203915-11.png', '', '1', '13-01-2018 20:39:15'),
(3, 'PRODUCT', 'สินค้าของเรา : บริษัท ทูล เมเนจเมนท์ จำกัด', 'Our Product : TOOL MANAGEMENT CO.,LTD.', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'บริษัท ทูล เมเนจเมนท์ จำกัด ประกอบกิจการประเภทการขายส่งเครื่องจักรและอุปกรณ์เพื่อใช้ในงานอุตสาหกรรม สถานะปัจจุบันยังดำเนินกิจการอยู่ ', 'Tooling Management Co., Ltd. is engaged in wholesale business of machinery and equipment for industrial use. The current status is also ongoing.', 'img_upload/img_title/13012018204243-11.png', '', '1', '13-01-2018 20:42:43'),
(4, 'SERVICE', 'บริการของเรา : บริษัท ทูล เมเนจเมนท์ จำกัด', 'SERVICE : TOOL MANAGEMENT CO.,LTD.', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'บริษัท ทูล เมเนจเมนท์ จำกัด ประกอบกิจการประเภทการขายส่งเครื่องจักรและอุปกรณ์เพื่อใช้ในงานอุตสาหกรรม สถานะปัจจุบันยังดำเนินกิจการอยู่ ', 'Tooling Management Co., Ltd. is engaged in wholesale business of machinery and equipment for industrial use. The current status is also ongoing.', 'img_upload/img_title/13012018204340-11.png', '', '1', '13-01-2018 20:43:40'),
(5, 'CATALOGUE', 'CATALOGUE : บริษัท ทูล เมเนจเมนท์ จำกัด', 'CATALOGUE :  TOOL MANAGEMENT CO.,LTD.', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'บริษัท ทูล เมเนจเมนท์ จำกัด ประกอบกิจการประเภทการขายส่งเครื่องจักรและอุปกรณ์เพื่อใช้ในงานอุตสาหกรรม สถานะปัจจุบันยังดำเนินกิจการอยู่ ', 'Tooling Management Co., Ltd. is engaged in wholesale business of machinery and equipment for industrial use. The current status is also ongoing.', 'img_upload/img_title/13012018204426-11.png', '', '1', '13-01-2018 20:44:26'),
(6, 'INNOVATION', 'ผลงานของเรา : บริษัท ทูล เมเนจเมนท์ จำกัด', 'PORTFOLIO : TOOL MANAGEMENT CO.,LTD.', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'บริษัท ทูล เมเนจเมนท์ จำกัด ประกอบกิจการประเภทการขายส่งเครื่องจักรและอุปกรณ์เพื่อใช้ในงานอุตสาหกรรม สถานะปัจจุบันยังดำเนินกิจการอยู่ ', 'Tooling Management Co., Ltd. is engaged in wholesale business of machinery and equipment for industrial use. The current status is also ongoing.', 'img_upload/img_title/13012018204515-11.png', '', '1', '13-01-2018 20:45:15'),
(7, 'ACTIVITY', 'ข่าวสาร : บริษัท ทูล เมเนจเมนท์ จำกัด', 'NEWS : TOOL MANAGEMENT CO.,LTD.', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'บริษัท ทูล เมเนจเมนท์ จำกัด ประกอบกิจการประเภทการขายส่งเครื่องจักรและอุปกรณ์เพื่อใช้ในงานอุตสาหกรรม สถานะปัจจุบันยังดำเนินกิจการอยู่ ', 'Tooling Management Co., Ltd. is engaged in wholesale business of machinery and equipment for industrial use. The current status is also ongoing.', 'img_upload/img_title/13012018204604-11.png', '', '1', '13-01-2018 20:46:04'),
(8, 'CONTACT', 'ติดต่อสอบถาม : บริษัท ทูล เมเนจเมนท์ จำกัด', 'CONTACT US : TOOL MANAGEMENT CO.,LTD.', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'บริษัท ทูล เมเนจเมนท์ จำกัด ประกอบกิจการประเภทการขายส่งเครื่องจักรและอุปกรณ์เพื่อใช้ในงานอุตสาหกรรม สถานะปัจจุบันยังดำเนินกิจการอยู่ ', 'Tooling Management Co., Ltd. is engaged in wholesale business of machinery and equipment for industrial use. The current status is also ongoing.', 'img_upload/img_title/13012018210332-11.png', '', '1', '13-01-2018 21:03:32'),
(9, 'PROJECT', 'ติดต่อสอบถาม : บริษัท ทูล เมเนจเมนท์ จำกัด', 'CONTACT US : TOOL MANAGEMENT CO.,LTD.', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'บริษัท ทูล เมเนจเมนท์ จำกัด ประกอบกิจการประเภทการขายส่งเครื่องจักรและอุปกรณ์เพื่อใช้ในงานอุตสาหกรรม สถานะปัจจุบันยังดำเนินกิจการอยู่ ', 'Tooling Management Co., Ltd. is engaged in wholesale business of machinery and equipment for industrial use. The current status is also ongoing.', 'img_upload/img_title/13012018210332-11.png', '', '1', '13-01-2018 21:03:32'),
(10, 'CAREER', 'ติดต่อสอบถาม : บริษัท ทูล เมเนจเมนท์ จำกัด', 'CONTACT US : TOOL MANAGEMENT CO.,LTD.', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'บริษัท ทูล เมเนจเมนท์ จำกัด ประกอบกิจการประเภทการขายส่งเครื่องจักรและอุปกรณ์เพื่อใช้ในงานอุตสาหกรรม สถานะปัจจุบันยังดำเนินกิจการอยู่ ', 'Tooling Management Co., Ltd. is engaged in wholesale business of machinery and equipment for industrial use. The current status is also ongoing.', 'img_upload/img_title/13012018210332-11.png', '', '1', '13-01-2018 21:03:32'),
(11, 'CSR', 'ติดต่อสอบถาม : บริษัท ทูล เมเนจเมนท์ จำกัด', 'CONTACT US : TOOL MANAGEMENT CO.,LTD.', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'ทูล เมเนจเมนท์,TOOL MANAGEMENT,บริษัท ทูล เมเนจเมนท์ จำกัด', 'บริษัท ทูล เมเนจเมนท์ จำกัด ประกอบกิจการประเภทการขายส่งเครื่องจักรและอุปกรณ์เพื่อใช้ในงานอุตสาหกรรม สถานะปัจจุบันยังดำเนินกิจการอยู่ ', 'Tooling Management Co., Ltd. is engaged in wholesale business of machinery and equipment for industrial use. The current status is also ongoing.', 'img_upload/img_title/13012018210332-11.png', '', '1', '13-01-2018 21:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `tb_slide`
--

CREATE TABLE `tb_slide` (
  `id` int(11) NOT NULL,
  `slide_type` int(11) NOT NULL,
  `img` varchar(400) NOT NULL,
  `title_th` varchar(300) NOT NULL,
  `title_en` varchar(300) NOT NULL,
  `detail_th` text NOT NULL,
  `detail_en` text NOT NULL,
  `slide_order` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `lastupdate` varchar(100) NOT NULL,
  `updateby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_slide`
--

INSERT INTO `tb_slide` (`id`, `slide_type`, `img`, `title_th`, `title_en`, `detail_th`, `detail_en`, `slide_order`, `view`, `lastupdate`, `updateby`) VALUES
(30, 1, '07092018114652slide-1.png', '', '', '', '', 1, 1, '2018-09-07 11:46:52', 1),
(31, 1, '07092018114659slide-2.png', '', '', '', '', 2, 1, '2018-09-07 11:46:59', 1),
(32, 2, '07092018135747slide-3.png', '', '', '', '', 1, 1, '2018-09-07 13:57:47', 1),
(34, 2, '07092018135802slide-5.png', '', '', '', '', 2, 1, '2018-09-07 13:58:02', 1),
(38, 2, '30102018161720.jpg', '', '', '', '', 3, 1, '2018-10-30 16:17:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `userType` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `login_site` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastupdate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastconnect` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updateby` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `userType`, `username`, `password`, `name`, `email`, `telephone`, `active`, `login_site`, `lastupdate`, `lastconnect`, `updateby`) VALUES
(1, '1', 'admin', '123456', 'santisook daowdon', 'mr.jeck.ryo@gmail.com', '0610243337', 0, '', '14-08-2015 12:12:09', '25/05/2018 3:10:57', 'admin'),
(2, '1', 'admin', 'admin1', 'Warayut chotowong', 'k00000ko@hotmail.com', '0807272521', 0, '', '2018-05-02 10:24:51', '', '1'),
(7, '1', 'thana', 'thana', 'thana thepchooleepornsil', 'boong_kak@hotmail.com', '0610243337', 0, '20120119091427376373', '25-04-2015 19:35:59', '10/01/2017 13:56:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_type`
--

CREATE TABLE `tb_user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type_name` varchar(255) NOT NULL,
  `user_type_add` int(11) NOT NULL,
  `user_type_edit` int(11) NOT NULL,
  `user_type_delete` int(11) NOT NULL,
  `addby` int(11) NOT NULL,
  `date_add` varchar(255) NOT NULL,
  `editby` int(11) NOT NULL,
  `date_edit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user_type`
--

INSERT INTO `tb_user_type` (`user_type_id`, `user_type_name`, `user_type_add`, `user_type_edit`, `user_type_delete`, `addby`, `date_add`, `editby`, `date_edit`) VALUES
(1, 'admin', 1, 1, 1, 1, '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_about`
--
ALTER TABLE `tb_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tb_contact_email`
--
ALTER TABLE `tb_contact_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_content`
--
ALTER TABLE `tb_content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `tb_img_header`
--
ALTER TABLE `tb_img_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_news_gallery`
--
ALTER TABLE `tb_news_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product_type`
--
ALTER TABLE `tb_product_type`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `tb_project`
--
ALTER TABLE `tb_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_project_type`
--
ALTER TABLE `tb_project_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_seo_setting`
--
ALTER TABLE `tb_seo_setting`
  ADD PRIMARY KEY (`seo_id`);

--
-- Indexes for table `tb_slide`
--
ALTER TABLE `tb_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_user_type`
--
ALTER TABLE `tb_user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_about`
--
ALTER TABLE `tb_about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_contact_email`
--
ALTER TABLE `tb_contact_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_content`
--
ALTER TABLE `tb_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_news_gallery`
--
ALTER TABLE `tb_news_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tb_product_type`
--
ALTER TABLE `tb_product_type`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_project`
--
ALTER TABLE `tb_project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tb_project_type`
--
ALTER TABLE `tb_project_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_seo_setting`
--
ALTER TABLE `tb_seo_setting`
  MODIFY `seo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_slide`
--
ALTER TABLE `tb_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_user_type`
--
ALTER TABLE `tb_user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `revel_soft_real_estate`
--
CREATE DATABASE IF NOT EXISTS `revel_soft_real_estate` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `revel_soft_real_estate`;

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
(1, ' The agent acts as an intermediary between companies that want to find people to ', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments', ' ตัวแทนทำหน้าที่เป็นตัวกลางระหว่าง บริษัท', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_agent`
--

CREATE TABLE `tb_agent` (
  `agent_id` int(5) NOT NULL,
  `agent_name_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `agent_name_th` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `agent_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `agent_detail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `agent_detail_en` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_agent`
--

INSERT INTO `tb_agent` (`agent_id`, `agent_name_en`, `agent_name_th`, `agent_img`, `agent_detail_th`, `agent_detail_en`) VALUES
(8, 'Mr.Somchai Khangpemon', 'คุณ สมชาย เข่งพิมล', '13032019103843130320191038431760696799.png', 'หากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments\r\n'),
(9, 'Mr.Somchai Khangpemon', 'คุณ สมชาย เข่งพิมล', '13032019103926130320191039261630765927.png', 'หากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_agent_head`
--

CREATE TABLE `tb_agent_head` (
  `agent_head_id` int(5) NOT NULL,
  `agent_head_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `agent_head_sub_title_en` text COLLATE utf8_unicode_ci NOT NULL,
  `agent_head_title_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `agent_head_sub_title_th` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_agent_head`
--

INSERT INTO `tb_agent_head` (`agent_head_id`, `agent_head_title_en`, `agent_head_sub_title_en`, `agent_head_title_th`, `agent_head_sub_title_th`) VALUES
(1, 'FACILITIES', 'dasdasdasdasdsasdasdasd', 'สิ่งอำนวยความสะดวก', 'asdasdasasdasdasdasdasd');

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

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact`
--

CREATE TABLE `tb_contact` (
  `contact_id` int(5) NOT NULL,
  `contact_title_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_tel` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contact_country` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `contact_type_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact_head`
--

CREATE TABLE `tb_contact_head` (
  `contact_head_id` int(5) NOT NULL,
  `contact_head_detail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_head_detail_en` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_contact_head`
--

INSERT INTO `tb_contact_head` (`contact_head_id`, `contact_head_detail_th`, `contact_head_detail_en`) VALUES
(1, 'sdfsdf', 'easfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact_title`
--

CREATE TABLE `tb_contact_title` (
  `contact_title_id` int(5) NOT NULL,
  `contact_title_name_th` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `contact_title_name_en` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_contact_title`
--

INSERT INTO `tb_contact_title` (`contact_title_id`, `contact_title_name_th`, `contact_title_name_en`) VALUES
(3, 'การเดินทาง', 'travel'),
(4, 'โปรโมชั่น', ' Promotion'),
(5, 'ผู้ให้คำปรึกษา', 'advisor');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact_type`
--

CREATE TABLE `tb_contact_type` (
  `contact_type_id` int(5) NOT NULL,
  `contact_type_name_th` varchar(200) NOT NULL,
  `contact_type_name_en` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_contact_type`
--

INSERT INTO `tb_contact_type` (`contact_type_id`, `contact_type_name_th`, `contact_type_name_en`) VALUES
(3, 'น้อย', 'medium'),
(4, 'ด่วน', 'express'),
(5, 'ไม่ด่วน', 'Not quick');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact_us`
--

CREATE TABLE `tb_contact_us` (
  `contact_us_id` int(5) NOT NULL,
  `contact_us_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_title_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_sub_title_en` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_sub_title_th` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_tel` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_en` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_th` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_1_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_1_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_2_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_2_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_3_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_3_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_contact_us`
--

INSERT INTO `tb_contact_us` (`contact_us_id`, `contact_us_title_en`, `contact_us_title_th`, `contact_us_sub_title_en`, `contact_us_sub_title_th`, `contact_us_facebook`, `contact_us_tel`, `contact_us_address_en`, `contact_us_address_th`, `contact_us_address_1_en`, `contact_us_address_1_th`, `contact_us_address_2_en`, `contact_us_address_2_th`, `contact_us_address_3_en`, `contact_us_address_3_th`, `contact_us_address_4`, `contact_us_fax`, `contact_us_email`) VALUES
(8, 'CONTACT REALESTATE', 'CONTACT REALESTATE', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentati', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่', 'https://www.facebook.com/real', '089-652-5147', '606/13 SOI EKAMAI 28', '606/13 ซอยเอกมัย 28', 'sukumvit 63 rd', 'ถนนสุขุมวิท 63', ' Klongton nua', 'คลองตันเหนือ', 'Wattana mangkok', 'วัฒนามะม่วง', '10110 ', '029-652-5147', 'REALESTATE@GMAILCOM');

-- --------------------------------------------------------

--
-- Table structure for table `tb_country`
--

CREATE TABLE `tb_country` (
  `ct_code` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสประเทศ',
  `ct_nameENG` varchar(200) NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `ct_nameTHA` varchar(200) NOT NULL COMMENT 'ชื่อภาษาไทย',
  `code` char(2) NOT NULL COMMENT 'ชื่อย่อ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_country`
--

INSERT INTO `tb_country` (`ct_code`, `ct_nameENG`, `ct_nameTHA`, `code`) VALUES
('ABW', 'Aruba', 'อารูบา', 'AW'),
('AFG', 'Afghanistan', 'อัฟกานิสถาน', 'AF'),
('AGO', 'Angola', 'แองโกลา', 'AO'),
('AIA', 'Anguilla', 'แองกวิลลา', 'AI'),
('ALA', 'Åland', 'โอลันด์', 'AX'),
('ALB', 'Albania', 'แอลเบเนีย', 'AL'),
('AND', 'Andorra', 'อันดอร์รา', 'AD'),
('ARE', 'United Arab Emirates', 'สหรัฐอาหรับเอมิเรตส์\n', 'AE'),
('ARG', 'Argentina', 'อาร์เจนตินา', 'AR'),
('ARM', 'Armenia', 'อาร์เมเนีย', 'AM'),
('ASM', 'American Samoa', 'อเมริกันซามัว', 'AS'),
('ATA', 'Antarctica', 'ทวิปแอนตาร์กติกา', 'AQ'),
('ATF', 'French Southern Territories', 'ดินแดนทางตอนใต้ของฝรั่งเศส', 'TF'),
('ATG', 'Antigua and Barbuda', 'แอนติกาและบาร์บูดา', 'AG'),
('AUS', 'Australia', 'ออสเตรเลีย', 'AU'),
('AUT', 'Austria', 'ออสเตรีย', 'AT'),
('AZE', 'Azerbaijan', 'อาเซอร์ไบจาน', 'AZ'),
('BDI', 'Burundi', 'บุรุนดี', 'BI'),
('BEL', 'Belgium', 'เบลเยียม', 'BE'),
('BEN', 'Benin', 'เบนิน', 'BJ'),
('BES', 'Bonaire', 'โบแนร์', 'BQ'),
('BFA', 'Burkina Faso', 'บูร์กินาฟาโซ', 'BF'),
('BGD', 'Bangladesh', 'บังคลาเทศ', 'BD'),
('BGR', 'Bulgaria', 'บัลแกเรีย', 'BG'),
('BHR', 'Bahrain', 'บาห์เรน', 'BH'),
('BHS', 'Bahamas', 'บาฮามาส', 'BS'),
('BIH', 'Bosnia and Herzegovina', 'บอสเนียและเฮอร์เซโก\n', 'BA'),
('BLM', 'Saint Barthélemy', 'Saint Barthélemy', 'BL'),
('BLR', 'Belarus', 'เบลารุส', 'BY'),
('BLZ', 'Belize', 'เบลีซ', 'BZ'),
('BMU', 'Bermuda', 'เบอร์มิวดา', 'BM'),
('BOL', 'Bolivia', 'โบลิเวีย', 'BO'),
('BRA', 'Brazil', 'บราซิล', 'BR'),
('BRB', 'Barbados', 'บาร์เบโดส', 'BB'),
('BRN', 'Brunei', 'บรูไน', 'BN'),
('BTN', 'Bhutan', 'ภูฏาน', 'BT'),
('BVT', 'Bouvet Island', 'เกาะบูเว็ต', 'BV'),
('BWA', 'Botswana', 'บอตสวานา', 'BW'),
('CAF', 'Central African Republic', 'สาธารณรัฐแอฟริกากลาง', 'CF'),
('CAN', 'Canada', 'แคนาดา', 'CA'),
('CCK', 'Cocos [Keeling] Islands', 'เกาะโคโคส [คีลิง]', 'CC'),
('CHE', 'Switzerland', 'สวิสเซอร์แลนด์', 'CH'),
('CHL', 'Chile', 'ชิลี', 'CL'),
('CHN', 'China', 'จีน', 'CN'),
('CIV', 'Ivory Coast', 'ไอวอรี่โคสต์', 'CI'),
('CMR', 'Cameroon', 'แคเมอรูน', 'CM'),
('COD', 'Democratic Republic of the Congo', 'สาธารณรัฐประชาธิปไตยคองโก', 'CD'),
('COG', 'Republic of the Congo', 'สาธารณรัฐคองโก', 'CG'),
('COK', 'Cook Islands', 'หมู่เกาะคุก', 'CK'),
('COL', 'Colombia', 'โคลอมเบีย', 'CO'),
('COM', 'Comoros', 'คอโมโรส', 'KM'),
('CPV', 'Cape Verde', 'เคปเวิร์ด', 'CV'),
('CRI', 'Costa Rica', 'คอสตาริกา\n', 'CR'),
('CUB', 'Cuba', 'คิวบา', 'CU'),
('CUW', 'Curacao', 'คูราเซา\n', 'CW'),
('CXR', 'Christmas Island', 'เกาะคริสต์มาส', 'CX'),
('CYM', 'Cayman Islands', 'หมู่เกาะเคย์เเมน', 'KY'),
('CYP', 'Cyprus', 'ไซปรัส', 'CY'),
('CZE', 'Czech Republic', 'สาธารณรัฐเช็ก', 'CZ'),
('DEU', 'Germany', 'เยอรมันนี', 'DE'),
('DJI', 'Djibouti', 'จิบูตี', 'DJ'),
('DMA', 'Dominica', 'โดมินิกา', 'DM'),
('DNK', 'Denmark', 'เดนมาร์ก', 'DK'),
('DOM', 'Dominican Republic', 'สาธารณรัฐโดมินิกัน\n', 'DO'),
('DZA', 'Algeria', 'แอลจีเรีย', 'DZ'),
('ECU', 'Ecuador', 'เอกวาดอร์', 'EC'),
('EGY', 'Egypt', 'อียิปต์', 'EG'),
('ERI', 'Eritrea', 'เอริเทรี', 'ER'),
('ESH', 'Western Sahara', 'ซาฮาร่าตะวันตก', 'EH'),
('ESP', 'Spain', 'สเปน', 'ES'),
('EST', 'Estonia', 'เอสโตเนีย', 'EE'),
('ETH', 'Ethiopia', 'สาธารณรัฐเอธิโอเปีย', 'ET'),
('FIN', 'Finland', 'ฟินแลนด์', 'FI'),
('FJI', 'Fiji', 'ฟิจิ', 'FJ'),
('FLK', 'Falkland Islands', 'หมู่เกาะฟอล์คแลนด์', 'FK'),
('FRA', 'France', 'ฝรั่งเศส', 'FR'),
('FRO', 'Faroe Islands', 'หมู่เกาะแฟโร', 'FO'),
('FSM', 'Micronesia', 'ไมโครนีเซีย', 'FM'),
('GAB', 'Gabon', 'กาบอง', 'GA'),
('GBR', 'United Kingdom', 'อังกฤษ (สหราชอาณาจักร)', 'GB'),
('GEO', 'Georgia', 'จอร์เจีย', 'GE'),
('GGY', 'Guernsey', 'เกิร์นซีย์', 'GG'),
('GHA', 'Ghana', 'เกิร์นซีย์', 'GH'),
('GIB', 'Gibraltar', 'ยิบรอลตา', 'GI'),
('GIN', 'Guinea', 'กินี', 'GN'),
('GLP', 'Guadeloupe', 'กัวเดลุฟ', 'GP'),
('GMB', 'Gambia', 'แกมเบีย', 'GM'),
('GNB', 'Guinea-Bissau', 'กินีบิสเซา', 'GW'),
('GNQ', 'Equatorial Guinea', 'อิเควทอเรียลกินี', 'GQ'),
('GRC', 'Greece', 'กรีซ', 'GR'),
('GRD', 'Grenada', 'เกรเนดา ', 'GD'),
('GRL', 'Greenland', 'กรีนแลนด์', 'GL'),
('GTM', 'Guatemala', 'กัวเตมาลา', 'GT'),
('GUF', 'French Guiana', 'เฟรนช์เกียนา', 'GF'),
('GUM', 'Guam', 'เกาะกวม', 'GU'),
('GUY', 'Guyana', 'กายอานา', 'GY'),
('HKG', 'Hong Kong', 'ฮ่องกง', 'HK'),
('HMD', 'Heard Island and McDonald Islands', 'เกาะเฮิร์ดและหมู่เกาะแมคโดนัลด์', 'HM'),
('HND', 'Honduras', 'ฮอนดูรัส', 'HN'),
('HRV', 'Croatia', 'โครเอเชีย', 'HR'),
('HTI', 'Haiti', 'เฮติ', 'HT'),
('HUN', 'Hungary', 'ฮังการี', 'HU'),
('IDN', 'Indonesia', 'อินโดนีเซีย', 'ID'),
('IMN', 'Isle of Man', 'เกาะแมน', 'IM'),
('IND', 'India', 'อินเดีย', 'IN'),
('IOT', 'British Indian Ocean Territory', 'หมู่เกาะบริติชเวอร์จิน', 'IO'),
('IRL', 'Ireland', 'ไอร์แลนด์', 'IE'),
('IRN', 'Iran', 'อิหร่าน', 'IR'),
('IRQ', 'Iraq', 'อิรัก', 'IQ'),
('ISL', 'Iceland', 'ประเทศไอซ์แลนด์', 'IS'),
('ISR', 'Israel', 'อิสราเอล', 'IL'),
('ITA', 'Italy', 'อิตาลี', 'IT'),
('JAM', 'Jamaica', 'เกาะจาเมกา', 'JM'),
('JEY', 'Jersey', 'นิวเจอร์ซีย์', 'JE'),
('JOR', 'Jordan', 'จอร์แดน', 'JO'),
('JPN', 'Japan', 'ญี่ปุ่น', 'JP'),
('KAZ', 'Kazakhstan', 'คาซัคสถาน', 'KZ'),
('KEN', 'Kenya', 'เคนย่า', 'KE'),
('KGZ', 'Kyrgyzstan', 'คีร์กีสถาน', 'KG'),
('KHM', 'Cambodia', 'กัมพูชา', 'KH'),
('KIR', 'Kiribati', 'คิริบาส', 'KI'),
('KNA', 'Saint Kitts and Nevis', 'เซนต์คิตส์และเนวิส', 'KN'),
('KOR', 'South Korea', 'เกาหลีใต้', 'KR'),
('KWT', 'Kuwait', 'คูเวต', 'KW'),
('LAO', 'Laos', 'ลาว', 'LA'),
('LBN', 'Lebanon', 'เลบานอน', 'LB'),
('LBR', 'Liberia', 'ประเทศไลบีเรีย', 'LR'),
('LBY', 'Libya', 'ลิบยา', 'LY'),
('LCA', 'Saint Lucia', 'เซนต์ลูเซีย', 'LC'),
('LIE', 'Liechtenstein', 'นสไตน์', 'LI'),
('LKA', 'Sri Lanka', 'ศรีลังกา', 'LK'),
('LSO', 'Lesotho', 'เลโซโท', 'LS'),
('LTU', 'Lithuania', 'ลิธัวเนีย', 'LT'),
('LUX', 'Luxembourg', 'ลักเซมเบิร์ก', 'LU'),
('LVA', 'Latvia', 'ลัตเวีย', 'LV'),
('MAC', 'Macao', 'มาเก๊า', 'MO'),
('MAF', 'Saint Martin', 'เซนต์มาร์ติน', 'MF'),
('MAR', 'Morocco', 'โมร็อกโก', 'MA'),
('MCO', 'Monaco', 'โมนาโก', 'MC'),
('MDA', 'Moldova', 'มอลโดวา', 'MD'),
('MDG', 'Madagascar', 'มาดากัสการ์', 'MG'),
('MDV', 'Maldives', 'มัลดีฟส์', 'MV'),
('MEX', 'Mexico', 'เม็กซิโก', 'MX'),
('MHL', 'Marshall Islands', 'หมู่เกาะมาร์แชลล์', 'MH'),
('MKD', 'Macedonia', 'มาซิโดเนีย', 'MK'),
('MLI', 'Mali', 'มาลี', 'ML'),
('MLT', 'Malta', 'เกาะมอลตา', 'MT'),
('MMR', 'Myanmar [Burma]', 'พม่า', 'MM'),
('MNE', 'Montenegro', 'มอนเตเนโก', 'ME'),
('MNG', 'Mongolia', 'มองโกเลีย', 'MN'),
('MNP', 'Northern Mariana Islands', 'หมู่เกาะนอร์เทิร์นมาเรียนา', 'MP'),
('MOZ', 'Mozambique', 'โมซัมบิก', 'MZ'),
('MRT', 'Mauritania', 'มอริเตเนีย', 'MR'),
('MSR', 'Montserrat', 'มอนต์เซอร์รัต', 'MS'),
('MTQ', 'Martinique', 'มาร์ตินีก', 'MQ'),
('MUS', 'Mauritius', 'มอริเชียส', 'MU'),
('MWI', 'Malawi', 'มาลาวี', 'MW'),
('MYS', 'Malaysia', 'มาเลเซีย', 'MY'),
('MYT', 'Mayotte', 'มายอต', 'YT'),
('NAM', 'Namibia', 'นามิเบีย', 'NA'),
('NCL', 'New Caledonia', 'นิวแคลิโดเนีย', 'NC'),
('NER', 'Niger', 'ไนเธอร์', 'NE'),
('NFK', 'Norfolk Island', 'เกาะนอร์ฟอล์ก', 'NF'),
('NGA', 'Nigeria', 'ไนจีเรีย', 'NG'),
('NIC', 'Nicaragua', 'นิการากัว', 'NI'),
('NIU', 'Niue', 'นีอูเอ', 'NU'),
('NLD', 'Netherlands', 'เนเธอร์แลนด์', 'NL'),
('NOR', 'Norway', 'นอร์เวย์', 'NO'),
('NPL', 'Nepal', 'เนปาล', 'NP'),
('NRU', 'Nauru', 'นาอูรู', 'NR'),
('NZL', 'New Zealand', 'นิวซีแลนด์', 'NZ'),
('OMN', 'Oman', 'โอมาน', 'OM'),
('PAK', 'Pakistan', 'ปากีสถาน', 'PK'),
('PAN', 'Panama', 'ปานามา', 'PA'),
('PCN', 'Pitcairn Islands', 'หมู่เกาะพิตแคร์น', 'PN'),
('PER', 'Peru', 'เปรู', 'PE'),
('PHL', 'Philippines', 'ฟิลิปปินส์', 'PH'),
('PLW', 'Palau', 'ปาเลา', 'PW'),
('PNG', 'Papua New Guinea', 'ปาปัวนิวกินี', 'PG'),
('POL', 'Poland', 'โปแลนด์', 'PL'),
('PRI', 'Puerto Rico', 'เปอร์โตริโก', 'PR'),
('PRK', 'North Korea', 'เกาหลีเหนือ', 'KP'),
('PRT', 'Portugal', 'โปรตุเกส', 'PT'),
('PRY', 'Paraguay', 'ปารากวัย', 'PY'),
('PSE', 'Palestine', 'ปาเลสไตน์', 'PS'),
('PYF', 'French Polynesia', 'เฟรนช์โปลินีเซีย', 'PF'),
('QAT', 'Qatar', 'กาตาร์', 'QA'),
('REU', 'Réunion', 'เรอูนียง', 'RE'),
('ROU', 'Romania', 'โรมาเนีย', 'RO'),
('RUS', 'Russia', 'รัสเซีย', 'RU'),
('RWA', 'Rwanda', 'รวันดา', 'RW'),
('SAU', 'Saudi Arabia', 'ซาอุดิอาราเบีย', 'SA'),
('SDN', 'Sudan', 'ซูดาน', 'SD'),
('SEN', 'Senegal', 'เซเนกัล', 'SN'),
('SGP', 'Singapore', 'สิงคโปร์', 'SG'),
('SGS', 'South Georgia and the South Sandwich Islands', 'หมู่เกาะเซาท์จอร์เจียและหมู่เกาะเซาท์แซนด์วิช', 'GS'),
('SHN', 'Saint Helena', 'เซนต์เฮเลนา', 'SH'),
('SJM', 'Svalbard and Jan Mayen', 'สฟาลบาร์และยานไมเอน', 'SJ'),
('SLB', 'Solomon Islands', 'หมู่เกาะโซโลมอน', 'SB'),
('SLE', 'Sierra Leone', 'เซียร์ราลีโอน', 'SL'),
('SLV', 'El Salvador', 'เอลซัลวาดอร์', 'SV'),
('SMR', 'San Marino', 'ซานมาริโน', 'SM'),
('SOM', 'Somalia', 'โซมาเลีย', 'SO'),
('SPM', 'Saint Pierre and Miquelon', 'เซนต์ปิแอร์และมีเกอลง', 'PM'),
('SRB', 'Serbia', 'เซอร์เบีย', 'RS'),
('SSD', 'South Sudan', 'ซูดานใต้', 'SS'),
('STP', 'São Tomé and Príncipe', 'เซาตูเมและปรินซิปี', 'ST'),
('SUR', 'Suriname', 'ซูรินาเม', 'SR'),
('SVK', 'Slovakia', 'สโลวะเกีย', 'SK'),
('SVN', 'Slovenia', 'สโลวีเนีย', 'SI'),
('SWE', 'Sweden', 'สวีเดน', 'SE'),
('SWZ', 'Swaziland', 'สวาซิแลนด์', 'SZ'),
('SXM', 'Sint Maarten', 'เกาะเซนต์มาร์ติน', 'SX'),
('SYC', 'Seychelles', 'เซเชลส์', 'SC'),
('SYR', 'Syria', 'ซีเรีย', 'SY'),
('TCA', 'Turks and Caicos Islands', 'หมู่เกาะเติกส์และหมู่เกาะเคคอส', 'TC'),
('TCD', 'Chad', 'ชาด', 'TD'),
('TGO', 'Togo', 'โตโก', 'TG'),
('THA', 'Thailand', 'ไทย', 'TH'),
('TJK', 'Tajikistan', 'ทาจิกิสถาน', 'TJ'),
('TKL', 'Tokelau', 'โตเกเลา', 'TK'),
('TKM', 'Turkmenistan', 'เติร์กเมนิสถาน', 'TM'),
('TLS', 'East Timor', 'ติมอร์ตะวันออก', 'TL'),
('TON', 'Tonga', 'ตองกา', 'TO'),
('TTO', 'Trinidad and Tobago', 'ตรินิแดดและโตเบโก', 'TT'),
('TUN', 'Tunisia', 'ตูนิเซีย', 'TN'),
('TUR', 'Turkey', 'ตุรกี', 'TR'),
('TUV', 'Tuvalu', 'ตูวาลู', 'TV'),
('TWN', 'Taiwan', 'ไต้หวัน', 'TW'),
('TZA', 'Tanzania', 'แทนซาเนีย', 'TZ'),
('UGA', 'Uganda', 'ยูกันดา', 'UG'),
('UKR', 'Ukraine', 'ยูเครน', 'UA'),
('UMI', 'U.S. Minor Outlying Islands', 'เกาะนอกรีตของสหรัฐฯ', 'UM'),
('URY', 'Uruguay', 'อุรุกวัย', 'UY'),
('USA', 'United States', 'สหรัฐอเมริกา', 'US'),
('UZB', 'Uzbekistan', 'อุซเบกิสถาน', 'UZ'),
('VAT', 'Vatican City', 'เมืองวาติกัน', 'VA'),
('VCT', 'Saint Vincent and the Grenadines', 'เซนต์วินเซนต์และเกรนาดีนส์', 'VC'),
('VEN', 'Venezuela', 'เวเนซุเอลา', 'VE'),
('VGB', 'British Virgin Islands', 'หมู่เกาะบริติชเวอร์จิน', 'VG'),
('VIR', 'U.S. Virgin Islands', 'หมู่เกาะเวอร์จินของสหรัฐอเมริกา', 'VI'),
('VNM', 'Vietnam', 'เวียดนาม', 'VN'),
('VUT', 'Vanuatu', 'วานูอาตู', 'VU'),
('WLF', 'Wallis and Futuna', 'วาลลิสและฟุตูนา', 'WF'),
('WSM', 'Samoa', 'ซามัว', 'WS'),
('XKX', 'Kosovo', 'โคโซโว', 'XK'),
('YEM', 'Yemen', 'เยเมน', 'YE'),
('ZAF', 'South Africa', 'แอฟริกาใต้', 'ZA'),
('ZMB', 'Zambia', 'แซมเบีย', 'ZM'),
('ZWE', 'Zimbabwe', 'ประเทศซิมบับเว', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `tb_furniture`
--

CREATE TABLE `tb_furniture` (
  `furniture_id` int(11) NOT NULL,
  `furniture_name_th` varchar(100) NOT NULL,
  `furniture_name_en` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_furniture`
--

INSERT INTO `tb_furniture` (`furniture_id`, `furniture_name_th`, `furniture_name_en`) VALUES
(2, 'มี', 'have'),
(3, 'ไม่มี', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tb_location`
--

CREATE TABLE `tb_location` (
  `location_id` int(11) NOT NULL,
  `location_name_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `location_name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_location`
--

INSERT INTO `tb_location` (`location_id`, `location_name_th`, `location_name_en`) VALUES
(1, 'กรุงเทพ', 'Bangkok'),
(2, 'นครราชสีมา', 'Nakhon Ratchasima'),
(3, 'ขอนแก่น', 'Khon Kaen'),
(4, 'เชียงใหม่', 'Chiang Mai'),
(5, 'กาญจนบุรี', 'Kanchanaburi');

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
(45, 12, 2, 2, 'แสนสิริ', 'Sansiri', 1600000, '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments<br />\r\n&nbsp;', '1', '2', '15.0229155', '102.13825259999999'),
(46, 10, 3, 3, 'เดอะเบส', 'the best', 3000000, '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments<br />\r\n&nbsp;', '1', '2', '16.4419355', '102.8359921'),
(47, 10, 3, 5, 'เดอะเบสไฮท์', 'The Base Height', 5000000, '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments<br />\r\n&nbsp;', '2', '2', '13.7563309', '100.50176510000006');

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
(1, 'อสังหาริมทรัพย์', 'Real Estate', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments');

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

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_image`
--

CREATE TABLE `tb_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image_img` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_product_image`
--

INSERT INTO `tb_product_image` (`product_image_id`, `product_id`, `product_image_img`) VALUES
(2, 8, '07032019110946-05032019145951-default.png'),
(3, 25, '07032019110946-05032019145951-default.png'),
(4, 26, '07032019110946-05032019145951-default.png'),
(5, 27, '07032019110946-05032019145951-default.png'),
(6, 9, '07032019110946-05032019145951-default.png'),
(7, 28, '07032019110946-05032019145951-default.png'),
(8, 29, '07032019110946-05032019145951-default.png'),
(9, 30, '07032019110946-05032019145951-default.png'),
(10, 31, '07032019110946-05032019145951-default.png'),
(11, 32, '07032019110946-05032019145951-default.png'),
(12, 33, '07032019110946-05032019145951-default.png'),
(13, 10, '07032019110946-05032019145951-default.png'),
(15, 14, '07032019110946-05032019145951-default.png'),
(16, 13, '07032019110946-05032019145951-default.png'),
(19, 16, '07032019110946-05032019145951-default.png'),
(20, 17, '07032019110946-05032019145951-default.png'),
(21, 18, '07032019110946-05032019145951-default.png'),
(22, 19, '07032019110946-05032019145951-default.png'),
(23, 20, '07032019110946-05032019145951-default.png'),
(24, 21, '07032019110946-05032019145951-default.png'),
(25, 22, '07032019110946-05032019145951-default.png'),
(26, 23, '07032019110946-05032019145951-default.png'),
(27, 24, '07032019110946-05032019145951-default.png'),
(28, 25, '07032019110946-05032019145951-default.png'),
(29, 26, '07032019110946-05032019145951-default.png'),
(30, 27, '07032019160551-05032019145951-default.png'),
(31, 15, '11032019120403-default.png'),
(32, 8, '07032019110946-05032019145951-default.png'),
(33, 25, '07032019110946-05032019145951-default.png'),
(34, 26, '07032019110946-05032019145951-default.png'),
(35, 27, '07032019110946-05032019145951-default.png'),
(36, 9, '07032019110946-05032019145951-default.png'),
(37, 28, '07032019110946-05032019145951-default.png'),
(38, 29, '07032019110946-05032019145951-default.png'),
(39, 30, '07032019110946-05032019145951-default.png'),
(40, 31, '07032019110946-05032019145951-default.png'),
(41, 32, '07032019110946-05032019145951-default.png'),
(42, 33, '07032019110946-05032019145951-default.png'),
(43, 10, '07032019110946-05032019145951-default.png'),
(44, 14, '07032019110946-05032019145951-default.png'),
(45, 13, '07032019110946-05032019145951-default.png'),
(46, 16, '07032019110946-05032019145951-default.png'),
(47, 17, '07032019110946-05032019145951-default.png'),
(48, 18, '07032019110946-05032019145951-default.png'),
(49, 19, '07032019110946-05032019145951-default.png'),
(50, 20, '07032019110946-05032019145951-default.png'),
(51, 21, '07032019110946-05032019145951-default.png'),
(52, 22, '07032019110946-05032019145951-default.png'),
(53, 23, '07032019110946-05032019145951-default.png'),
(54, 24, '07032019110946-05032019145951-default.png'),
(55, 25, '07032019110946-05032019145951-default.png'),
(56, 26, '07032019110946-05032019145951-default.png'),
(57, 2, '13032019100029-architecture-1867187_1920.jpg'),
(58, 2, '13032019100035-detroit-1.jpg'),
(59, 45, '13032019100153-detroit-1.jpg'),
(60, 45, '13032019100158-architecture-1867187_1920.jpg'),
(61, 3, '13032019100444-1157073_16062412150044053329.jpg'),
(62, 3, '13032019100448-architecture-1359707_1920.jpg'),
(63, 46, '13032019100504-1157073_16062412150044053329.jpg'),
(64, 46, '13032019100507-architecture-1359707_1920.jpg'),
(65, 47, '13032019100838-urban-2589645_1920.jpg'),
(66, 47, '13032019100843-skyscraper-1893201_1920.jpg'),
(67, 5, '13032019111454-566508.jpg'),
(68, 5, '13032019111457-06646512_z.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_types`
--

CREATE TABLE `tb_product_types` (
  `product_types_id` int(11) NOT NULL,
  `product_types_name_th` varchar(200) NOT NULL,
  `product_types_name_en` varchar(200) NOT NULL,
  `product_types_img` text NOT NULL,
  `product_types_popular` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_product_types`
--

INSERT INTO `tb_product_types` (`product_types_id`, `product_types_name_th`, `product_types_name_en`, `product_types_img`, `product_types_popular`) VALUES
(10, 'คอนโดมิเนียม', 'CONDOMINIUM', '13032019095215-architecture-1359707_1920.jpg', 1),
(11, 'วิลล่า', 'VILLA', '13032019095513-detroit-1.jpg', 1),
(12, 'บ้าน', 'HOUSE', '13032019095558-566508.jpg', 1);

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
(12, 'ผู้ขาย / ผู้ให้เช่า', 'SELLER / LESSOR', '13032019102341-seller-detial.png', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n'),
(13, 'ผู้ขาย', 'BUYER', '13032019102658-key-2323278_1920.jpg', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments'),
(14, 'ผู้ให้คำปรึกษา', 'ADVISOR', '13032019102646-buyer-detail.png', '<pre>\r\nหากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments<br />\r\n&nbsp;');

-- --------------------------------------------------------

--
-- Table structure for table `tb_slide`
--

CREATE TABLE `tb_slide` (
  `slide_id` int(11) NOT NULL,
  `slide_name` varchar(100) NOT NULL,
  `slide_title_th` varchar(100) DEFAULT NULL,
  `slide_title_en` varchar(100) DEFAULT NULL,
  `slide_description_th` text,
  `slide_description_en` text,
  `slide_image` varchar(200) NOT NULL,
  `updateby` int(11) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_slide`
--

INSERT INTO `tb_slide` (`slide_id`, `slide_name`, `slide_title_th`, `slide_title_en`, `slide_description_th`, `slide_description_en`, `slide_image`, `updateby`, `lastupdate`) VALUES
(1, 'about', 'เกี่ยวกับเรา', 'ABOUT REALESTATE', 'หากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments\r\n', '1303201917020113032019170201519320281.jpg', 5, '2019-03-13 17:02:01'),
(2, 'service', 'บริการ', 'SERVICE REALESTATE', 'หากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments\r\n', '130320191702131303201917021320732599.jpg', 5, '2019-03-13 17:02:13'),
(3, 'property', 'อสังหาทรัพย์', 'PROPERTY REALESTATE', 'หากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments\r\n', '13032019170221130320191702211849773836.jpg', 5, '2019-03-13 17:02:21'),
(4, 'news&event', 'ข่าวและเหตุการณ์', 'NEWS&EVENT REALESTATE', 'หากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments\r\n', '1303201917023113032019170231576471488.jpg', 5, '2019-03-13 17:02:31'),
(5, 'contact', 'ติดต่อเรา', 'CONTACT REALESTATE', 'หากอาคารมีการเติบโตในสถานที่ที่สำคัญที่สุดในประเทศไทยที่มีความเสี่ยงต่ำที่สุดจะมีจำนวนมากขึ้นในประเทศไทยซึ่งเป็นประเทศที่มีการต้อนรับและมีเสน่ห์ ในประเทศไทยบ้านที่มีความเจ็บปวดน้อยที่สุดจะมีมากขึ้นเรื่อย ๆ ประเทศไทยเป็นประเทศที่มีอาวุธของการต้อนรับและเสน่ห์มันค่อนข้างง่ายที่จะเช่าอสังหาริมทรัพย์ในประเทศไทย กฎหมายคุ้มครองเจ้าของเพื่อให้พวกเขามีแนวโน้มที่จะเช่าบ้านหรืออพาร์ทเมนต์ของพวกเขาโดยไม่มีข้อ จำกัด มากมายหรือต้องใช้เอกสารมากเกินไปอสังหาริมทรัพย์ก็อาจเป็นวิธีการลงทุนในประเทศไทยได้ นี่เป็นโหมดการลงทุนของคนไทยอย่างคนส่วนใหญ่และชาวต่างชาติที่มีแนวโน้มเพิ่มมากขึ้นที่จะทำให้การลงทุนของพวกเขาเปลี่ยนไป\r\n', 'If the building is growing in the most important places in Thailand with the lowest risk, there will be more numbers in Thailand, a country with a welcoming and charming style. In Thailand, houses with the lowest pain will be more and more. Thailand is a country that has weapons of hospitality and charm It is fairly easy to rent a property in Thailand. The law protects the owners so they are more likely to rent their homes or apartments without many restrictions or requiring too much documentation Real estate can also be a way to invest in Thailand. This is the mode of investment Thais like the most and foreigners are increasingly likely to make the move to diversify their investments\r\n', '1303201917024813032019170248657437064.jpg', 5, '2019-03-13 17:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `user_firstname` varchar(45) DEFAULT NULL,
  `user_lastname` varchar(45) DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_facebook` varchar(200) NOT NULL,
  `user_line` varchar(100) NOT NULL,
  `user_username` varchar(45) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  `user_address` varchar(200) DEFAULT NULL,
  `user_district` varchar(100) DEFAULT NULL,
  `user_amphur` varchar(100) DEFAULT NULL,
  `user_province` varchar(100) DEFAULT NULL,
  `user_zipcode` varchar(20) DEFAULT NULL,
  `user_image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_type_id`, `user_firstname`, `user_lastname`, `user_phone`, `user_email`, `user_facebook`, `user_line`, `user_username`, `user_password`, `user_address`, `user_district`, `user_amphur`, `user_province`, `user_zipcode`, `user_image`) VALUES
(4, 2, 'ทดลอง', 'ทดลอง', '0859589654', 'test@gmail.com', 'www.facebook.com/test', '085-958-9654', 'admin', '123456', '698', 'ในเมือง', 'เมืองนครราชสีมา', 'นครราชสีมา', '30000', '05032019145951-default.png'),
(5, 1, 'asd', 'asdasd', 'asdasd', 'asdas', 'das', 'das', 'root', 'root123456', 'dasdasd', 'dasdasd', 'das', 'dasdas', 'asdasdasd', '27022019104335-48052436_1896837297097519_7126811084484247552_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_type`
--

CREATE TABLE `tb_user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user_type`
--

INSERT INTO `tb_user_type` (`user_type_id`, `user_type_name`) VALUES
(1, 'ผู้ดูเเล'),
(2, 'ผู้ใช้งาน');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_about_us`
--
ALTER TABLE `tb_about_us`
  ADD PRIMARY KEY (`about_us_id`);

--
-- Indexes for table `tb_agent`
--
ALTER TABLE `tb_agent`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `tb_agent_head`
--
ALTER TABLE `tb_agent_head`
  ADD PRIMARY KEY (`agent_head_id`);

--
-- Indexes for table `tb_company_profile`
--
ALTER TABLE `tb_company_profile`
  ADD PRIMARY KEY (`company_profile_id`);

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tb_contact_head`
--
ALTER TABLE `tb_contact_head`
  ADD PRIMARY KEY (`contact_head_id`);

--
-- Indexes for table `tb_contact_title`
--
ALTER TABLE `tb_contact_title`
  ADD PRIMARY KEY (`contact_title_id`);

--
-- Indexes for table `tb_contact_type`
--
ALTER TABLE `tb_contact_type`
  ADD PRIMARY KEY (`contact_type_id`);

--
-- Indexes for table `tb_contact_us`
--
ALTER TABLE `tb_contact_us`
  ADD PRIMARY KEY (`contact_us_id`);

--
-- Indexes for table `tb_country`
--
ALTER TABLE `tb_country`
  ADD PRIMARY KEY (`ct_code`);

--
-- Indexes for table `tb_furniture`
--
ALTER TABLE `tb_furniture`
  ADD PRIMARY KEY (`furniture_id`);

--
-- Indexes for table `tb_location`
--
ALTER TABLE `tb_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tb_page`
--
ALTER TABLE `tb_page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tb_product_header`
--
ALTER TABLE `tb_product_header`
  ADD PRIMARY KEY (`product_header_id`);

--
-- Indexes for table `tb_product_highlight`
--
ALTER TABLE `tb_product_highlight`
  ADD PRIMARY KEY (`product_highlight_id`);

--
-- Indexes for table `tb_product_image`
--
ALTER TABLE `tb_product_image`
  ADD PRIMARY KEY (`product_image_id`);

--
-- Indexes for table `tb_product_types`
--
ALTER TABLE `tb_product_types`
  ADD PRIMARY KEY (`product_types_id`);

--
-- Indexes for table `tb_service_head`
--
ALTER TABLE `tb_service_head`
  ADD PRIMARY KEY (`service_head_id`);

--
-- Indexes for table `tb_services`
--
ALTER TABLE `tb_services`
  ADD PRIMARY KEY (`services_id`);

--
-- Indexes for table `tb_slide`
--
ALTER TABLE `tb_slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_user_type`
--
ALTER TABLE `tb_user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_about_us`
--
ALTER TABLE `tb_about_us`
  MODIFY `about_us_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_agent`
--
ALTER TABLE `tb_agent`
  MODIFY `agent_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_agent_head`
--
ALTER TABLE `tb_agent_head`
  MODIFY `agent_head_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `contact_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_contact_head`
--
ALTER TABLE `tb_contact_head`
  MODIFY `contact_head_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_contact_title`
--
ALTER TABLE `tb_contact_title`
  MODIFY `contact_title_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_contact_type`
--
ALTER TABLE `tb_contact_type`
  MODIFY `contact_type_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_contact_us`
--
ALTER TABLE `tb_contact_us`
  MODIFY `contact_us_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_furniture`
--
ALTER TABLE `tb_furniture`
  MODIFY `furniture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_location`
--
ALTER TABLE `tb_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tb_page`
--
ALTER TABLE `tb_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `tb_product_highlight`
--
ALTER TABLE `tb_product_highlight`
  MODIFY `product_highlight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `tb_product_image`
--
ALTER TABLE `tb_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `tb_product_types`
--
ALTER TABLE `tb_product_types`
  MODIFY `product_types_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_service_head`
--
ALTER TABLE `tb_service_head`
  MODIFY `service_head_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_services`
--
ALTER TABLE `tb_services`
  MODIFY `services_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tb_slide`
--
ALTER TABLE `tb_slide`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_user_type`
--
ALTER TABLE `tb_user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `revelsoft_gtp`
--
CREATE DATABASE IF NOT EXISTS `revelsoft_gtp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `revelsoft_gtp`;

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
(1, 'ABOUT GUNTHPAT PLACE', 'Gunthpat Place Luxurious apartment is located right behind Tesco-Lotus with the full safety system building, surrounding with all convenience places such as THE MALL, Bangkok-Ratchasima Hospital, Schools, Bank etc. Every room type is including 5’bed, 2 Tables, 1TV stand, TV, Refrigerator, Closet, sink, bed light, etc, Gunthpat Place Luxurious apartment is located right behind Tesco-Lotus with the full safety system building, surrounding with all convenience places such as THE MALL, Bangkok-Ratchasima Hospital, Schools, Bank etc. \r\n\r\nGunthpat Place Luxurious apartment is located right behind Tesco-Lotus with the full safety system building, surrounding with all convenience places such as THE MALL, Bangkok-Ratchasima Hospital, Schools, Bank etc.                                                                                                                                                                                                                                ', 'เกี่ยวกับ กันตพัฒน์', ' กันตพัฒน์ เพลส เซอร์วิส อพาร์ทเม้นท์ 7 ชั้น ใจกลางเมือง โคราช หรูหรากับระบบความปลอดภัยเต็มรูปแบบ กับความสะดวกสบายด้วยบริการลิฟต์ 2 ตัว โล่งโปร่งสบาย         ด้วยโถงสกายไลท์ ตรงกลาง พร้อมน้ำพุ กับแหล่งช้อปปิ้ง ที่รายล้อม ทั้ง ห้างเดอะมอลล์ และเพียงเดินไม่กี่ก้าวถึงก็เทสโก้ โลตัส และสิ่งอำนวยความสะดวกอื่นๆ อีกมากมาย', '0103201910240101032019102401963519578.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_book`
--

CREATE TABLE `tb_book` (
  `book_id` int(5) NOT NULL,
  `book_firstname` varchar(200) NOT NULL,
  `book_lastname` varchar(200) NOT NULL,
  `book_person` int(10) NOT NULL,
  `room_id` int(5) NOT NULL,
  `book_date_start` date NOT NULL,
  `book_date_end` date NOT NULL,
  `book_tel` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_book`
--

INSERT INTO `tb_book` (`book_id`, `book_firstname`, `book_lastname`, `book_person`, `room_id`, `book_date_start`, `book_date_end`, `book_tel`) VALUES
(1, 'มนัสวี', 'เข่งพิมล', 3, 6, '2019-02-26', '2019-02-28', '0878232693'),
(2, 'ทดสอบ', 'ทดสอบ', 3, 7, '2019-02-27', '2019-02-28', '0854125693'),
(3, 'ทดสอบ', 'ทดสอบ', 3, 4, '2019-03-01', '2019-03-29', '0985474111'),
(4, 'ส้มสุน', 'เที่ยงกะโทก', 3, 7, '2019-02-01', '2019-02-12', '0987545213'),
(5, 'test', 'test', 2, 1, '2019-02-01', '2019-02-27', '0875621458');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact`
--

CREATE TABLE `tb_contact` (
  `contact_id` int(5) NOT NULL,
  `contact_title_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_tel` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contact_country` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `contact_type_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_contact`
--

INSERT INTO `tb_contact` (`contact_id`, `contact_title_id`, `contact_firstname`, `contact_lastname`, `contact_email`, `contact_tel`, `contact_country`, `contact_type_id`, `contact_text`) VALUES
(1, '1', 'มนัสวี', 'เข่งพิมล', 'manadsawee1997@gmail.com', '0878232693', 'THA', '3', 'ทดสอบส่งคำถาม'),
(3, '11', 'Test', 'Test', 'Test@gmail.com', '08745213693', 'THA', '2', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact_head`
--

CREATE TABLE `tb_contact_head` (
  `contact_head_id` int(5) NOT NULL,
  `contact_head_detail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_head_detail_en` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_contact_head`
--

INSERT INTO `tb_contact_head` (`contact_head_id`, `contact_head_detail_th`, `contact_head_detail_en`) VALUES
(1, 'ใช้บริการแอร์พอร์ต ลิงก์ จากสนามบินนานาชาติสุวรรณภูมิมาที่พญาไทโดยให้บริการทุกๆ 20 นาทีตั้งแต่เวลา 6.00 น. ถึง 24.00 น. เที่ยงคืน โดยขึ้นรถไฟฟ้าบีทีเอส เปลี่ยนขบวนที่สถานีสยาม และลงที่สถานีสะพานตากสิน จากที่นั่น ท่านสามารถใช้บริการเรือโดยสารได้ฟรี โดยเรือออกทุก 20 นาที โปรดแจ้งให้ทางโรงแรมทราบล่วงหน้าเพื่อให้เราทราบถึงรูปแบบการเดินทางของท่าน\r\n\r\n                    ', 'Use the Airport Link service from Suvarnabhumi International Airport to Phayathai by serving every 20 minutes from 6.00 am to 24.00 pm, midnight by BTS sky train. Change the train at Siam Station And get off at Saphan Taksin Station. From there, you can use the passenger boat for free. By boat departing every 20 minutes, please inform the hotel in advance in order to let us know your travel style\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact_title`
--

CREATE TABLE `tb_contact_title` (
  `contact_title_id` int(5) NOT NULL,
  `contact_title_name_th` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `contact_title_name_en` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_contact_title`
--

INSERT INTO `tb_contact_title` (`contact_title_id`, `contact_title_name_th`, `contact_title_name_en`) VALUES
(1, 'ที่พัก', 'room'),
(10, 'การเดินทาง', 'travel');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact_type`
--

CREATE TABLE `tb_contact_type` (
  `contact_type_id` int(5) NOT NULL,
  `contact_type_name_th` varchar(200) NOT NULL,
  `contact_type_name_en` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_contact_type`
--

INSERT INTO `tb_contact_type` (`contact_type_id`, `contact_type_name_th`, `contact_type_name_en`) VALUES
(1, 'สำคัญ', 'important'),
(2, 'ด่วนมาก', 'Very quick'),
(3, 'ปลานกลาง', 'quick'),
(5, 'น้อย', 'medium');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact_us`
--

CREATE TABLE `tb_contact_us` (
  `contact_us_id` int(5) NOT NULL,
  `contact_us_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_title_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_sub_title_en` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_sub_title_th` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_tel` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_en` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_th` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_1_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_1_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_2_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_2_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_3_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_3_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_address_4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_carry_title_th` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_carry_title_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_carry_detail_th` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_carry_detail_en` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_taxi_title_th` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_taxi_title_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_taxi_detail_th` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_taxi_detail_en` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_car_titel_th` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_car_titel_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_car_detail_th` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_car_detail_en` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_map` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_map_latitude` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_map_longitude` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contact_us_img` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_contact_us`
--

INSERT INTO `tb_contact_us` (`contact_us_id`, `contact_us_title_en`, `contact_us_title_th`, `contact_us_sub_title_en`, `contact_us_sub_title_th`, `contact_us_facebook`, `contact_us_tel`, `contact_us_address_en`, `contact_us_address_th`, `contact_us_address_1_en`, `contact_us_address_1_th`, `contact_us_address_2_en`, `contact_us_address_2_th`, `contact_us_address_3_en`, `contact_us_address_3_th`, `contact_us_address_4`, `contact_us_fax`, `contact_us_email`, `contact_us_carry_title_th`, `contact_us_carry_title_en`, `contact_us_carry_detail_th`, `contact_us_carry_detail_en`, `contact_us_taxi_title_th`, `contact_us_taxi_title_en`, `contact_us_taxi_detail_th`, `contact_us_taxi_detail_en`, `contact_us_car_titel_th`, `contact_us_car_titel_en`, `contact_us_car_detail_th`, `contact_us_car_detail_en`, `contact_us_map`, `contact_us_map_latitude`, `contact_us_map_longitude`, `contact_us_img`) VALUES
(8, 'GUNTHPAT PLACE', '', 'Gunthpat Place Luxurious apartment is located right behind Tesco-Lotus with the full safety system building, surrounding with all convenience places such as THE MALL, Bangkok-Ratchasima Hospital, Schools, Bank etc.     Every room type is including 5’bed, 2 Tables, 1TV stand, TV, Refrigerator, Closet, sink, bed light, etc, ', ' เซอร์วิส อพาร์ทเม้นท์ 7 ชั้น ใจกลางเมือง โคราช หรูหรากับระบบความปลอดภัยเต็มรูปแบบ กับความสะดวกสบายด้วยบริการลิฟต์ 2 ตัว โล่งโปร่งสบาย         ด้วยโถงสกายไลท์ ตรงกลาง พร้อมน้ำพุ กับแหล่งช้อปปิ้ง ที่รายล้อม ทั้ง ห้างเดอะมอลล์ และเพียงเดินไม่กี่ก้าวถึงก็เทสโก้ โลตัส และสิ่งอำนวยความสะดวกอื่นๆ อีกมากมาย ', 'https://www.facebook.com/gunthpatplace', '0864653355', '263/3 Soi King-Sa wai rieng', '263/3 ซ.กิ่งสวายเรียง', 'Nai Muang', 'ต.ในเมือง', 'Muang', 'อ.เมือง', 'Nakhornratchasima ', 'นครราชสีมา ', '30000', '044-255-617', 'gunthpatplace@hotmail.com', 'ระบบขนส่งสาธารณะ', 'Public transport', '    ใช้บริการแอร์พอร์ต ลิงก์ จากสนามบินนานาชาติสุวรรณภูมิมาที่พญาไทโดยให้บริการทุกๆ 20 นาทีตั้งแต่เวลา 6.00 น. ถึง 24.00 น. เที่ยงคืน โดยขึ้นรถไฟฟ้าบีทีเอส เปลี่ยนขบวนที่สถานีสยาม และลงที่สถานีสะพานตากสิน จากที่นั่น ท่านสามารถใช้บริการเรือโดยสารได้ฟรี โดยเรือออกทุก 20 นาทีโปรดแจ้งให้ทางโรงแรมทราบล่วงหน้าเพื่อให้เราทราบถึงรูปแบบการเดินทางของท่าน   ', '  Use the Airport Link service from Suvarnabhumi International Airport to Phayathai by serving every 20 minutes from 6.00 am to 24.00 pm, midnight by BTS sky train. Change the train at Siam Station And get off at Saphan Taksin Station. From there, you can use the passenger boat for free. By boat departing every 20 minutes, please inform the hotel in advance in order to let us know your travel style  ', 'แท็กซี่โดยสาร', 'Passenger taxi', '  ใช้บริการแอร์พอร์ต ลิงก์ จากสนามบินนานาชาติสุวรรณภูมิมาที่พญาไทโดยให้บริการทุกๆ 20 นาทีตั้งแต่เวลา 6.00 น. ถึง 24.00 น. เที่ยงคืน โดยขึ้นรถไฟฟ้าบีทีเอส เปลี่ยนขบวนที่สถานีสยาม และลงที่สถานีสะพานตากสิน จากที่นั่น ท่านสามารถใช้บริการเรือโดยสารได้ฟรี โดยเรือออกทุก 20 นาทีโปรดแจ้งให้ทางโรงแรมทราบล่วงหน้าเพื่อให้เราทราบถึงรูปแบบการเดินทางของท่าน   ', '  Use the Airport Link service from Suvarnabhumi International Airport to Phayathai by serving every 20 minutes from 6.00 am to 24.00 pm, midnight by BTS sky train. Change the train at Siam Station And get off at Saphan Taksin Station. From there, you can use the passenger boat for free. By boat departing every 20 minutes, please inform the hotel in advance in order to let us know your travel style  ', 'รถรับส่งของโรงแรม', 'Hotel shuttle', '  ใช้บริการแอร์พอร์ต ลิงก์ จากสนามบินนานาชาติสุวรรณภูมิมาที่พญาไทโดยให้บริการทุกๆ 20 นาทีตั้งแต่เวลา 6.00 น. ถึง 24.00 น. เที่ยงคืน โดยขึ้นรถไฟฟ้าบีทีเอส เปลี่ยนขบวนที่สถานีสยาม และลงที่สถานีสะพานตากสิน จากที่นั่น ท่านสามารถใช้บริการเรือโดยสารได้ฟรี โดยเรือออกทุก 20 นาทีโปรดแจ้งให้ทางโรงแรมทราบล่วงหน้าเพื่อให้เราทราบถึงรูปแบบการเดินทางของท่าน   ', '  Use the Airport Link service from Suvarnabhumi International Airport to Phayathai by serving every 20 minutes from 6.00 am to 24.00 pm, midnight by BTS sky train. Change the train at Siam Station And get off at Saphan Taksin Station. From there, you can use the passenger boat for free. By boat departing every 20 minutes, please inform the hotel in advance in order to let us know your travel style  ', 'https://www.google.com/maps/place/Gunthpat+Place/@14.9755388,102.070692,18.25z/data=!4m8!1m2!2m1!1sguthpat!3m4!1s0x311eb34d179b5b75:0xba3f08e9b53c348f!8m2!3d14.976385!4d102.0702457', '14.9763853', '102.0680571', '010320191024290103201910242913313549.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_country`
--

CREATE TABLE `tb_country` (
  `ct_code` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสประเทศ',
  `ct_nameENG` varchar(200) NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `ct_nameTHA` varchar(200) NOT NULL COMMENT 'ชื่อภาษาไทย',
  `code` char(2) NOT NULL COMMENT 'ชื่อย่อ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_country`
--

INSERT INTO `tb_country` (`ct_code`, `ct_nameENG`, `ct_nameTHA`, `code`) VALUES
('ABW', 'Aruba', 'อารูบา', 'AW'),
('AFG', 'Afghanistan', 'อัฟกานิสถาน', 'AF'),
('AGO', 'Angola', 'แองโกลา', 'AO'),
('AIA', 'Anguilla', 'แองกวิลลา', 'AI'),
('ALA', 'Åland', 'โอลันด์', 'AX'),
('ALB', 'Albania', 'แอลเบเนีย', 'AL'),
('AND', 'Andorra', 'อันดอร์รา', 'AD'),
('ARE', 'United Arab Emirates', 'สหรัฐอาหรับเอมิเรตส์\n', 'AE'),
('ARG', 'Argentina', 'อาร์เจนตินา', 'AR'),
('ARM', 'Armenia', 'อาร์เมเนีย', 'AM'),
('ASM', 'American Samoa', 'อเมริกันซามัว', 'AS'),
('ATA', 'Antarctica', 'ทวิปแอนตาร์กติกา', 'AQ'),
('ATF', 'French Southern Territories', 'ดินแดนทางตอนใต้ของฝรั่งเศส', 'TF'),
('ATG', 'Antigua and Barbuda', 'แอนติกาและบาร์บูดา', 'AG'),
('AUS', 'Australia', 'ออสเตรเลีย', 'AU'),
('AUT', 'Austria', 'ออสเตรีย', 'AT'),
('AZE', 'Azerbaijan', 'อาเซอร์ไบจาน', 'AZ'),
('BDI', 'Burundi', 'บุรุนดี', 'BI'),
('BEL', 'Belgium', 'เบลเยียม', 'BE'),
('BEN', 'Benin', 'เบนิน', 'BJ'),
('BES', 'Bonaire', 'โบแนร์', 'BQ'),
('BFA', 'Burkina Faso', 'บูร์กินาฟาโซ', 'BF'),
('BGD', 'Bangladesh', 'บังคลาเทศ', 'BD'),
('BGR', 'Bulgaria', 'บัลแกเรีย', 'BG'),
('BHR', 'Bahrain', 'บาห์เรน', 'BH'),
('BHS', 'Bahamas', 'บาฮามาส', 'BS'),
('BIH', 'Bosnia and Herzegovina', 'บอสเนียและเฮอร์เซโก\n', 'BA'),
('BLM', 'Saint Barthélemy', 'Saint Barthélemy', 'BL'),
('BLR', 'Belarus', 'เบลารุส', 'BY'),
('BLZ', 'Belize', 'เบลีซ', 'BZ'),
('BMU', 'Bermuda', 'เบอร์มิวดา', 'BM'),
('BOL', 'Bolivia', 'โบลิเวีย', 'BO'),
('BRA', 'Brazil', 'บราซิล', 'BR'),
('BRB', 'Barbados', 'บาร์เบโดส', 'BB'),
('BRN', 'Brunei', 'บรูไน', 'BN'),
('BTN', 'Bhutan', 'ภูฏาน', 'BT'),
('BVT', 'Bouvet Island', 'เกาะบูเว็ต', 'BV'),
('BWA', 'Botswana', 'บอตสวานา', 'BW'),
('CAF', 'Central African Republic', 'สาธารณรัฐแอฟริกากลาง', 'CF'),
('CAN', 'Canada', 'แคนาดา', 'CA'),
('CCK', 'Cocos [Keeling] Islands', 'เกาะโคโคส [คีลิง]', 'CC'),
('CHE', 'Switzerland', 'สวิสเซอร์แลนด์', 'CH'),
('CHL', 'Chile', 'ชิลี', 'CL'),
('CHN', 'China', 'จีน', 'CN'),
('CIV', 'Ivory Coast', 'ไอวอรี่โคสต์', 'CI'),
('CMR', 'Cameroon', 'แคเมอรูน', 'CM'),
('COD', 'Democratic Republic of the Congo', 'สาธารณรัฐประชาธิปไตยคองโก', 'CD'),
('COG', 'Republic of the Congo', 'สาธารณรัฐคองโก', 'CG'),
('COK', 'Cook Islands', 'หมู่เกาะคุก', 'CK'),
('COL', 'Colombia', 'โคลอมเบีย', 'CO'),
('COM', 'Comoros', 'คอโมโรส', 'KM'),
('CPV', 'Cape Verde', 'เคปเวิร์ด', 'CV'),
('CRI', 'Costa Rica', 'คอสตาริกา\n', 'CR'),
('CUB', 'Cuba', 'คิวบา', 'CU'),
('CUW', 'Curacao', 'คูราเซา\n', 'CW'),
('CXR', 'Christmas Island', 'เกาะคริสต์มาส', 'CX'),
('CYM', 'Cayman Islands', 'หมู่เกาะเคย์เเมน', 'KY'),
('CYP', 'Cyprus', 'ไซปรัส', 'CY'),
('CZE', 'Czech Republic', 'สาธารณรัฐเช็ก', 'CZ'),
('DEU', 'Germany', 'เยอรมันนี', 'DE'),
('DJI', 'Djibouti', 'จิบูตี', 'DJ'),
('DMA', 'Dominica', 'โดมินิกา', 'DM'),
('DNK', 'Denmark', 'เดนมาร์ก', 'DK'),
('DOM', 'Dominican Republic', 'สาธารณรัฐโดมินิกัน\n', 'DO'),
('DZA', 'Algeria', 'แอลจีเรีย', 'DZ'),
('ECU', 'Ecuador', 'เอกวาดอร์', 'EC'),
('EGY', 'Egypt', 'อียิปต์', 'EG'),
('ERI', 'Eritrea', 'เอริเทรี', 'ER'),
('ESH', 'Western Sahara', 'ซาฮาร่าตะวันตก', 'EH'),
('ESP', 'Spain', 'สเปน', 'ES'),
('EST', 'Estonia', 'เอสโตเนีย', 'EE'),
('ETH', 'Ethiopia', 'สาธารณรัฐเอธิโอเปีย', 'ET'),
('FIN', 'Finland', 'ฟินแลนด์', 'FI'),
('FJI', 'Fiji', 'ฟิจิ', 'FJ'),
('FLK', 'Falkland Islands', 'หมู่เกาะฟอล์คแลนด์', 'FK'),
('FRA', 'France', 'ฝรั่งเศส', 'FR'),
('FRO', 'Faroe Islands', 'หมู่เกาะแฟโร', 'FO'),
('FSM', 'Micronesia', 'ไมโครนีเซีย', 'FM'),
('GAB', 'Gabon', 'กาบอง', 'GA'),
('GBR', 'United Kingdom', 'อังกฤษ (สหราชอาณาจักร)', 'GB'),
('GEO', 'Georgia', 'จอร์เจีย', 'GE'),
('GGY', 'Guernsey', 'เกิร์นซีย์', 'GG'),
('GHA', 'Ghana', 'เกิร์นซีย์', 'GH'),
('GIB', 'Gibraltar', 'ยิบรอลตา', 'GI'),
('GIN', 'Guinea', 'กินี', 'GN'),
('GLP', 'Guadeloupe', 'กัวเดลุฟ', 'GP'),
('GMB', 'Gambia', 'แกมเบีย', 'GM'),
('GNB', 'Guinea-Bissau', 'กินีบิสเซา', 'GW'),
('GNQ', 'Equatorial Guinea', 'อิเควทอเรียลกินี', 'GQ'),
('GRC', 'Greece', 'กรีซ', 'GR'),
('GRD', 'Grenada', 'เกรเนดา ', 'GD'),
('GRL', 'Greenland', 'กรีนแลนด์', 'GL'),
('GTM', 'Guatemala', 'กัวเตมาลา', 'GT'),
('GUF', 'French Guiana', 'เฟรนช์เกียนา', 'GF'),
('GUM', 'Guam', 'เกาะกวม', 'GU'),
('GUY', 'Guyana', 'กายอานา', 'GY'),
('HKG', 'Hong Kong', 'ฮ่องกง', 'HK'),
('HMD', 'Heard Island and McDonald Islands', 'เกาะเฮิร์ดและหมู่เกาะแมคโดนัลด์', 'HM'),
('HND', 'Honduras', 'ฮอนดูรัส', 'HN'),
('HRV', 'Croatia', 'โครเอเชีย', 'HR'),
('HTI', 'Haiti', 'เฮติ', 'HT'),
('HUN', 'Hungary', 'ฮังการี', 'HU'),
('IDN', 'Indonesia', 'อินโดนีเซีย', 'ID'),
('IMN', 'Isle of Man', 'เกาะแมน', 'IM'),
('IND', 'India', 'อินเดีย', 'IN'),
('IOT', 'British Indian Ocean Territory', 'หมู่เกาะบริติชเวอร์จิน', 'IO'),
('IRL', 'Ireland', 'ไอร์แลนด์', 'IE'),
('IRN', 'Iran', 'อิหร่าน', 'IR'),
('IRQ', 'Iraq', 'อิรัก', 'IQ'),
('ISL', 'Iceland', 'ประเทศไอซ์แลนด์', 'IS'),
('ISR', 'Israel', 'อิสราเอล', 'IL'),
('ITA', 'Italy', 'อิตาลี', 'IT'),
('JAM', 'Jamaica', 'เกาะจาเมกา', 'JM'),
('JEY', 'Jersey', 'นิวเจอร์ซีย์', 'JE'),
('JOR', 'Jordan', 'จอร์แดน', 'JO'),
('JPN', 'Japan', 'ญี่ปุ่น', 'JP'),
('KAZ', 'Kazakhstan', 'คาซัคสถาน', 'KZ'),
('KEN', 'Kenya', 'เคนย่า', 'KE'),
('KGZ', 'Kyrgyzstan', 'คีร์กีสถาน', 'KG'),
('KHM', 'Cambodia', 'กัมพูชา', 'KH'),
('KIR', 'Kiribati', 'คิริบาส', 'KI'),
('KNA', 'Saint Kitts and Nevis', 'เซนต์คิตส์และเนวิส', 'KN'),
('KOR', 'South Korea', 'เกาหลีใต้', 'KR'),
('KWT', 'Kuwait', 'คูเวต', 'KW'),
('LAO', 'Laos', 'ลาว', 'LA'),
('LBN', 'Lebanon', 'เลบานอน', 'LB'),
('LBR', 'Liberia', 'ประเทศไลบีเรีย', 'LR'),
('LBY', 'Libya', 'ลิบยา', 'LY'),
('LCA', 'Saint Lucia', 'เซนต์ลูเซีย', 'LC'),
('LIE', 'Liechtenstein', 'นสไตน์', 'LI'),
('LKA', 'Sri Lanka', 'ศรีลังกา', 'LK'),
('LSO', 'Lesotho', 'เลโซโท', 'LS'),
('LTU', 'Lithuania', 'ลิธัวเนีย', 'LT'),
('LUX', 'Luxembourg', 'ลักเซมเบิร์ก', 'LU'),
('LVA', 'Latvia', 'ลัตเวีย', 'LV'),
('MAC', 'Macao', 'มาเก๊า', 'MO'),
('MAF', 'Saint Martin', 'เซนต์มาร์ติน', 'MF'),
('MAR', 'Morocco', 'โมร็อกโก', 'MA'),
('MCO', 'Monaco', 'โมนาโก', 'MC'),
('MDA', 'Moldova', 'มอลโดวา', 'MD'),
('MDG', 'Madagascar', 'มาดากัสการ์', 'MG'),
('MDV', 'Maldives', 'มัลดีฟส์', 'MV'),
('MEX', 'Mexico', 'เม็กซิโก', 'MX'),
('MHL', 'Marshall Islands', 'หมู่เกาะมาร์แชลล์', 'MH'),
('MKD', 'Macedonia', 'มาซิโดเนีย', 'MK'),
('MLI', 'Mali', 'มาลี', 'ML'),
('MLT', 'Malta', 'เกาะมอลตา', 'MT'),
('MMR', 'Myanmar [Burma]', 'พม่า', 'MM'),
('MNE', 'Montenegro', 'มอนเตเนโก', 'ME'),
('MNG', 'Mongolia', 'มองโกเลีย', 'MN'),
('MNP', 'Northern Mariana Islands', 'หมู่เกาะนอร์เทิร์นมาเรียนา', 'MP'),
('MOZ', 'Mozambique', 'โมซัมบิก', 'MZ'),
('MRT', 'Mauritania', 'มอริเตเนีย', 'MR'),
('MSR', 'Montserrat', 'มอนต์เซอร์รัต', 'MS'),
('MTQ', 'Martinique', 'มาร์ตินีก', 'MQ'),
('MUS', 'Mauritius', 'มอริเชียส', 'MU'),
('MWI', 'Malawi', 'มาลาวี', 'MW'),
('MYS', 'Malaysia', 'มาเลเซีย', 'MY'),
('MYT', 'Mayotte', 'มายอต', 'YT'),
('NAM', 'Namibia', 'นามิเบีย', 'NA'),
('NCL', 'New Caledonia', 'นิวแคลิโดเนีย', 'NC'),
('NER', 'Niger', 'ไนเธอร์', 'NE'),
('NFK', 'Norfolk Island', 'เกาะนอร์ฟอล์ก', 'NF'),
('NGA', 'Nigeria', 'ไนจีเรีย', 'NG'),
('NIC', 'Nicaragua', 'นิการากัว', 'NI'),
('NIU', 'Niue', 'นีอูเอ', 'NU'),
('NLD', 'Netherlands', 'เนเธอร์แลนด์', 'NL'),
('NOR', 'Norway', 'นอร์เวย์', 'NO'),
('NPL', 'Nepal', 'เนปาล', 'NP'),
('NRU', 'Nauru', 'นาอูรู', 'NR'),
('NZL', 'New Zealand', 'นิวซีแลนด์', 'NZ'),
('OMN', 'Oman', 'โอมาน', 'OM'),
('PAK', 'Pakistan', 'ปากีสถาน', 'PK'),
('PAN', 'Panama', 'ปานามา', 'PA'),
('PCN', 'Pitcairn Islands', 'หมู่เกาะพิตแคร์น', 'PN'),
('PER', 'Peru', 'เปรู', 'PE'),
('PHL', 'Philippines', 'ฟิลิปปินส์', 'PH'),
('PLW', 'Palau', 'ปาเลา', 'PW'),
('PNG', 'Papua New Guinea', 'ปาปัวนิวกินี', 'PG'),
('POL', 'Poland', 'โปแลนด์', 'PL'),
('PRI', 'Puerto Rico', 'เปอร์โตริโก', 'PR'),
('PRK', 'North Korea', 'เกาหลีเหนือ', 'KP'),
('PRT', 'Portugal', 'โปรตุเกส', 'PT'),
('PRY', 'Paraguay', 'ปารากวัย', 'PY'),
('PSE', 'Palestine', 'ปาเลสไตน์', 'PS'),
('PYF', 'French Polynesia', 'เฟรนช์โปลินีเซีย', 'PF'),
('QAT', 'Qatar', 'กาตาร์', 'QA'),
('REU', 'Réunion', 'เรอูนียง', 'RE'),
('ROU', 'Romania', 'โรมาเนีย', 'RO'),
('RUS', 'Russia', 'รัสเซีย', 'RU'),
('RWA', 'Rwanda', 'รวันดา', 'RW'),
('SAU', 'Saudi Arabia', 'ซาอุดิอาราเบีย', 'SA'),
('SDN', 'Sudan', 'ซูดาน', 'SD'),
('SEN', 'Senegal', 'เซเนกัล', 'SN'),
('SGP', 'Singapore', 'สิงคโปร์', 'SG'),
('SGS', 'South Georgia and the South Sandwich Islands', 'หมู่เกาะเซาท์จอร์เจียและหมู่เกาะเซาท์แซนด์วิช', 'GS'),
('SHN', 'Saint Helena', 'เซนต์เฮเลนา', 'SH'),
('SJM', 'Svalbard and Jan Mayen', 'สฟาลบาร์และยานไมเอน', 'SJ'),
('SLB', 'Solomon Islands', 'หมู่เกาะโซโลมอน', 'SB'),
('SLE', 'Sierra Leone', 'เซียร์ราลีโอน', 'SL'),
('SLV', 'El Salvador', 'เอลซัลวาดอร์', 'SV'),
('SMR', 'San Marino', 'ซานมาริโน', 'SM'),
('SOM', 'Somalia', 'โซมาเลีย', 'SO'),
('SPM', 'Saint Pierre and Miquelon', 'เซนต์ปิแอร์และมีเกอลง', 'PM'),
('SRB', 'Serbia', 'เซอร์เบีย', 'RS'),
('SSD', 'South Sudan', 'ซูดานใต้', 'SS'),
('STP', 'São Tomé and Príncipe', 'เซาตูเมและปรินซิปี', 'ST'),
('SUR', 'Suriname', 'ซูรินาเม', 'SR'),
('SVK', 'Slovakia', 'สโลวะเกีย', 'SK'),
('SVN', 'Slovenia', 'สโลวีเนีย', 'SI'),
('SWE', 'Sweden', 'สวีเดน', 'SE'),
('SWZ', 'Swaziland', 'สวาซิแลนด์', 'SZ'),
('SXM', 'Sint Maarten', 'เกาะเซนต์มาร์ติน', 'SX'),
('SYC', 'Seychelles', 'เซเชลส์', 'SC'),
('SYR', 'Syria', 'ซีเรีย', 'SY'),
('TCA', 'Turks and Caicos Islands', 'หมู่เกาะเติกส์และหมู่เกาะเคคอส', 'TC'),
('TCD', 'Chad', 'ชาด', 'TD'),
('TGO', 'Togo', 'โตโก', 'TG'),
('THA', 'Thailand', 'ไทย', 'TH'),
('TJK', 'Tajikistan', 'ทาจิกิสถาน', 'TJ'),
('TKL', 'Tokelau', 'โตเกเลา', 'TK'),
('TKM', 'Turkmenistan', 'เติร์กเมนิสถาน', 'TM'),
('TLS', 'East Timor', 'ติมอร์ตะวันออก', 'TL'),
('TON', 'Tonga', 'ตองกา', 'TO'),
('TTO', 'Trinidad and Tobago', 'ตรินิแดดและโตเบโก', 'TT'),
('TUN', 'Tunisia', 'ตูนิเซีย', 'TN'),
('TUR', 'Turkey', 'ตุรกี', 'TR'),
('TUV', 'Tuvalu', 'ตูวาลู', 'TV'),
('TWN', 'Taiwan', 'ไต้หวัน', 'TW'),
('TZA', 'Tanzania', 'แทนซาเนีย', 'TZ'),
('UGA', 'Uganda', 'ยูกันดา', 'UG'),
('UKR', 'Ukraine', 'ยูเครน', 'UA'),
('UMI', 'U.S. Minor Outlying Islands', 'เกาะนอกรีตของสหรัฐฯ', 'UM'),
('URY', 'Uruguay', 'อุรุกวัย', 'UY'),
('USA', 'United States', 'สหรัฐอเมริกา', 'US'),
('UZB', 'Uzbekistan', 'อุซเบกิสถาน', 'UZ'),
('VAT', 'Vatican City', 'เมืองวาติกัน', 'VA'),
('VCT', 'Saint Vincent and the Grenadines', 'เซนต์วินเซนต์และเกรนาดีนส์', 'VC'),
('VEN', 'Venezuela', 'เวเนซุเอลา', 'VE'),
('VGB', 'British Virgin Islands', 'หมู่เกาะบริติชเวอร์จิน', 'VG'),
('VIR', 'U.S. Virgin Islands', 'หมู่เกาะเวอร์จินของสหรัฐอเมริกา', 'VI'),
('VNM', 'Vietnam', 'เวียดนาม', 'VN'),
('VUT', 'Vanuatu', 'วานูอาตู', 'VU'),
('WLF', 'Wallis and Futuna', 'วาลลิสและฟุตูนา', 'WF'),
('WSM', 'Samoa', 'ซามัว', 'WS'),
('XKX', 'Kosovo', 'โคโซโว', 'XK'),
('YEM', 'Yemen', 'เยเมน', 'YE'),
('ZAF', 'South Africa', 'แอฟริกาใต้', 'ZA'),
('ZMB', 'Zambia', 'แซมเบีย', 'ZM'),
('ZWE', 'Zimbabwe', 'ประเทศซิมบับเว', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `tb_facilities`
--

CREATE TABLE `tb_facilities` (
  `facilities_id` int(5) NOT NULL,
  `facilities_name_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `facilities_name_th` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `facilities_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `facilities_detail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `facilities_detail_en` text COLLATE utf8_unicode_ci NOT NULL,
  `facilities_detail_1_th` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `facilities_detail_1_en` text COLLATE utf8_unicode_ci NOT NULL,
  `facilities_detail_2_th` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `facilities_detail_2_en` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_facilities`
--

INSERT INTO `tb_facilities` (`facilities_id`, `facilities_name_en`, `facilities_name_th`, `facilities_img`, `facilities_detail_th`, `facilities_detail_en`, `facilities_detail_1_th`, `facilities_detail_1_en`, `facilities_detail_2_th`, `facilities_detail_2_en`) VALUES
(1, 'CONTACT', 'ติดต่อ ', '010320191023090103201910230986746399.jpg', 'คุณสามารถติดต่อทรู อินเทอร์เน็ตเพื่อสอบถาม                                   ', 'You can contact True. Internet to inquire', 'พนักงานตอนรับ', 'receptionist', 'เว็บไซต์', ' Website'),
(2, 'Deliicious Foods', 'อาหารอร่อย', '01032019102317010320191023171668993432.jpg', 'สด สะอาด อร่อย ปลอดภัย', 'We\'ve scoured the planet', 'ร้านกาแฟ', 'coffee shop', 'อาหาร', ' Food'),
(4, ' Parking', 'ที่จอดรถ', '01032019102340010320191023401340494504.jpg', 'ปัญหาขับรถยนต์ออกมาจากบ้านแล้วไม่มีที่จอดรถ', 'Nowadays, many people have to face', 'ที่จอดรถของโรงแรม', 'Hotel parking', 'พนักงานรักษาความปลอดภัย', 'Security guard');

-- --------------------------------------------------------

--
-- Table structure for table `tb_facilities_head`
--

CREATE TABLE `tb_facilities_head` (
  `facilities_head_id` int(5) NOT NULL,
  `facilities_head_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facilities_head_sub_title_en` text COLLATE utf8_unicode_ci NOT NULL,
  `facilities_head_title_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facilities_head_sub_title_th` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_facilities_head`
--

INSERT INTO `tb_facilities_head` (`facilities_head_id`, `facilities_head_title_en`, `facilities_head_sub_title_en`, `facilities_head_title_th`, `facilities_head_sub_title_th`) VALUES
(1, 'FACILITIES', 't hotel urban hotel, sardinia A dynamic hotel with diversified amenities and activities, a vibrant approach to hospitality and contemporary elegant design. Our branding approach reflects the vitality of this urban hotel with a vibrant colour palette, clean design and engaging photography which highlights the sophistication and modern luxuries offered to the hotel guest.\r\n          ', 'สิ่งอำนวยความสะดวก', 'โรงแรมในเมืองซาร์ดิเนียโรงแรมที่มีชีวิตชีวาพร้อมสิ่งอำนวยความสะดวกและกิจกรรมที่หลากหลายวิธีการที่มีชีวิตชีวาในการต้อนรับและการออกแบบที่หรูหราร่วมสมัย วิธีการสร้างแบรนด์ของเราสะท้อนให้เห็นถึงความมีชีวิตชีวาของโรงแรมในเมืองแห่งนี้ด้วยโทนสีที่สดใสการออกแบบที่สะอาดตา ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gallery`
--

CREATE TABLE `tb_gallery` (
  `gallery_id` int(5) NOT NULL,
  `room_id` int(5) NOT NULL,
  `gallery_name_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gallery_name_th` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gallery_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gallery_type_id` int(5) NOT NULL,
  `gallery_recommened` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_gallery`
--

INSERT INTO `tb_gallery` (`gallery_id`, `room_id`, `gallery_name_en`, `gallery_name_th`, `gallery_img`, `gallery_type_id`, `gallery_recommened`) VALUES
(130, 1, '', '', '0103201910132101032019101321780476137.jpg', 1, 0),
(131, 1, '', '', '01032019101332010320191013321382937170.jpg', 1, 0),
(132, 1, '', '', '01032019101347010320191013471265094419.jpg', 1, 0),
(133, 1, '', '', '01032019101355010320191013551534182560.jpg', 1, 0),
(134, 2, '', '', '0103201910144301032019101443889379664.jpg', 1, 0),
(135, 2, '', '', '0103201910145701032019101457732775711.jpg', 1, 0),
(136, 2, '', '', '01032019101502010320191015021419357333.jpg', 1, 0),
(137, 2, '', '', '0103201910151001032019101510437264046.jpg', 1, 0),
(138, 2, '', '', '01032019101516010320191015161123517798.jpg', 1, 0),
(139, 2, '', '', '0103201910152101032019101521247942307.jpg', 1, 0),
(140, 3, '', '', '01032019101550010320191015501484653176.jpg', 1, 0),
(141, 3, '', '', '0103201910162201032019101622657354574.jpg', 1, 0),
(142, 3, '', '', '01032019101630010320191016301692736556.jpg', 1, 0),
(143, 4, '', '', '01032019101708010320191017081474810164.jpg', 1, 0),
(144, 4, '', '', '0103201910180601032019101806648972515.jpg', 1, 0),
(145, 4, '', '', '01032019101817010320191018171651079276.jpg', 1, 0),
(146, 5, '', '', '01032019101851010320191018511915206661.jpg', 1, 0),
(147, 5, '', '', '0103201910191601032019101916123096939.jpg', 1, 0),
(148, 5, '', '', '0103201910192301032019101923359471755.jpg', 1, 0),
(149, 5, '', '', '01032019101948010320191019481234241327.jpg', 1, 0),
(150, 5, '', '', '01032019101958010320191019581542587847.jpg', 1, 0),
(151, 5, '', '', '01032019102005010320191020051791638414.jpg', 1, 0),
(152, 6, '', '', '0103201910203301032019102033719694724.jpg', 1, 0),
(153, 6, '', '', '01032019102103010320191021031614393476.jpg', 1, 0),
(154, 6, '', '', '0103201910211701032019102117455774657.jpg', 1, 0),
(155, 6, '', '', '0103201910213401032019102134856415653.jpg', 1, 0),
(156, 6, '', '', '0103201910214201032019102142231823441.jpg', 1, 0),
(157, 6, '', '', '01032019102152010320191021521248803603.jpg', 1, 0),
(158, 7, '', '', '0103201910221401032019102214252258466.jpg', 1, 0),
(159, 7, '', '', '0103201910223401032019102234347645212.jpg', 1, 0),
(160, 7, '', '', '0103201910224401032019102244415414842.jpg', 1, 0),
(161, 7, '', '', '01032019102250010320191022501544468178.jpg', 1, 0),
(162, 0, '', '', '01032019120050010320191200501758568650.jpg', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gallery_head`
--

CREATE TABLE `tb_gallery_head` (
  `gallery_head_id` int(5) NOT NULL,
  `gallery_head_title_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gallery_head_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gallery_head_sub_title_th` text COLLATE utf8_unicode_ci NOT NULL,
  `gallery_head_sub_title_en` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_gallery_head`
--

INSERT INTO `tb_gallery_head` (`gallery_head_id`, `gallery_head_title_th`, `gallery_head_title_en`, `gallery_head_sub_title_th`, `gallery_head_sub_title_en`) VALUES
(1, '\nกันตพัฒน์ เพลส', 'GUNTHPAT PLACE', 'กันทภัทรเพลสอพาร์ทเมนท์สุดหรูตั้งอยู่ด้านหลังเทสโก้โลตัสพร้อมอาคารระบบความปลอดภัยเต็มรูปแบบแวดล้อมไปด้วยสถานที่อำนวยความสะดวกมากมายเช่น THE MALL โรงพยาบาลกรุงเทพ - นครราชสีมาโรงเรียนธนาคาร ฯลฯ ห้องพักทุกห้องประกอบด้วยเตียง 5 เตียง 2 โต๊ะ 1 ทีวี, ทีวี, ตู้เย็น, ตู้เสื้อผ้า, อ่างล้าง, ไฟเตียง, ฯลฯ', '\n                    Gunthpat Place Luxurious apartment is located right behind Tesco-Lotus with the full safety\n                    system building, surrounding with all convenience places such as THE MALL, Bangkok-Ratchasima\n                    Hospital, Schools, Bank etc. Every room type is including 5’bed, 2 Tables, 1TV stand, TV,\n                    Refrigerator, Closet, sink, bed light, etc,');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gallery_type`
--

CREATE TABLE `tb_gallery_type` (
  `gallery_type_id` int(5) NOT NULL,
  `gallery_type_name_th` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gallery_type_name_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_gallery_type`
--

INSERT INTO `tb_gallery_type` (`gallery_type_id`, `gallery_type_name_th`, `gallery_type_name_en`) VALUES
(1, 'ที่พัก', 'room'),
(2, 'สิ่งอำนวยความสะดวก', 'facilities'),
(3, 'สิ่งแวดล้อมด้วยรอบ', 'please');

-- --------------------------------------------------------

--
-- Table structure for table `tb_news`
--

CREATE TABLE `tb_news` (
  `news_id` int(5) NOT NULL,
  `news_name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_name_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_detail_en` text COLLATE utf8_unicode_ci NOT NULL,
  `news_detail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `news_img` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `news_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_news`
--

INSERT INTO `tb_news` (`news_id`, `news_name_en`, `news_name_th`, `news_detail_en`, `news_detail_th`, `news_img`, `news_date`) VALUES
(2, 'Lorem Ipsum is simply dummy', 'ดิจิทัล (Digital) เข้ามาเป็นส่วนหนึ่งของผู้คนในยุคนี้ จนเรียกกันว่า “ยุคดิจิทัล”', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'สามเหลี่ยมกลับหัว แสดงถึงการให้ความสำคัญกับประชาชนคนส่วนใหญ่ของประเทศ ลูกศรที่ชี้พุ่งขึ้นไป คือ การมุ่งหน้าไปสู่ “อนาคตใหม่” เครื่องหมายนี้จึงหมายถึง ประชาชนผู้ทรงอำนาจสูงสุดร่วมกันนำพาสังคมไทยก้าวไปสู่อนาคตใหม่', '01032019102445010320191024451429272984.jpg', '2019-03-01 03:24:45'),
(3, 'Contrary to popular belief', 'ทคโนโลยีดิจิทัลทำให้ผู้คนติดต่อสื่อสารกันได้อย่างใกล้ชิด เห็นหน้าเวลาพูดคุยกันทางสมาร์ทโฟน', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32', 'ตลอดช่วงทศวรรษที่ผ่านมาประเทศไทยวนเวียนอยู่ในความขัดแย้งทางการเมืองอย่างร้าวลึก กองทัพฉวยโอกาสเข้าครองอํานาจอยู่เสมอในยามที่บ้านเมืองมีวิกฤต ทำการรัฐประหารฉีกรัฐธรรมนูญซ้ำแล้วซ้ำเล่า โดยเฉลี่ยแทบจะทุกๆ 4 ปี ผู้คนต่างตกอยู่ในความรู้สึกหดหู่ สิ้นหวัง ไร้ทางออก การปกครองในระบอบประชาธิปไตยที่ประชาชนเป็นเจ้าของอำนาจสูงสุดไม่เคยถูกปล่อยให้เติบโต', '01032019102452010320191024521332505385.jpg', '2019-03-01 03:24:52'),
(4, 'Lorem Ipsum comes from sections', 'ข้อมูลจำนวนมาก ไม่ว่าจะอยู่ที่ใด เพียงมีสัญญาณอินเทอร์เน็ต (Internet) ไว-ไฟ (Wifi)', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32', 'ถึงเวลาแล้วที่จะต้องมีพลังใหม่เพื่อฟื้นความเชื่อมั่นในระบอบประชาธิปไตยให้กลับคืนมาอีกครั้ง นําพาประเทศไทยก้าวพ้นจากห้วงภาวะวิกฤติ นี่คือเหตุผลที่ทำให้เกิด \"พรรคอนาคตใหม่\" เพื่อสร้างประชาธิปไตยในประเทศ เพื่อเปลี่ยนแปลงและสร้างสรรค์สิ่งใหม่ที่ดีกว่าที่เป็นอยู่ และเพื่อปรับภูมิทัศน์การเมืองไทยให้ดีขึ้น', '01032019102501010320191025011646177632.jpg', '2019-03-01 03:25:01'),
(5, 'Lorem Ipsum is not simply random', 'อุปกรณ์แบบอะนาล็อก (Analog) สำหรับคนรุ่นวัยกลางคน หรือพวกเจน X และวัยผู้สูงอายุ เริ่มมีให้เห็นน้อยลง', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32', 'พรรคอนาคตใหม่จะมุ่งนําเสนอนโยบายก้าวหน้า กระจายอํานาจ ทลายการผูกขาดทางเศรษฐกิจ และเปิดโอกาสให้ประชาชนเข้าถึงทุน ทรัพยากร และสวัสดิการ โดยนโยบายของพรรค จะเกิดจาก  การวิเคราะห์วิจัยทางวิชาการ การมีส่วนร่วมของประชาชน เข้ารับฟังปัญหาในแต่ละพื้นที่ การศึกษาเปรียบเทียบตัวแบบจากหลายประเทศ ในการดำเนินกิจกรรมทางการเมือง พรรคอนาคตใหม่มองพรรคการเมืองอื่นเป็นคู่แข่ง ไม่ใช่ศัตรูทางการเมือง โดยเรามุ่งที่จะเอาชนะใจประชาชนด้วยนโยบาย ไม่ใช่การทำลายล้างกันอย่างไม่เลือกวิธีการ', '01032019102511010320191025111292277606.jpg', '2019-03-01 03:25:11'),
(6, 'comes from sections', 'ก้าวเข้าสู่ยุค IOT (Internet of Things) ที่นำอินเทอร์เน็ตไปเชื่อมต่อกับอุปกรณ์ต่างๆ', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32', 'ผู้บริหารพรรคเพียงไม่กี่คนไม่อาจกําหนดความเป็นไปของพรรคได้ ไม่อาจกําหนดตัวผู้สมัครสมาชิกสภาผู้แทนราษฎร (ส.ส.) ได้ตามอําเภอใจ และที่สำคัญคือ เงินที่ได้จากการระดมทุน รายรับ รายจ่าย จะถูกนํามาเปิดเผยต่อสาธารณะเพื่อสร้างความโปร่งใสและ เปิดโอกาสให้สังคมตรวจสอบได้  เมื่อสมาชิกทุกคนร่วมเป็นเจ้าของพรรคร่วมกันแล้ว พวกเขาก็ย่อมมีอํานาจในการตัดสินใจ มีส่วนร่วมในการกําหนดทิศทางของพรรค ตามการออกแบบโครงสร้างและการดําเนินการที่อยู่บนพื้นฐานของหลักการประชาธิปไตย การมีส่วนร่วม และการกระจายอํานาจ', '01032019102520010320191025201598371761.jpg', '2019-03-01 03:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `tb_room`
--

CREATE TABLE `tb_room` (
  `room_id` int(5) NOT NULL,
  `room_type_id` int(5) NOT NULL,
  `room_name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_sub_title_en` text COLLATE utf8_unicode_ci NOT NULL,
  `room_name_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_sub_title_th` text COLLATE utf8_unicode_ci NOT NULL,
  `room_price` decimal(10,2) NOT NULL,
  `room_amout` int(3) NOT NULL,
  `room_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `room_size_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_detail_1_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_detail_2_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_detail_3_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_facility_1_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_facility_2_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_size_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_detail_1_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_detail_2_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_detail_3_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_facility_1_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_facility_2_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_recommened` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_room`
--

INSERT INTO `tb_room` (`room_id`, `room_type_id`, `room_name_en`, `room_sub_title_en`, `room_name_th`, `room_sub_title_th`, `room_price`, `room_amout`, `room_img`, `room_size_th`, `room_detail_1_th`, `room_detail_2_th`, `room_detail_3_th`, `room_facility_1_th`, `room_facility_2_th`, `room_size_en`, `room_detail_1_en`, `room_detail_2_en`, `room_detail_3_en`, `room_facility_1_en`, `room_facility_2_en`, `room_recommened`) VALUES
(1, 1, 'Deluxe Room', 'apartment is located right behind Tesco-Lotus with the full safety system building, surrounding with all convenience places such as THE MALL, Bangkok-Ratchasima Hospital, Schools, Bank etc. Every room type is including 5&rsquo;bed, 2 Tables, 1TV stand, TV, Refrigerator, Closet, sink, bed light, etc,', 'ห้องดีลักซ์', 'อพาร์ทเมนท์สุดหรูตั้งอยู่ด้านหลังเทสโก้โลตัสพร้อมอาคารระบบความปลอดภัยเต็มรูปแบบแวดล้อมไปด้วยสถานที่อำนวยความสะดวกมากมายเช่น THE MALL โรงพยาบาลกรุงเทพ - นครราชสีมาโรงเรียนธนาคาร ฯลฯ ห้องพักทุกห้องประกอบด้วยเตียง 5 เตียง 2 โต๊ะ 1 ทีวี, ทีวี, ตู้เย็น, ตู้เสื้อผ้า, อ่างล้าง, ไฟเตียง, ฯลฯ', '2500.00', 0, '01032019101336010320191013361788071362.jpg', '38 ตารางเมตร', 'ผู้ใหญ่ 2 ท่าน + เด็ก 1 ท่าน', 'ระเบียงส่วนตัว', 'WIFI', 'โทรศัพท์', 'เครื่องปรับอากาศ', '38 square meters ', '2 adults + 1 child', 'Balcony', 'WIFI', 'TEL', 'AIR', 1),
(2, 2, 'President Room', 'apartment is located right behind Tesco-Lotus with the full safety system building, surrounding with all convenience places such as THE MALL, Bangkok-Ratchasima Hospital, Schools, Bank etc. Every room type is including 5&rsquo;bed, 2 Tables, 1TV stand, TV, Refrigerator, Closet, sink, bed light, etc,', 'ห้องเพรสซิเดนท์', 'อพาร์ทเมนท์สุดหรูตั้งอยู่ด้านหลังเทสโก้โลตัสพร้อมอาคารระบบความปลอดภัยเต็มรูปแบบแวดล้อมไปด้วยสถานที่อำนวยความสะดวกมากมายเช่น THE MALL โรงพยาบาลกรุงเทพ - นครราชสีมาโรงเรียนธนาคาร ฯลฯ ห้องพักทุกห้องประกอบด้วยเตียง 5 เตียง 2 โต๊ะ 1 ทีวี, ทีวี, ตู้เย็น, ตู้เสื้อผ้า, อ่างล้าง, ไฟเตียง, ฯลฯ', '3000.00', 0, '0103201910144901032019101449888363016.jpg', '38 ตารางเมตร', 'ผู้ใหญ่ 2 ท่าน + เด็ก 1 ท่าน', 'ระเบียงส่วนตัว', 'WIFI', 'โทรศัพท์', 'เครื่องปรับอากาศ', '38 square meters ', '2 adults + 1 child', 'Balcony', 'WIFI', 'TEL', 'AIR', 1),
(3, 3, ' Studio Room Corner Room', 'apartment is located right behind Tesco-Lotus with the full safety system building, surrounding with all convenience places such as THE MALL, Bangkok-Ratchasima Hospital, Schools, Bank etc. Every room type is including 5&rsquo;bed, 2 Tables, 1TV stand, TV, Refrigerator, Closet, sink, bed light, etc,', 'ห้องสตูดิโอ(มุม)', 'อพาร์ทเมนท์สุดหรูตั้งอยู่ด้านหลังเทสโก้โลตัสพร้อมอาคารระบบความปลอดภัยเต็มรูปแบบแวดล้อมไปด้วยสถานที่อำนวยความสะดวกมากมายเช่น THE MALL โรงพยาบาลกรุงเทพ - นครราชสีมาโรงเรียนธนาคาร ฯลฯ ห้องพักทุกห้องประกอบด้วยเตียง 5 เตียง 2 โต๊ะ 1 ทีวี, ทีวี, ตู้เย็น, ตู้เสื้อผ้า, อ่างล้าง, ไฟเตียง, ฯลฯ', '3500.00', 0, '01032019101556010320191015562012574896.jpg', '38 ตารางเมตร', 'ผู้ใหญ่ 2 ท่าน + เด็ก 1 ท่าน', 'ระเบียงส่วนตัว', 'WIFI', 'โทรศัพท์', 'เครื่องปรับอากาศ', '38 square meters ', '2 adults + 1 child', 'Balcony', 'WIFI', 'TEL', 'AIR', 0),
(4, 3, ' Studio Room Single', 'apartment is located right behind Tesco-Lotus with the full safety system building, surrounding with all convenience places such as THE MALL, Bangkok-Ratchasima Hospital, Schools, Bank etc. Every room type is including 5’bed, 2 Tables, 1TV stand, TV, Refrigerator, Closet, sink, bed light, etc,', 'ห้องสตูดิโอ(เดี่ยว)', 'อพาร์ทเมนท์สุดหรูตั้งอยู่ด้านหลังเทสโก้โลตัสพร้อมอาคารระบบความปลอดภัยเต็มรูปแบบแวดล้อมไปด้วยสถานที่อำนวยความสะดวกมากมายเช่น THE MALL โรงพยาบาลกรุงเทพ - นครราชสีมาโรงเรียนธนาคาร ฯลฯ ห้องพักทุกห้องประกอบด้วยเตียง 5 เตียง 2 โต๊ะ 1 ทีวี, ทีวี, ตู้เย็น, ตู้เสื้อผ้า, อ่างล้าง, ไฟเตียง, ฯลฯ', '3500.00', 5, '01032019101735010320191017351836633219.jpg', '38 ตารางเมตร', 'ผู้ใหญ่ 2 ท่าน + เด็ก 1 ท่าน', 'ระเบียงส่วนตัว', 'วิวห้องหรือสวน', 'บริการโทรศัพท์ห้อง', 'บริการ WiFi ฟรี', '38 square meters ', '2 adults + 1 child', 'Private balcony', 'City or garden view ', 'Room telephone service', 'Free WiFi service', 0),
(5, 3, ' Studio Room double', 'apartment is located right behind Tesco-Lotus with the full safety system building, surrounding with all convenience places such as THE MALL, Bangkok-Ratchasima Hospital, Schools, Bank etc. Every room type is including 5’bed, 2 Tables, 1TV stand, TV, Refrigerator, Closet, sink, bed light, etc,', 'ห้องสตูดิโอ(เตียงคู่)', 'อพาร์ทเมนท์สุดหรูตั้งอยู่ด้านหลังเทสโก้โลตัสพร้อมอาคารระบบความปลอดภัยเต็มรูปแบบแวดล้อมไปด้วยสถานที่อำนวยความสะดวกมากมายเช่น THE MALL โรงพยาบาลกรุงเทพ - นครราชสีมาโรงเรียนธนาคาร ฯลฯ ห้องพักทุกห้องประกอบด้วยเตียง 5 เตียง 2 โต๊ะ 1 ทีวี, ทีวี, ตู้เย็น, ตู้เสื้อผ้า, อ่างล้าง, ไฟเตียง, ฯลฯ', '4000.00', 5, '0103201910185901032019101859220955213.jpg', '38 ตารางเมตร', 'ผู้ใหญ่ 2 ท่าน + เด็ก 1 ท่าน', 'ระเบียงส่วนตัว', 'วิวห้องหรือสวน', 'บริการโทรศัพท์ห้อง', 'บริการ WiFi ฟรี', '38 square meters ', '2 adults + 1 child', 'Private balcony', 'City or garden view ', 'Room telephone service', 'Free WiFi service', 0),
(6, 4, 'Super President Room', 'apartment is located right behind Tesco-Lotus with the full safety system building, surrounding with all convenience places such as THE MALL, Bangkok-Ratchasima Hospital, Schools, Bank etc. Every room type is including 5’bed, 2 Tables, 1TV stand, TV, Refrigerator, Closet, sink, bed light, etc', ' ห้องซูเปอร์เพรสซิเดนท์', 'อพาร์ทเมนท์สุดหรูตั้งอยู่ด้านหลังเทสโก้โลตัสพร้อมอาคารระบบความปลอดภัยเต็มรูปแบบแวดล้อมไปด้วยสถานที่อำนวยความสะดวกมากมายเช่น THE MALL โรงพยาบาลกรุงเทพ - นครราชสีมาโรงเรียนธนาคาร ฯลฯ ห้องพักทุกห้องประกอบด้วยเตียง 5 เตียง 2 โต๊ะ 1 ทีวี, ทีวี, ตู้เย็น, ตู้เสื้อผ้า, อ่างล้าง, ไฟเตียง, ฯลฯ', '6000.00', 5, '010320191020470103201910204747629280.jpg', '38 ตารางเมตร', 'ผู้ใหญ่ 2 ท่าน + เด็ก 1 ท่าน', 'ระเบียงส่วนตัว', 'วิวห้องหรือสวน', 'บริการโทรศัพท์ห้อง', 'บริการ WiFi ฟรี', '38 square meters ', '2 adults + 1 child', 'Private balcony', 'City or garden view ', 'Room telephone service', 'Free WiFi service', 0),
(7, 6, 'VIP Room', 'apartment is located right behind Tesco-Lotus with the full safety system building, surrounding with all convenience places such as THE MALL, Bangkok-Ratchasima Hospital, Schools, Bank etc. Every room type is including 5’bed, 2 Tables, 1TV stand, TV, Refrigerator, Closet, sink, bed light, etc,', 'ห้องวีไอพี', 'อพาร์ทเมนท์สุดหรูตั้งอยู่ด้านหลังเทสโก้โลตัสพร้อมอาคารระบบความปลอดภัยเต็มรูปแบบแวดล้อมไปด้วยสถานที่อำนวยความสะดวกมากมายเช่น THE MALL โรงพยาบาลกรุงเทพ - นครราชสีมาโรงเรียนธนาคาร ฯลฯ ห้องพักทุกห้องประกอบด้วยเตียง 5 เตียง 2 โต๊ะ 1 ทีวี, ทีวี, ตู้เย็น, ตู้เสื้อผ้า, อ่างล้าง, ไฟเตียง, ฯลฯ', '8000.00', 3, '01032019102224010320191022241975393199.jpg', '38 ตารางเมตร', 'ผู้ใหญ่ 2 ท่าน + เด็ก 1 ท่าน', 'ระเบียงส่วนตัว', 'วิวห้องหรือสวน', 'บริการโทรศัพท์ห้อง', 'บริการ WiFi ฟรี', '38 square meters ', '2 adults + 1 child', 'Private balcony', 'City or garden view ', 'Room telephone service', 'Free WiFi service', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_room_type`
--

CREATE TABLE `tb_room_type` (
  `room_type_id` int(5) NOT NULL,
  `room_type_name_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_type_name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_room_type`
--

INSERT INTO `tb_room_type` (`room_type_id`, `room_type_name_th`, `room_type_name_en`) VALUES
(1, 'ห้องดีลักซ์\n', 'Deluxe Room'),
(2, ' ห้องเพรสซิเดนท์', 'President Room'),
(3, 'ห้องสตูดิโอ', 'Studio Room  '),
(4, ' ห้องซูเปอร์เพรสซิเดนท์', 'Super President Room'),
(6, 'ห้องวีไอพี', 'VIP Room');

-- --------------------------------------------------------

--
-- Table structure for table `tb_slide`
--

CREATE TABLE `tb_slide` (
  `slide_id` int(3) NOT NULL,
  `slide_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slide_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slide_sub_title_en` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `slide_title_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slide_sub_title_th` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `slide_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_slide`
--

INSERT INTO `tb_slide` (`slide_id`, `slide_img`, `slide_title_en`, `slide_sub_title_en`, `slide_title_th`, `slide_sub_title_th`, `slide_link`) VALUES
(1, '010320191029470103201910294711707773.jpg', 'GUNTHPAT PLACE', 'A place to experience and enjoy life\r\n', 'กันตพัฒน์ เพลส', 'หรูหรากับระบบความปลอดภัยเต็มรูปแบบ', 'https://www.youtube.com/watch?v=1AszE9-ikOU'),
(2, '01032019103000010320191030001047765770.jpg', 'Dream Stateroom', 'other entity or phenomenon vulnerable to unwanted change by its environment.                                                                                                                      ', 'ห้องนอน', 'เอนทิตีหรือปรากฏการณ์อื่น ๆ ที่เสี่ยงต่อการเปลี่ยนแปลงที่ไม่พึงประสงค์จากสภาพแวดล้อม', 'https://youtu.be/JZKlSYWlW54');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `user_firstname` varchar(45) DEFAULT NULL,
  `user_lastname` varchar(45) DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_facebook` varchar(200) NOT NULL,
  `user_line` varchar(100) NOT NULL,
  `user_username` varchar(45) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  `user_address` varchar(200) DEFAULT NULL,
  `user_district` varchar(100) DEFAULT NULL,
  `user_amphur` varchar(100) DEFAULT NULL,
  `user_province` varchar(100) DEFAULT NULL,
  `user_zipcode` varchar(20) DEFAULT NULL,
  `user_image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_type_id`, `user_firstname`, `user_lastname`, `user_phone`, `user_email`, `user_facebook`, `user_line`, `user_username`, `user_password`, `user_address`, `user_district`, `user_amphur`, `user_province`, `user_zipcode`, `user_image`) VALUES
(2, 1, 'มนัสวี', 'เข่งพิมล', '0982189898', 'Manadswee@hotmail.com', 'www.facebook.com/manadsave', '098-218-9898', 'test', 'test123456', '68', 'บ้านใหม่', 'หนองบุญมาก', 'โคราช', '30410', ''),
(3, 1, 'ส้มฉุน', 'เทกระโทก', '0899589651', 'Som@gmail.com', 'www.facebook.com/som', '089-958-9651', 'root', 'root123456', '215', 'เพ็กใหญ่', 'พล', 'ขอนแก่น', '10420', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_type`
--

CREATE TABLE `tb_user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user_type`
--

INSERT INTO `tb_user_type` (`user_type_id`, `user_type_name`) VALUES
(1, 'ผู้ดูเเล'),
(2, 'ผู้ใช้งาน');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_about_us`
--
ALTER TABLE `tb_about_us`
  ADD PRIMARY KEY (`about_us_id`);

--
-- Indexes for table `tb_book`
--
ALTER TABLE `tb_book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tb_contact_head`
--
ALTER TABLE `tb_contact_head`
  ADD PRIMARY KEY (`contact_head_id`);

--
-- Indexes for table `tb_contact_title`
--
ALTER TABLE `tb_contact_title`
  ADD PRIMARY KEY (`contact_title_id`);

--
-- Indexes for table `tb_contact_type`
--
ALTER TABLE `tb_contact_type`
  ADD PRIMARY KEY (`contact_type_id`);

--
-- Indexes for table `tb_contact_us`
--
ALTER TABLE `tb_contact_us`
  ADD PRIMARY KEY (`contact_us_id`);

--
-- Indexes for table `tb_country`
--
ALTER TABLE `tb_country`
  ADD PRIMARY KEY (`ct_code`);

--
-- Indexes for table `tb_facilities`
--
ALTER TABLE `tb_facilities`
  ADD PRIMARY KEY (`facilities_id`);

--
-- Indexes for table `tb_facilities_head`
--
ALTER TABLE `tb_facilities_head`
  ADD PRIMARY KEY (`facilities_head_id`);

--
-- Indexes for table `tb_gallery`
--
ALTER TABLE `tb_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `tb_gallery_head`
--
ALTER TABLE `tb_gallery_head`
  ADD PRIMARY KEY (`gallery_head_id`);

--
-- Indexes for table `tb_gallery_type`
--
ALTER TABLE `tb_gallery_type`
  ADD PRIMARY KEY (`gallery_type_id`);

--
-- Indexes for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tb_room`
--
ALTER TABLE `tb_room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `tb_room_type`
--
ALTER TABLE `tb_room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `tb_slide`
--
ALTER TABLE `tb_slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_user_type`
--
ALTER TABLE `tb_user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_about_us`
--
ALTER TABLE `tb_about_us`
  MODIFY `about_us_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_book`
--
ALTER TABLE `tb_book`
  MODIFY `book_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `contact_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_contact_head`
--
ALTER TABLE `tb_contact_head`
  MODIFY `contact_head_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_contact_title`
--
ALTER TABLE `tb_contact_title`
  MODIFY `contact_title_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_contact_type`
--
ALTER TABLE `tb_contact_type`
  MODIFY `contact_type_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_contact_us`
--
ALTER TABLE `tb_contact_us`
  MODIFY `contact_us_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_facilities`
--
ALTER TABLE `tb_facilities`
  MODIFY `facilities_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_facilities_head`
--
ALTER TABLE `tb_facilities_head`
  MODIFY `facilities_head_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_gallery`
--
ALTER TABLE `tb_gallery`
  MODIFY `gallery_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `tb_gallery_head`
--
ALTER TABLE `tb_gallery_head`
  MODIFY `gallery_head_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_gallery_type`
--
ALTER TABLE `tb_gallery_type`
  MODIFY `gallery_type_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `news_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_room`
--
ALTER TABLE `tb_room`
  MODIFY `room_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_room_type`
--
ALTER TABLE `tb_room_type`
  MODIFY `room_type_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_slide`
--
ALTER TABLE `tb_slide`
  MODIFY `slide_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_user_type`
--
ALTER TABLE `tb_user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
