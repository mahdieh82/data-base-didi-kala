-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 22, 2022 at 12:29 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pascalshopdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `courseID` int(10) UNSIGNED NOT NULL,
  `courseTitel` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `reshteID` int(10) UNSIGNED NOT NULL,
  `courseVahed` tinyint(3) UNSIGNED NOT NULL,
  `courseType` varchar(10) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblmadrak`
--

CREATE TABLE `tblmadrak` (
  `madrakID` int(10) UNSIGNED NOT NULL,
  `madrakTitle` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `madrakDes` varchar(50) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tblmadrak`
--

INSERT INTO `tblmadrak` (`madrakID`, `madrakTitle`, `madrakDes`) VALUES
(2001, 'فوق دیپلم', 'کاردانی و فوق دیپلم'),
(2002, 'لیسانس', 'کارشناسی و لیسانس '),
(2003, 'فوق لیسانس', 'فوق لیسانس و کارشناسی ارشد'),
(2004, 'دکترا', 'مهندسی کامپیوتر ');

-- --------------------------------------------------------

--
-- Table structure for table `tblreshte`
--

CREATE TABLE `tblreshte` (
  `reshteID` int(10) UNSIGNED NOT NULL,
  `reshteName` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `reshteDs` varchar(1000) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tblreshte`
--

INSERT INTO `tblreshte` (`reshteID`, `reshteName`, `reshteDs`) VALUES
(1001, 'مهندسی کامپیوتر', 'کاردانی گرایش نرم افزار'),
(1002, 'مهندسی مکانیک', 'کاردانی گرایش مکانیک'),
(1003, 'مهندسی برق', 'کارشناسی گرایش برق'),
(1004, 'حسابداری', 'کاردانی رشته حسابداری'),
(1005, 'طراحی دوخت', 'کارگاه خیاطی');

-- --------------------------------------------------------

--
-- Table structure for table `tblselect`
--

CREATE TABLE `tblselect` (
  `selectID` int(10) UNSIGNED NOT NULL,
  `stuID` int(10) UNSIGNED NOT NULL,
  `teacherID` int(10) UNSIGNED NOT NULL,
  `courseID` int(10) UNSIGNED NOT NULL,
  `courseScore` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `stuID` int(10) UNSIGNED NOT NULL,
  `stuName` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `stuFanily` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `reshteID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`stuID`, `stuName`, `stuFanily`, `reshteID`) VALUES
(3001, 'مهدیه', 'روکی', 1001),
(3002, 'نادیا', 'شمخالی', 1002),
(3003, 'نیلو', 'همت آبادی', 1003),
(3004, 'تینا', 'طبسی', 1004),
(3005, 'بهاره', 'شریفان', 1005),
(3006, 'ترانه', 'روکی', 1004);

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `teacherID` int(10) UNSIGNED NOT NULL,
  `teacherName` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `teacherFamily` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `reshteID` int(10) UNSIGNED NOT NULL,
  `madrakID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`teacherID`, `teacherName`, `teacherFamily`, `reshteID`, `madrakID`) VALUES
(4001, 'محمد', 'کرمی', 1001, 2003),
(4002, 'صدیقه', 'مهرزادی', 2004, 2003),
(4003, 'صفا', 'کاشمری', 1002, 2002),
(4004, 'زهرا', 'ریوندی', 1004, 2001),
(4005, 'زهرا', 'ملکیان', 1005, 2004),
(4006, 'صدیقه', 'توسلی', 1004, 2002);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `tblmadrak`
--
ALTER TABLE `tblmadrak`
  ADD PRIMARY KEY (`madrakID`);

--
-- Indexes for table `tblreshte`
--
ALTER TABLE `tblreshte`
  ADD PRIMARY KEY (`reshteID`);

--
-- Indexes for table `tblselect`
--
ALTER TABLE `tblselect`
  ADD PRIMARY KEY (`selectID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`stuID`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`teacherID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
