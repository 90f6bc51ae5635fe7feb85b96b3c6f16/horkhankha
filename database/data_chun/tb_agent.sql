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
(2, 'Deliicious Foods a sadasd', 'อาหารอร่อย  sdasdas', '280220191035302802201910353050115942.png', 'สด สะอาด อร่อย ปลอดภัยd s dasd asd', 'We\'ve scoured the planetda  dasdas dasda sda '),
(5, 'asda', 'asd', '28022019103537280220191035371907149302.jpg', 'asdasdasd', 'sdasdasdasdasdasdasd'),
(7, 'Deliicious Foods a sadasd', 'อาหารอร่อย  sdasdas', '2802201910360628022019103606958300776.jpg', 'asdasdasdasdasdasdasdasdasdasdasdasdasdasdasd', 'asdasdasdasdasdasdasdasdasdasdasdasdasdasdasd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_agent`
--
ALTER TABLE `tb_agent`
  ADD PRIMARY KEY (`agent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_agent`
--
ALTER TABLE `tb_agent`
  MODIFY `agent_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
