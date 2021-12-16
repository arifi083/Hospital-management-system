-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2021 at 09:06 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30'),
(6, 'General Physician', 0, 3, 0, '2020-09-15', '6:15 PM', '2020-09-02 01:16:18', 1, 1, NULL),
(7, 'Gynecologist/Obstetrician', 0, 3, 0, '2020-09-16', '6:30 PM', '2020-09-02 01:20:58', 1, 1, NULL),
(8, 'Gynecologist/Obstetrician', 0, 3, 0, '2020-09-16', '6:30 PM', '2020-09-02 01:22:44', 1, 1, NULL),
(9, 'Dermatologist', 9, 8, 500, '2020-09-15', '6:45 PM', '2020-09-02 01:37:35', 0, 1, '2020-09-02 01:38:04'),
(10, 'General Physician', 2, 1, 600, '2020-09-16', '2:30 PM', '2020-09-02 21:26:23', 1, 0, '2020-09-03 00:56:38'),
(11, 'Dentist', 4, 1, 400, '2020-09-16', '2:45 PM', '2020-09-02 21:36:31', 1, 1, NULL),
(13, 'General Physician', 2, 9, 600, '2020-09-18', '3:15 AM', '2020-09-03 00:35:56', 0, 1, '2020-09-03 00:36:47'),
(14, 'Dentist', 4, 4, 400, '2020-09-24', '6:15 PM', '2020-09-03 01:07:44', 1, 1, NULL),
(16, 'Nephrology', 11, 3, 500, '2020-12-18', '12:15 AM', '2020-12-19 18:06:06', 1, 1, NULL),
(17, 'Nephrology', 11, 1, 500, '2020-12-18', '3:45 PM', '2020-12-21 09:43:21', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetriciant', 'Rubina Akther', 'Gazipur', '500', 8285703354, 'rubina@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2020-09-08 07:00:00', '2020-09-02 21:12:47'),
(2, 'General Physician', 'Arif', 'Dhaka,khilket', '600', 1759989083, 'arif@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-09-10 07:00:00', '2020-09-02 21:14:36'),
(3, 'Homeopath', 'Bithi', 'Barisal', '300', 1679364179, 'bithi@gmail.com', '6263fd0c9b7e4d139eb81159d8edc743', '2020-09-02 20:47:58', '2020-09-02 22:04:59'),
(4, 'Dentist', 'Milon', 'Khulna', '400', 1679364179, 'milon@gmail.com', '81e879837a89afe5ba7e322186098d19', '2020-09-17 07:00:00', '2020-09-02 22:10:54'),
(5, 'Ear-Nose-Throat (Ent) Specialist', 'Alom', 'Dhaka,Farmget', '800', 1724921635, 'alom@gmail.com', '6d154cd690d149c0ddb73287b9ea524b', '2020-09-18 07:00:00', '2020-09-02 22:13:04'),
(6, 'Bones Specialist demo', 'Nahid', 'Mymensingh', '800', 1724921635, 'nahid@gmail.com', '29def63ed10f5e21bc2ea12b1f488309', '2020-09-06 07:00:00', '2020-09-02 22:15:02'),
(7, 'Medicine', 'Mahafuj Ahmed', 'Rangpur', '500', 1521465128, 'mahafuj@gmail.com', '510cb7c5f9ddb1e741df69995e15d26f', '2020-12-09 17:44:12', '2020-12-19 17:48:15'),
(11, 'Nephrology', 'anik', 'Rangpur', '500', 1679364179, 'anik@gmail.com', 'b2168c4c74dbf324b81dc4a93550d22a', '2020-12-19 17:56:26', '2020-12-19 18:08:32');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(14, 1, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 00:28:11', '02-09-2020 05:58:31 AM', 1),
(15, NULL, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 00:31:38', NULL, 0),
(16, 1, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 00:32:34', '03-09-2020 02:23:54 AM', 1),
(19, NULL, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 20:31:56', NULL, 0),
(20, NULL, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 20:32:21', NULL, 0),
(39, 2, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:39:56', NULL, 1),
(40, 2, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 22:31:33', '04-09-2020 04:02:47 AM', 1),
(41, 7, 'mahafuj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-19 17:48:53', '19-12-2020 11:19:20 PM', 1),
(42, 11, 'anik@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-19 18:09:19', '19-12-2020 11:43:00 PM', 1),
(43, 11, 'anik@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-21 09:46:16', NULL, 1),
(44, 2, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-24 14:47:02', '24-12-2020 09:46:03 PM', 1),
(45, 2, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-24 16:49:40', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Cardiac Surgery', '2016-12-28 06:39:26', '2020-09-02 23:52:28'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(10, 'Bones Specialist ', '2017-01-07 08:07:53', '2020-09-02 23:54:21'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50'),
(13, 'Cardiology', '2020-09-02 23:39:05', NULL),
(14, 'Cardiology', '2020-09-02 23:40:34', NULL),
(15, 'Urology', '2020-09-02 23:40:58', NULL),
(16, 'Nephrology', '2020-09-02 23:46:19', NULL),
(17, 'Neurology', '2020-09-02 23:46:37', NULL),
(18, 'Neurosergery', '2020-09-02 23:46:59', NULL),
(19, 'Diabetes and Endocrimology', '2020-09-02 23:47:29', NULL),
(20, 'Clinical Hematology', '2020-09-02 23:47:45', NULL),
(21, 'Internal Medicine', '2020-09-02 23:48:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Nishad', 'nishad@gmail.ocm', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', NULL, NULL, NULL),
(3, 'Kasem', 'kasem@gmail.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2020-09-02 21:18:41', 1),
(4, 'Md.Karim', 'karim@gmail.com', 1724980792, ' this is  nothing', '2020-09-03 01:21:34', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23'),
(8, 6, '80/90', '123', '80', '96.6', 'He has to regular bath and time eating', '2020-09-03 00:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Fariha', 4558968789, 'fariha@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar old Dhaka', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2020-09-02 21:22:01'),
(2, 5, 'Mukul', 9797977979, 'mukul@gmail.com', 'Male', 'Bogura', 39, 'No', '2019-11-05 10:40:13', '2020-09-02 21:22:31'),
(3, 5, 'Bristy', 9878978798, 'bristy@gmail.com', 'Female', 'she has a stomach problem.', 46, 'No', '2019-11-05 10:49:41', '2020-09-02 21:21:26'),
(4, 2, 'Ridoy', 9888988989, 'ridoy@gmail.com', 'Male', 'Rajshahi', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2020-09-02 21:24:37'),
(5, 1, 'John', 1234567890, 'john@gmail.com', 'male', 'Sylhet', 25, 'THis is sample text for testing.', '2019-11-10 18:49:24', NULL),
(7, 11, 'sujon islam', 192005281, 'sujon@gmail.com', 'male', 'Bogura', 22, 'He has a blood cancer and he is last stage', '2020-12-19 18:12:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auctions`
--

CREATE TABLE `tbl_auctions` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `pdetails` tinytext NOT NULL,
  `paddress` tinytext NOT NULL,
  `res_price` int(10) NOT NULL,
  `auction_date` varchar(40) NOT NULL,
  `auc_time` varchar(20) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `p_image_thumb` varchar(250) NOT NULL,
  `status` varchar(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `bdate` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_auctions`
--

INSERT INTO `tbl_auctions` (`id`, `bid`, `cid`, `cat_id`, `pdetails`, `paddress`, `res_price`, `auction_date`, `auc_time`, `p_image`, `p_image_thumb`, `status`, `uid`, `bdate`) VALUES
(16, 1, 1, 1, 'MH-12 GP- 5404\r\nPrice- 32000\r\nModel- 2011.\r\nKm done- 18000\r\nOwner- 1.\r\nMileage- 50.\r\nColor- black.\r\nCondition very good\r\nDocuments clear.', 'My address is Shihgad Road Pul Deshpande Park Back Side. Pune.9', 24000, '25-12-2014', '02:00pm', '507e54aaf3d7bdd283346265d13f9b1c.jpg', '9935c09b78d44459eaada3ba42a1c833.jpg', 'open', 1, '2014-12-21 18:34:58'),
(17, 8, 6, 1, 'Vespa GTS 300 Super', 'Vespa\'s basic scooter design has barely changed for the better part of seven decades, but beneath the GTS 300 Super\'s familiar exterior lurks a gutsy 278-cc single that can propel it to 80 mph. Although it sports an elegant Italian silhouette, torquey thr', 124000, '25-12-2014', '05:00pm', '707ef7127a3ab64c32735afad3b7cbfb.jpg', '34b535a88c8d5220d43bd9791ca4d724.jpg', 'open', 1, '2014-12-21 18:38:11'),
(18, 3, 9, 1, 'Smooth Operator Honda PCX', 'If 50 ccs are too wimpy and 150 ccs too much, Honda\'s 125-cc PCX is the solution. Big, 14-inch wheels reduce the twitchy handling inherent in scooters, and linked rear-to-front brakes make quick stops an easy task.', 90000, '15-12-2014', '02:00pm', '31feaf58b496d02eb407f7d9af78ce8f.jpg', '5deebb46b8f4c3e9930f036fe80b96f5.jpg', 'open', 1, '2014-12-21 18:39:47'),
(19, 10, 11, 1, 'Mahindra Scorpio', 'Mahindra and Mahindra has presented the brand new Scorpio to the Khatron Ke Khiladi winner Rajniesh Duggall. Earlier in October, Mahindra & Mahindra had revealed the accessory range of Scorpio.', 590000, '25-12-2014', '02:00pm', '9f4b8c8f50239d2a71681326c4411d0b.jpg', 'e336e9c4d424f7ba6dfaeddfb3ac1221.jpg', 'open', 1, '2014-12-21 18:46:25'),
(21, 2, 1, 1, 'Mi Redmi 1S - 1.6GHz Quad-Core Qualcomm', 'The Mi Redmi 1S is a high performing mobile phone which is fitted with a 1.6GHz Quad-Core Qualcomm Snapdragon 400 processor with Cortex-A7 core. Experience amazing performances every time you unlock your phone and enjoy Dual SIM capabilities as well.', 4300, '25-12-2014', '02:00pm', '101a13c530e30cff0677eb1d7fd4d21a.jpg', '6c0826bb777cca7a7688f8f7c1881c54.jpg', 'open', 1, '2014-12-21 18:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banks`
--

CREATE TABLE `tbl_banks` (
  `id` int(10) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `address` tinytext NOT NULL,
  `pn_no` varchar(100) NOT NULL,
  `city` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_banks`
--

INSERT INTO `tbl_banks` (`id`, `bname`, `address`, `pn_no`, `city`) VALUES
(1, 'HDFC Bank', 'Plot no. 89,\r\naakashwani chowk', '0257-5588258', 1),
(2, 'ICICI Bank', 'Shahu Maharaj Complex,\r\nNear Nagar Road', '0257-2255458', 1),
(3, 'Axis Bank of India', '290, shani peth,\r\nNear post office,', '2582-58752585', 9),
(5, 'Axis Bank of India', 'Plot no 120/A, \r\nNavi peth,\r\nSanath Nagar', '0257-2255458', 1),
(6, 'State Bank of India', 'Plot no 120/A, \r\nNavi peth,\r\nSanath Nagar', '0257-2255458', 1),
(7, 'Corporation Bank of India', 'Plot no 120/A, \r\nNavi peth,\r\nSanath Nagar', '0257-5588258', 1),
(8, 'Axis Bank of India', 'Plot no 120/A, \r\nNavi peth,\r\nSanath Nagar', '022-65232562', 6),
(9, 'Corporation Bank of India', 'Plot no 120/A, \r\nNavi peth,\r\nSanath Nagar', '022-65232562', 10),
(10, 'HDFC Bank', 'Plot no 120/A, \r\nNavi peth,\r\nSanath Nagar', '2584-254521', 11),
(11, 'State Bank of India', 'Plot no 120/A, \r\nNavi peth,\r\nSanath Nagar', '2584-254521', 7),
(12, 'Corporation Bank of India', 'Plot no 120/A, \r\nNavi peth,\r\nSanath Nagar', '0257-5588258', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(10) NOT NULL,
  `cname` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `cname`) VALUES
(1, 'Car & Bikes'),
(2, 'Mobile & Tablets'),
(3, 'Electronics'),
(4, 'Vehicles'),
(5, 'Home & Furnitures'),
(6, 'Services'),
(7, 'Fashion & Beauty'),
(8, 'Pets & Animals'),
(9, 'Jobs'),
(10, 'Real Estate');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cities`
--

CREATE TABLE `tbl_cities` (
  `id` int(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cities`
--

INSERT INTO `tbl_cities` (`id`, `city`, `state`) VALUES
(1, 'Jalgaon', 'Maharashtra'),
(9, 'Bhusawal', 'Maharashtra'),
(6, 'Nandurbar', 'Maharashtra'),
(11, 'Raver', 'Maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `bdate` varchar(100) NOT NULL,
  `is_admin` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `pwd`, `bdate`, `is_admin`) VALUES
(1, 'auctionadmin', 'auction123', '2011-07-23 14:06:27', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 01:05:03', NULL, 0),
(2, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 01:07:13', NULL, 1),
(5, 8, 'Arifiubat066@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 01:33:32', '02-09-2020 07:16:16 AM', 1),
(6, 8, 'Arifiubat066@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 01:51:43', NULL, 1),
(7, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 20:57:17', '03-09-2020 02:35:45 AM', 1),
(8, NULL, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:06:16', NULL, 0),
(27, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:15:12', NULL, 1),
(28, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:18:49', NULL, 1),
(29, 9, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:31:14', NULL, 1),
(30, 4, 'rabia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 01:05:26', '03-09-2020 06:50:15 AM', 1),
(31, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 22:29:12', '04-09-2020 04:01:12 AM', 1),
(32, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-19 17:50:01', '19-12-2020 11:20:15 PM', 1),
(33, 3, 'sujon@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-19 18:05:05', '19-12-2020 11:36:27 PM', 1),
(34, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-21 09:42:23', '21-12-2020 03:15:47 PM', 1),
(35, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-24 14:31:00', '24-12-2020 08:12:49 PM', 1),
(36, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-24 14:44:11', '24-12-2020 08:16:28 PM', 1),
(37, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-24 16:47:47', '24-12-2020 10:19:23 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'kamal islam', 'khilket,dhaka', 'Dhaka', 'male', 'kamal@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2016-12-30 05:34:39', '2020-09-02 23:17:09'),
(2, 'Roni Das', 'Chandra,Gazipur', 'Gazipur', 'male', 'roni@gmail.com', 'bf2b31437ac13efc1766c15dcf00c86c', '2017-01-07 06:36:53', '2020-09-02 23:28:56'),
(3, 'sujon islam', 'Barisal', 'Barisal', 'male', 'sujon@gmail.com', '81e879837a89afe5ba7e322186098d19', '2017-01-07 07:41:14', '2020-09-02 23:18:38'),
(4, 'Rabia Akther', 'Gopalpur,Tangail', 'Tangail', 'female', 'rabia@gmail.com', 'a9b7c0a2023033d38fe344af2f7f4889', '2019-06-23 18:24:53', '2020-09-02 22:01:22'),
(9, 'jahid hasan', 'Rampura', 'Dhaka', 'male', 'jahid@gmail.com', 'b2168c4c74dbf324b81dc4a93550d22a', '2020-09-03 00:30:44', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_auctions`
--
ALTER TABLE `tbl_auctions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banks`
--
ALTER TABLE `tbl_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_auctions`
--
ALTER TABLE `tbl_auctions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_banks`
--
ALTER TABLE `tbl_banks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
