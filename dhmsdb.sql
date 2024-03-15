-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 02:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbhiredriver`
--

CREATE TABLE `tbhiredriver` (
  `id` int(11) NOT NULL,
  `bookingNumber` bigint(12) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `driveruserid` varchar(45) DEFAULT NULL,
  `fromdate` date DEFAULT NULL,
  `todate` date DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` varchar(45) DEFAULT '0',
  `driverremarks` varchar(200) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp(),
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbhiredriver`
--

INSERT INTO `tbhiredriver` (`id`, `bookingNumber`, `userid`, `driveruserid`, `fromdate`, `todate`, `remark`, `status`, `driverremarks`, `create_date`, `lastUpdationDate`) VALUES
(12, 312042866, '4', '1', '2022-05-27', '2022-05-28', 'Morning 6am', '1', '', '2022-05-22 13:27:15', '2022-05-22 13:30:16'),
(13, 352680460, '5', '3', '2022-05-23', '2022-05-25', '', '2', 'unavaliable', '2022-05-22 13:36:02', '2022-05-22 13:39:47'),
(14, 622688444, '5', '6', '2022-05-28', '2022-05-28', 'Afternoon 1pm', '0', NULL, '2022-05-22 13:37:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `name`, `email`, `mobile`, `password`, `create_date`) VALUES
(1, 'admin', 'admin@gmail.com', '9078989786', '0192023a7bbd73250516f069df18b500', '2022-01-19 11:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `fname`, `lname`, `email`, `mobile`, `password`, `address`, `create_date`) VALUES
(4, 'Saran', 'M', 'saran@gmail.com', '8056705058', 'f423374d0f717549c1e8b3623ee59057', NULL, '2022-05-22 13:24:58'),
(5, 'suhel', 'M', 'suhel@gmail.com', '8056705059', 'd054920b9f5977b9e3db110e5b4b4efa', NULL, '2022-05-22 13:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbluserdrivers`
--

CREATE TABLE `tbluserdrivers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `LicenseNo` varchar(200) DEFAULT NULL,
  `uploadLicenseNo` varchar(200) DEFAULT NULL,
  `UploadPhoto` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluserdrivers`
--

INSERT INTO `tbluserdrivers` (`id`, `name`, `mobile`, `email`, `LicenseNo`, `uploadLicenseNo`, `UploadPhoto`, `Password`, `Address`, `create_date`) VALUES
(1, 'Arun', '9486927075', 'arun@gmail.com', 'TN123456789', '39285-1111.png', '17857-aravind-passport-size-foto.jpg', 'a10372605b860035a32286c3fa356e8e', 'kuniyamuthur,Coimbatore-641008', '2022-05-22 13:03:39'),
(2, 'Bala', '7871600505', 'Bala@gmail.com', 'TN123456788', '5941-ll.png', '30601-passport-size-pic.jpg', 'c975edb70f08229bbeb298dede828331', 'R.S Puram,Coimbatore.', '2022-05-22 13:08:26'),
(3, 'Selva', '9443107603', 'selva@gmail.com', 'TN123456787', '34264-ll.png', '34981-images.jpg', 'e7477d264b472bf46ae256d7687d343d', 'Sundharapuram,Coimbatore-641024', '2022-05-22 13:10:40'),
(4, 'swetha', '8056705057', 'swetha@gmail.com', 'TN123456786', '61783-ll.png', '97435-istockphoto-856599656-612x612.jpg', '15b93d4dc659b58eb39016ce176ddf9f', 'Pothanur,Coimbatore.', '2022-05-22 13:13:05'),
(5, 'jeny', '8056705059', 'subha@gmail.com', 'TN123456785', '41531-ll.png', '5107-capture.jpg', '76dc9fc2dc28d33182b4347a085d4e7c', 'R.S Puram,Coimbatore.', '2022-05-22 13:16:49'),
(6, 'Ravi', '8056705056', 'ravi@gmail.com', 'TN123456795', '15536-images.jpg', '48386-4ccd086a8b7970c7a1ab4961e9bfcafc.jpg', '1790f19d6edb09a7a94870e99c7b0689', 'Ukkadam,Coimbatore.', '2022-05-22 13:19:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbhiredriver`
--
ALTER TABLE `tbhiredriver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluserdrivers`
--
ALTER TABLE `tbluserdrivers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbhiredriver`
--
ALTER TABLE `tbhiredriver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbluserdrivers`
--
ALTER TABLE `tbluserdrivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
