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
(1, 'นครราชสีมา', 'DDproperty Property Index Saw Prices For Residential Property In Bangkok', '2019-03-04 03:06:27', '04032019100750-3305164-image2.png', 'เป็นจังหวัดที่มีพื้นที่มากที่สุดในประเทศไทยและมีประชากรมากเป็นอันดับ 2 ของประเทศ อยู่ในภาคตะวันออกเฉียงเหนือ ชื่อเมืองนครราชสีมาปรากฏครั้งแรกเป็นเมืองพระยามหานครในการปฏิรูปการปกครองในรัชสมัยสมเด็จพระบรมไตรโลกนาถ(ตั้งอยู่ในพื้นที่อำเภอสูงเนิน จังหวัดนครราชสีมา) ในรัชสมัยสมเด็จพระนารายณ์มหาราชทรงมีรับสั่งให้ย้ายเมืองนครราชสีมามาตั้งบริเวณพื้นที่ปัจจุบัน เมื่อ พ.ศ. 2217', '\n                DDproperty revealed that demand for accommodation from millennials will continue\n                    to grow significantly. In Bangkok, Chatuchak, Suanluang and Phyathai are identified\n                    as high growth areas. DDproperty revealed that demand for accommodation from\n                    millennials will continue to grow significantly. In Bangkok, Chatuchak,\n                    Suanluang and Phyathai are identified as high growth areas.', 4),
(2, 'จังหวัดเชียงใหม่ ', 'Chiang Mai', '2019-03-04 03:09:44', '04032019100944-3305164-image2.png', ' จังหวัดเชียงใหม่มีเขตเมืองที่จัดเป็นเมืองใหญ่อันดับที่สองของประเทศไทยรองจากกรุงเทพมหานคร มีประชากรในเขตเมืองและชานเมือง 960,906 คน (พ.ศ. 2553) จังหวัดเชียงใหม่แบ่งการปกครองออกเป็น 25 อำเภอ โดยมีอำเภอเมืองเชียงใหม่เป็นศูนย์กลางของจังหวัด เมื่อ พ.ศ. 2552 มีการจัดตั้งอำเภอกัลยาณิวัฒนาเป็นอำเภอลำดับที่ 25 ของจังหวัด และลำดับที่ 878 ของประเทศ ซึ่งเป็นอำเภอล่าสุดของไทย', ' Chiang Mai has the second largest city in Thailand after Bangkok. There are 960,906 people in the urban and suburban areas (2010). Chiang Mai province is divided into 25 districts with the city of Chiang Mai as the center of the province. In 2009, the district was established. No. 25 of the province and No. 878 of the country which is the latest district in Thailand\r\n', 11),
(3, 'นครราชสีมา หรือรู้จักในชื่อ โคราช', 'Nakhon Ratchasima or known as Korat', '2019-03-04 03:06:27', '04032019100750-3305164-image2.png', 'เป็นจังหวัดที่มีพื้นที่มากที่สุดในประเทศไทยและมีประชากรมากเป็นอันดับ 2 ของประเทศ อยู่ในภาคตะวันออกเฉียงเหนือ ชื่อเมืองนครราชสีมาปรากฏครั้งแรกเป็นเมืองพระยามหานครในการปฏิรูปการปกครองในรัชสมัยสมเด็จพระบรมไตรโลกนาถ(ตั้งอยู่ในพื้นที่อำเภอสูงเนิน จังหวัดนครราชสีมา) ในรัชสมัยสมเด็จพระนารายณ์มหาราชทรงมีรับสั่งให้ย้ายเมืองนครราชสีมามาตั้งบริเวณพื้นที่ปัจจุบัน เมื่อ พ.ศ. 2217', 'Is the province that has the most area in Thailand and has the second largest population of the country in the northeastern region The name of the city of Nakhon Ratchasima first appears as the city of Phraya Mahan in the administrative reform in the reign of King Borom Trai Lokanat (located in Sung Noen District). In the reign of King Narai the Great, ordered to move the city of Nakhon Ratchasima to the current area in 2217\r\n', 0),
(4, 'จังหวัดเชียงใหม่ ', 'Chiang Mai', '2019-03-04 03:09:44', '04032019100944-3305164-image2.png', ' จังหวัดเชียงใหม่มีเขตเมืองที่จัดเป็นเมืองใหญ่อันดับที่สองของประเทศไทยรองจากกรุงเทพมหานคร มีประชากรในเขตเมืองและชานเมือง 960,906 คน (พ.ศ. 2553) จังหวัดเชียงใหม่แบ่งการปกครองออกเป็น 25 อำเภอ โดยมีอำเภอเมืองเชียงใหม่เป็นศูนย์กลางของจังหวัด เมื่อ พ.ศ. 2552 มีการจัดตั้งอำเภอกัลยาณิวัฒนาเป็นอำเภอลำดับที่ 25 ของจังหวัด และลำดับที่ 878 ของประเทศ ซึ่งเป็นอำเภอล่าสุดของไทย', ' Chiang Mai has the second largest city in Thailand after Bangkok. There are 960,906 people in the urban and suburban areas (2010). Chiang Mai province is divided into 25 districts with the city of Chiang Mai as the center of the province. In 2009, the district was established. No. 25 of the province and No. 878 of the country which is the latest district in Thailand\r\n', 0),
(5, 'นครราชสีมา หรือรู้จักในชื่อ โคราช', 'Nakhon Ratchasima or known as Korat', '2019-03-04 03:06:27', '04032019100750-3305164-image2.png', 'เป็นจังหวัดที่มีพื้นที่มากที่สุดในประเทศไทยและมีประชากรมากเป็นอันดับ 2 ของประเทศ อยู่ในภาคตะวันออกเฉียงเหนือ ชื่อเมืองนครราชสีมาปรากฏครั้งแรกเป็นเมืองพระยามหานครในการปฏิรูปการปกครองในรัชสมัยสมเด็จพระบรมไตรโลกนาถ(ตั้งอยู่ในพื้นที่อำเภอสูงเนิน จังหวัดนครราชสีมา) ในรัชสมัยสมเด็จพระนารายณ์มหาราชทรงมีรับสั่งให้ย้ายเมืองนครราชสีมามาตั้งบริเวณพื้นที่ปัจจุบัน เมื่อ พ.ศ. 2217', 'Is the province that has the most area in Thailand and has the second largest population of the country in the northeastern region The name of the city of Nakhon Ratchasima first appears as the city of Phraya Mahan in the administrative reform in the reign of King Borom Trai Lokanat (located in Sung Noen District). In the reign of King Narai the Great, ordered to move the city of Nakhon Ratchasima to the current area in 2217\r\n', 0),
(6, 'จังหวัดเชียงใหม่ ', 'Chiang Mai', '2019-03-04 03:09:44', '04032019100944-3305164-image2.png', ' จังหวัดเชียงใหม่มีเขตเมืองที่จัดเป็นเมืองใหญ่อันดับที่สองของประเทศไทยรองจากกรุงเทพมหานคร มีประชากรในเขตเมืองและชานเมือง 960,906 คน (พ.ศ. 2553) จังหวัดเชียงใหม่แบ่งการปกครองออกเป็น 25 อำเภอ โดยมีอำเภอเมืองเชียงใหม่เป็นศูนย์กลางของจังหวัด เมื่อ พ.ศ. 2552 มีการจัดตั้งอำเภอกัลยาณิวัฒนาเป็นอำเภอลำดับที่ 25 ของจังหวัด และลำดับที่ 878 ของประเทศ ซึ่งเป็นอำเภอล่าสุดของไทย', ' Chiang Mai has the second largest city in Thailand after Bangkok. There are 960,906 people in the urban and suburban areas (2010). Chiang Mai province is divided into 25 districts with the city of Chiang Mai as the center of the province. In 2009, the district was established. No. 25 of the province and No. 878 of the country which is the latest district in Thailand\r\n', 0),
(7, 'นครราชสีมา หรือรู้จักในชื่อ โคราช', 'Nakhon Ratchasima or known as Korat', '2019-03-04 03:06:27', '04032019100750-3305164-image2.png', 'เป็นจังหวัดที่มีพื้นที่มากที่สุดในประเทศไทยและมีประชากรมากเป็นอันดับ 2 ของประเทศ อยู่ในภาคตะวันออกเฉียงเหนือ ชื่อเมืองนครราชสีมาปรากฏครั้งแรกเป็นเมืองพระยามหานครในการปฏิรูปการปกครองในรัชสมัยสมเด็จพระบรมไตรโลกนาถ(ตั้งอยู่ในพื้นที่อำเภอสูงเนิน จังหวัดนครราชสีมา) ในรัชสมัยสมเด็จพระนารายณ์มหาราชทรงมีรับสั่งให้ย้ายเมืองนครราชสีมามาตั้งบริเวณพื้นที่ปัจจุบัน เมื่อ พ.ศ. 2217', 'Is the province that has the most area in Thailand and has the second largest population of the country in the northeastern region The name of the city of Nakhon Ratchasima first appears as the city of Phraya Mahan in the administrative reform in the reign of King Borom Trai Lokanat (located in Sung Noen District). In the reign of King Narai the Great, ordered to move the city of Nakhon Ratchasima to the current area in 2217\r\n', 0),
(8, 'จังหวัดเชียงใหม่ ', 'Chiang Mai', '2019-03-04 03:09:44', '04032019100944-3305164-image2.png', ' จังหวัดเชียงใหม่มีเขตเมืองที่จัดเป็นเมืองใหญ่อันดับที่สองของประเทศไทยรองจากกรุงเทพมหานคร มีประชากรในเขตเมืองและชานเมือง 960,906 คน (พ.ศ. 2553) จังหวัดเชียงใหม่แบ่งการปกครองออกเป็น 25 อำเภอ โดยมีอำเภอเมืองเชียงใหม่เป็นศูนย์กลางของจังหวัด เมื่อ พ.ศ. 2552 มีการจัดตั้งอำเภอกัลยาณิวัฒนาเป็นอำเภอลำดับที่ 25 ของจังหวัด และลำดับที่ 878 ของประเทศ ซึ่งเป็นอำเภอล่าสุดของไทย', ' Chiang Mai has the second largest city in Thailand after Bangkok. There are 960,906 people in the urban and suburban areas (2010). Chiang Mai province is divided into 25 districts with the city of Chiang Mai as the center of the province. In 2009, the district was established. No. 25 of the province and No. 878 of the country which is the latest district in Thailand\r\n', 0),
(9, 'นครราชสีมา หรือรู้จักในชื่อ โคราช', 'Nakhon Ratchasima or known as Korat', '2019-03-04 03:06:27', '04032019100750-3305164-image2.png', 'เป็นจังหวัดที่มีพื้นที่มากที่สุดในประเทศไทยและมีประชากรมากเป็นอันดับ 2 ของประเทศ อยู่ในภาคตะวันออกเฉียงเหนือ ชื่อเมืองนครราชสีมาปรากฏครั้งแรกเป็นเมืองพระยามหานครในการปฏิรูปการปกครองในรัชสมัยสมเด็จพระบรมไตรโลกนาถ(ตั้งอยู่ในพื้นที่อำเภอสูงเนิน จังหวัดนครราชสีมา) ในรัชสมัยสมเด็จพระนารายณ์มหาราชทรงมีรับสั่งให้ย้ายเมืองนครราชสีมามาตั้งบริเวณพื้นที่ปัจจุบัน เมื่อ พ.ศ. 2217', 'Is the province that has the most area in Thailand and has the second largest population of the country in the northeastern region The name of the city of Nakhon Ratchasima first appears as the city of Phraya Mahan in the administrative reform in the reign of King Borom Trai Lokanat (located in Sung Noen District). In the reign of King Narai the Great, ordered to move the city of Nakhon Ratchasima to the current area in 2217\r\n', 0),
(10, 'จังหวัดเชียงใหม่ ', 'Chiang Mai', '2019-03-04 03:09:44', '04032019100944-3305164-image2.png', ' จังหวัดเชียงใหม่มีเขตเมืองที่จัดเป็นเมืองใหญ่อันดับที่สองของประเทศไทยรองจากกรุงเทพมหานคร มีประชากรในเขตเมืองและชานเมือง 960,906 คน (พ.ศ. 2553) จังหวัดเชียงใหม่แบ่งการปกครองออกเป็น 25 อำเภอ โดยมีอำเภอเมืองเชียงใหม่เป็นศูนย์กลางของจังหวัด เมื่อ พ.ศ. 2552 มีการจัดตั้งอำเภอกัลยาณิวัฒนาเป็นอำเภอลำดับที่ 25 ของจังหวัด และลำดับที่ 878 ของประเทศ ซึ่งเป็นอำเภอล่าสุดของไทย', ' Chiang Mai has the second largest city in Thailand after Bangkok. There are 960,906 people in the urban and suburban areas (2010). Chiang Mai province is divided into 25 districts with the city of Chiang Mai as the center of the province. In 2009, the district was established. No. 25 of the province and No. 878 of the country which is the latest district in Thailand\r\n', 0),
(11, 'นครราชสีมา หรือรู้จักในชื่อ โคราช', 'Nakhon Ratchasima or known as Korat', '2019-03-04 03:06:27', '04032019100750-3305164-image2.png', 'เป็นจังหวัดที่มีพื้นที่มากที่สุดในประเทศไทยและมีประชากรมากเป็นอันดับ 2 ของประเทศ อยู่ในภาคตะวันออกเฉียงเหนือ ชื่อเมืองนครราชสีมาปรากฏครั้งแรกเป็นเมืองพระยามหานครในการปฏิรูปการปกครองในรัชสมัยสมเด็จพระบรมไตรโลกนาถ(ตั้งอยู่ในพื้นที่อำเภอสูงเนิน จังหวัดนครราชสีมา) ในรัชสมัยสมเด็จพระนารายณ์มหาราชทรงมีรับสั่งให้ย้ายเมืองนครราชสีมามาตั้งบริเวณพื้นที่ปัจจุบัน เมื่อ พ.ศ. 2217', 'Is the province that has the most area in Thailand and has the second largest population of the country in the northeastern region The name of the city of Nakhon Ratchasima first appears as the city of Phraya Mahan in the administrative reform in the reign of King Borom Trai Lokanat (located in Sung Noen District). In the reign of King Narai the Great, ordered to move the city of Nakhon Ratchasima to the current area in 2217\r\n', 0),
(12, 'จังหวัดเชียงใหม่ ', 'Chiang Mai', '2019-03-04 03:09:44', '04032019100944-3305164-image2.png', ' จังหวัดเชียงใหม่มีเขตเมืองที่จัดเป็นเมืองใหญ่อันดับที่สองของประเทศไทยรองจากกรุงเทพมหานคร มีประชากรในเขตเมืองและชานเมือง 960,906 คน (พ.ศ. 2553) จังหวัดเชียงใหม่แบ่งการปกครองออกเป็น 25 อำเภอ โดยมีอำเภอเมืองเชียงใหม่เป็นศูนย์กลางของจังหวัด เมื่อ พ.ศ. 2552 มีการจัดตั้งอำเภอกัลยาณิวัฒนาเป็นอำเภอลำดับที่ 25 ของจังหวัด และลำดับที่ 878 ของประเทศ ซึ่งเป็นอำเภอล่าสุดของไทย', ' Chiang Mai has the second largest city in Thailand after Bangkok. There are 960,906 people in the urban and suburban areas (2010). Chiang Mai province is divided into 25 districts with the city of Chiang Mai as the center of the province. In 2009, the district was established. No. 25 of the province and No. 878 of the country which is the latest district in Thailand\r\n', 0),
(13, 'นครราชสีมา หรือรู้จักในชื่อ โคราช', 'Nakhon Ratchasima or known as Korat', '2019-03-04 03:06:27', '04032019100750-3305164-image2.png', 'เป็นจังหวัดที่มีพื้นที่มากที่สุดในประเทศไทยและมีประชากรมากเป็นอันดับ 2 ของประเทศ อยู่ในภาคตะวันออกเฉียงเหนือ ชื่อเมืองนครราชสีมาปรากฏครั้งแรกเป็นเมืองพระยามหานครในการปฏิรูปการปกครองในรัชสมัยสมเด็จพระบรมไตรโลกนาถ(ตั้งอยู่ในพื้นที่อำเภอสูงเนิน จังหวัดนครราชสีมา) ในรัชสมัยสมเด็จพระนารายณ์มหาราชทรงมีรับสั่งให้ย้ายเมืองนครราชสีมามาตั้งบริเวณพื้นที่ปัจจุบัน เมื่อ พ.ศ. 2217', 'Is the province that has the most area in Thailand and has the second largest population of the country in the northeastern region The name of the city of Nakhon Ratchasima first appears as the city of Phraya Mahan in the administrative reform in the reign of King Borom Trai Lokanat (located in Sung Noen District). In the reign of King Narai the Great, ordered to move the city of Nakhon Ratchasima to the current area in 2217\r\n', 0),
(14, 'จังหวัดเชียงใหม่ ', 'Chiang Mai', '2019-03-04 03:09:44', '04032019100944-3305164-image2.png', ' จังหวัดเชียงใหม่มีเขตเมืองที่จัดเป็นเมืองใหญ่อันดับที่สองของประเทศไทยรองจากกรุงเทพมหานคร มีประชากรในเขตเมืองและชานเมือง 960,906 คน (พ.ศ. 2553) จังหวัดเชียงใหม่แบ่งการปกครองออกเป็น 25 อำเภอ โดยมีอำเภอเมืองเชียงใหม่เป็นศูนย์กลางของจังหวัด เมื่อ พ.ศ. 2552 มีการจัดตั้งอำเภอกัลยาณิวัฒนาเป็นอำเภอลำดับที่ 25 ของจังหวัด และลำดับที่ 878 ของประเทศ ซึ่งเป็นอำเภอล่าสุดของไทย', ' Chiang Mai has the second largest city in Thailand after Bangkok. There are 960,906 people in the urban and suburban areas (2010). Chiang Mai province is divided into 25 districts with the city of Chiang Mai as the center of the province. In 2009, the district was established. No. 25 of the province and No. 878 of the country which is the latest district in Thailand\r\n', 0),
(15, 'นครราชสีมา ', 'Nakhon Ratchasima ', '2019-03-04 03:06:27', '04032019100750-3305164-image2.png', 'เป็นจังหวัดที่มีพื้นที่มากที่สุดในประเทศไทยและมีประชากรมากเป็นอันดับ 2 ของประเทศ อยู่ในภาคตะวันออกเฉียงเหนือ ชื่อเมืองนครราชสีมาปรากฏครั้งแรกเป็นเมืองพระยามหานครในการปฏิรูปการปกครองในรัชสมัยสมเด็จพระบรมไตรโลกนาถ(ตั้งอยู่ในพื้นที่อำเภอสูงเนิน จังหวัดนครราชสีมา) ในรัชสมัยสมเด็จพระนารายณ์มหาราชทรงมีรับสั่งให้ย้ายเมืองนครราชสีมามาตั้งบริเวณพื้นที่ปัจจุบัน เมื่อ พ.ศ. 2217', 'Is the province that has the most area in Thailand and has the second largest population of the country in the northeastern region The name of the city of Nakhon Ratchasima first appears as the city of Phraya Mahan in the administrative reform in the reign of King Borom Trai Lokanat (located in Sung Noen District). In the reign of King Narai the Great, ordered to move the city of Nakhon Ratchasima to the current area in 2217\r\n', 0),
(16, 'จังหวัดเชียงใหม่ ', 'Chiang Mai', '2019-03-04 03:09:44', '04032019100944-3305164-image2.png', ' จังหวัดเชียงใหม่มีเขตเมืองที่จัดเป็นเมืองใหญ่อันดับที่สองของประเทศไทยรองจากกรุงเทพมหานคร มีประชากรในเขตเมืองและชานเมือง 960,906 คน (พ.ศ. 2553) จังหวัดเชียงใหม่แบ่งการปกครองออกเป็น 25 อำเภอ โดยมีอำเภอเมืองเชียงใหม่เป็นศูนย์กลางของจังหวัด เมื่อ พ.ศ. 2552 มีการจัดตั้งอำเภอกัลยาณิวัฒนาเป็นอำเภอลำดับที่ 25 ของจังหวัด และลำดับที่ 878 ของประเทศ ซึ่งเป็นอำเภอล่าสุดของไทย', ' Chiang Mai has the second largest city in Thailand after Bangkok. There are 960,906 people in the urban and suburban areas (2010). Chiang Mai province is divided into 25 districts with the city of Chiang Mai as the center of the province. In 2009, the district was established. No. 25 of the province and No. 878 of the country which is the latest district in Thailand\r\n', 0),
(17, 'กหดหกดหกด', 'หกดหกดหกดหกดกห', '2019-03-11 09:13:04', '11032019161304-default.png', 'ดหกดหกดฟหกฟหกฟหกฟหก', 'หกดหกดหกดฟหกฟหกฟหก', 0),
(18, '00000000000000000000', '0000000000000000000000000', '2019-03-11 09:13:40', '11032019161340-default.png', '000000000000000000000000000000000', '000000000000000000000000000000000000000000000000000', 0),
(19, 'sddasdasdas', 'dasdasdasdasd', '2019-03-11 09:15:44', '11032019161544-05032019145951-default.png', 'asdasdasdasdas', 'dasdasdasdasdasdasdasda', 0),
(20, 'asdasdasd', 'asdasdasd', '2019-03-11 09:16:53', '11032019161653-05032019145951-default.png', 'asdasdasd', 'dasdasd', 0),
(21, 'asdasd', 'asdasdasd', '2019-03-11 09:17:42', '11032019161742-default.png', 'asdasdasdas', 'dasdasdasd', 1);

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
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
