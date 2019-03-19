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
(12, 'ผู้ขาย / อาจารย์', 'SELLER / LESSOR', '28022019155707-3305164-image2.png', 'Penthouse apartment for sale located on Iancu Nicolae Road. Wit New Darwin suburb Muirhead &ndash; which came in at number two with 49.7% price growth &ndash; and rapidly growing new Melbourne area, Clyde North, are examples of suburbs with high development, expansion potential and subsequent shifts in supply and demand Penthouse apartment for sale located on Iancu Nicolae Road. Wit New Darwin suburb Muirhead &ndash; which came in at number two with 49.7% price growth &ndash; and rapidlyrapidly growing new Melbourne area, Clyde North, are examples of suburbs with high development, expansion potential and subsequent shifts in supply and demand', 'Counter Service Pay ครบทุกการจ่ายบิลออนไลน์ ค่าน้ำ ค่าไฟ ค่าโทรศัพท์ และอื่นๆด้วยบัตรเครดิต ได้ทุกที่ ทุกเวลา &middot; All Bill บริการสะดวกจ่ายในทุกเรื่อง รับชำระบิลค่าสินค้า ...'),
(13, 'ผู้ขาย / อาจารย์', 'SELLER / LESSOR', '28022019155714-3305164-image2.png', 'Counter Service Pay ครบทุกการจ่ายบิลออนไลน์ ค่าน้ำ ค่าไฟ ค่าโทรศัพท์ และอื่นๆด้วยบัตรเครดิต ได้ทุกที่ ทุกเวลา &middot; All Bill บริการสะดวกจ่ายในทุกเรื่อง รับชำระบิลค่าสินค้า ...', 'Counter Service Pay ครบทุกการจ่ายบิลออนไลน์ ค่าน้ำ ค่าไฟ ค่าโทรศัพท์ และอื่นๆด้วยบัตรเครดิต ได้ทุกที่ ทุกเวลา &middot; All Bill บริการสะดวกจ่ายในทุกเรื่อง รับชำระบิลค่าสินค้า ...');

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
  MODIFY `services_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
