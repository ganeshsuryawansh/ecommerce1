-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 03:01 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `srno` int(11) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `emailnewid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`srno`, `emailid`, `password`, `emailnewid`) VALUES
(1, 'admin@gmail.com', '1212', ''),
(2, 'gs@gmail.com', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `myorders`
--

CREATE TABLE `myorders` (
  `srno` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date2` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myorders`
--

INSERT INTO `myorders` (`srno`, `productid`, `email_id`, `quantity`, `date2`) VALUES
(36, 0, 'gs@gmail.com', NULL, '2023-01-21'),
(79, 37, 'gs@gmail.com', NULL, '2023-01-24'),
(80, 57, 'gs@gmail.com', NULL, '2023-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payid` int(11) NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `payer_email` varchar(40) DEFAULT NULL,
  `currency` varchar(40) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `address` varchar(455) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pname` text NOT NULL DEFAULT current_timestamp(),
  `pprice` int(11) DEFAULT NULL,
  `pdesc` text DEFAULT NULL,
  `pimg` longblob DEFAULT NULL,
  `pcat` text DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `psubcat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pname`, `pprice`, `pdesc`, `pimg`, `pcat`, `pid`, `date`, `psubcat`) VALUES
('watch', 700, 'smart watch', 0x54696d6578322e6a7067, 'Electronics ', 32, '2022-11-06 12:51:28.982187', 'watch'),
('linovo', 47000, 'lenovo ideapad', 0x4c656e6f766f2e6a7067, 'Electronics ', 34, '2022-11-06 12:54:27.975762', 'laptop'),
('dell', 48000, 'Dell i5 core 11th generation', 0x64656c6c332e6a7067, 'Electronics ', 35, '2022-11-06 13:03:50.827923', 'laptop'),
('HP ', 52000, 'HP i8 11th generation  1TB SSD.', 0x6870342e6a7067, 'Electronics ', 36, '2022-11-06 13:05:44.105670', 'laptop'),
('Smart watch ', 1200, 'smart watch with wireless calling bluetooth . 10 days batarry backup', 0x736d6172742d7761746368322e6a7067, 'Electronics ', 37, '2022-11-06 13:08:28.290114', 'watch'),
('Timex Men Quartz analog Silver', 800, 'Timex Men Quartz analog Silver', 0x54696d6578204d656e2051756172747a20616e616c6f672053696c7665722e6a7067, 'Electronics ', 38, '2022-11-06 13:16:04.413991', 'watch'),
('Fastrack Analog Black', 1000, 'Fastrack Analog Black', 0x466173747261636b20416e616c6f6720426c61636b2e6a7067, 'Electronics ', 39, '2022-11-06 13:17:28.958741', 'watch'),
('lenovo ideaoad2', 45000, 'lenovo ideapad2 1TB SSD i6 11th generation', 0x6c656e6f7661322e6a7067, 'Electronics ', 40, '2022-11-06 13:18:46.268019', 'laptop'),
('Krishna Emporia', 450, 'Krishna Emporia', 0x4b726973686e6120456d706f7269612e6a7067, 'Fashion', 41, '2022-11-06 13:26:13.911919', 'mens'),
('Novarc', 230, 'Novarc', 0x4e6f766172632e6a7067, 'Fashion', 42, '2022-11-06 13:29:57.073360', 'mens'),
('LEWEL', 400, 'LEWEL', 0x4c4557454c2e6a7067, 'Fashion', 43, '2022-11-06 13:30:42.343938', 'mens'),
('Urban Fashion', 300, 'Urban Fashion', 0x557262616e6f2046617368696f6e2e6a7067, 'Fashion', 44, '2022-11-06 13:31:20.152549', 'mens'),
('FIVONA FASHION', 350, 'FIVONA FASHION', 0x46494e49564f2046415348494f4e2e6a7067, 'Fashion', 45, '2022-11-06 13:32:34.126961', 'mens'),
('FIVONA FASHION2', 350, 'FIVONA FASHION', 0x46494e49564f2046415348494f4e322e6a7067, 'Fashion', 46, '2022-11-06 13:32:56.284525', 'mens'),
('FIVONA FASHION3', 350, 'FIVONA FASHION3', 0x46494e49564f2046415348494f4e332e4a5047, 'Fashion', 50, '2022-11-06 13:40:32.364444', 'mens'),
('FIVONA FASHION4', 350, 'FIVONA FASHION', 0x46494e49564f2046415348494f4e342e6a7067, 'Fashion', 51, '2022-11-06 13:40:56.289069', 'mens'),
('boAt Wave Neo smart watch', 1499, '42mm(1.69 inch) HD Display|2.5D Curved Display|550 Nits Brightness|Lightweight: 35 gms Multiple Sports Modes: Walking, Running, Cycling, Climbing, Yoga, Basketball, Football, Badminton, Skipping & Swimming 24H Heart Rate, SpO2 & Stress Monitoring|Sleep Tracker|Music & Camera Control IP68 Dust, Sweat and Splash Resistant|Multiple Watch Face|Call, Text & Social Media Notifications Touchscreen Fitness & Outdoor Battery Runtime: Upto 7 days Services 1 Year Warranty from the Date of Purchase 7 Days Replacement Policy? Cash on Delivery available? Important Note Before first time use, plug the smartwatch to its charger for 5-7 seconds, then remove/detach it and plug it in again. Wait till the watch is more than half charged, before use', 0x626f41742057617665204e656f202e6a7067, 'Electronics ', 57, '2022-11-08 11:03:02.907715', 'watch'),
('Women Printed Pure Cotton Straight Kurta  (Pink)', 280, 'Women Printed Pure Cotton Straight Kurta  (Pink)', 0x6b757274612e6a70672e6a7067, 'Fashion', 63, '2022-11-08 15:28:55.457248', 'womens'),
('Women Printed Viscose Rayon Straight Kurta  (Blue)', 432, 'Women Printed Viscose Rayon Straight Kurta  (Blue)', 0x626c75652d7374796c652d616e67656c2e6a7067, 'Fashion', 64, '2022-11-08 15:33:01.681046', 'womens'),
('Women Printed Kurta  (Yellow, Black)', 499, 'Women Printed Kurta  (Yellow, Black)', 0x6c2d736879616d7374726130352d736879616d737472612e6a7067, 'Fashion', 65, '2022-11-08 15:38:08.124123', 'womens'),
('Women Printed Viscose Rayon Straight Kurta  (Black)', 379, 'Women Printed Viscose Rayon Straight Kurta  (Black)', 0x732d67626b313230382d676f642d626c6573732e6a7067, 'Fashion', 66, '2022-11-08 15:51:39.353237', 'womens'),
('TIRTHANKARA Fabric 3 Seater Sofa  (Finish Color - Cream, Pre-assembled)', 12999, 'TIRTHANKARA Fabric 3 Seater Sofa  (Finish Color - Cream, Pre-assembled)', 0x73796d6d6574726963616c2d37352d637265616d2e6a7067, 'Furniture', 67, '2022-11-08 16:07:30.948343', 'homes'),
('Solis Primus-comfort for all 4X6 size Sofa ', 6936, 'Solis Primus-comfort for all 4X6 size Sofa cum Bed for 2 Person- 2 Seater Chenille Fabric Washable Cover with 2 Cushion(Multi Star Pattern)- Maroon Single Sofa Bed (Finish Color - Maroon Mechanism Type - Fold Out Delivery Condition - Pre-assembled) Double Sofa Bed  (Finish Color - Maroon Mechanism Type - Fold Out Delivery Condition - DIY(Do-It-Yourself))', 0x73696e676c652d35352d38382e6a7067, 'Furniture', 68, '2022-11-08 16:10:02.239407', 'homes');

-- --------------------------------------------------------

--
-- Table structure for table `usercart`
--

CREATE TABLE `usercart` (
  `srno` int(11) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usercart`
--

INSERT INTO `usercart` (`srno`, `emailid`, `pro_id`) VALUES
(488, 'admin@gmail.com', 65),
(489, 'admin@gmail.com', 64),
(532, 'admin@gmail.com', 46),
(533, 'pratapsuryawanshi007@gmail.com', 37),
(541, 'gs@gmail.com', 41),
(542, 'gs@gmail.com', 34),
(544, 'gs@gmail.com', 57),
(558, 'gs@gmail.com', 38);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `no` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `dt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `state` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zipcode` int(12) NOT NULL,
  `phone` int(99) NOT NULL,
  `alphone` int(99) NOT NULL,
  `email` varchar(50) NOT NULL,
  `verify_token` varchar(99) NOT NULL,
  `reset_token_expiration` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`no`, `username`, `password`, `dt`, `state`, `district`, `subdistrict`, `city`, `zipcode`, `phone`, `alphone`, `email`, `verify_token`, `reset_token_expiration`) VALUES
(1, 'Ganesh', '4545', '0000-00-00 00:00:00.000000', 'maharashtra', 'ahmednagar', 'karjat', '', 414401, 1100001101, 1309580827, 'gs@gmail.com', '', ''),
(22, 'admin', '123', '2022-11-23 15:49:26.000000', 'maharashtra', 'ahmednagar', 'karjat', 'karjat', 414401, 2147483647, 2147483647, 'ganeshsuryawanshi594@gmail.com', '', ''),
(24, 'pratap santosh suryawanshi', '225566', '2023-01-20 21:40:40.000000', 'maharastra', 'chinchvad', 'thane', 'pune', 414402, 2147483647, 211212, 'pratapsuryawanshi007@gmail.com', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `emailid_2` (`emailid`),
  ADD KEY `emailid` (`emailid`) USING BTREE;

--
-- Indexes for table `myorders`
--
ALTER TABLE `myorders`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `productid` (`productid`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `usercart`
--
ALTER TABLE `usercart`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `pro_id` (`pro_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myorders`
--
ALTER TABLE `myorders`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `usercart`
--
ALTER TABLE `usercart`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
