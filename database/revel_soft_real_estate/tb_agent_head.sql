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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_agent_head`
--
ALTER TABLE `tb_agent_head`
  ADD PRIMARY KEY (`agent_head_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_agent_head`
--
ALTER TABLE `tb_agent_head`
  MODIFY `agent_head_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
