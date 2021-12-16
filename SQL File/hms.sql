-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2020 at 01:31 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
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
(12, 'Bones Specialist ', 10, 1, 500, '2020-09-09', '5:15 PM', '2020-09-03 00:12:11', 1, 1, NULL),
(13, 'General Physician', 2, 9, 600, '2020-09-18', '3:15 AM', '2020-09-03 00:35:56', 0, 1, '2020-09-03 00:36:47'),
(14, 'Dentist', 4, 4, 400, '2020-09-24', '6:15 PM', '2020-09-03 01:07:44', 1, 1, NULL),
(15, 'General Physician', 2, 1, 600, '2020-09-16', '3:30 PM', '2020-09-03 22:30:06', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
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
(9, 'Dermatologist', 'Rahim', 'Rangpur', '500', 1234567890, 'rahim@gmail.com', '968e777544f92b601d588f85531bc3e8', '2019-11-10 18:37:47', '2020-09-02 22:18:06'),
(10, 'Bones Specialist ', 'Rafiq islam', 'Gulshan,Dhaka', '500', 1920052813, 'rafiq@gmail.com', 'dfb1758474d9c091af4d21ed995ef635', '2020-09-02 23:56:30', '2020-09-03 00:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
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
(17, 9, 'anujk@test.com', 0x3a3a3100000000000000000000000000, '2020-09-02 00:40:31', NULL, 1),
(18, 9, 'anujk@test.com', 0x3a3a3100000000000000000000000000, '2020-09-02 01:54:24', NULL, 1),
(19, NULL, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 20:31:56', NULL, 0),
(20, NULL, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 20:32:21', NULL, 0),
(21, 9, 'anujk@test.com', 0x3a3a3100000000000000000000000000, '2020-09-02 20:33:41', NULL, 1),
(22, NULL, 'rubina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 20:54:35', NULL, 0),
(23, 1, 'rubina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 20:55:28', '03-09-2020 02:26:20 AM', 1),
(24, 1, 'rubina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:12:58', '03-09-2020 02:43:23 AM', 1),
(25, 1, 'rubina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:13:35', '03-09-2020 05:54:48 AM', 1),
(26, 2, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:14:46', '03-09-2020 02:55:46 AM', 1),
(27, 2, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:37:05', '03-09-2020 03:07:17 AM', 1),
(28, 3, 'bithi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 22:05:21', '03-09-2020 03:36:03 AM', 1),
(29, 4, 'milon@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 22:11:24', '03-09-2020 03:41:45 AM', 1),
(30, 5, 'alom@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 22:13:26', '03-09-2020 03:43:48 AM', 1),
(31, 6, 'nahid@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 22:15:25', '03-09-2020 03:45:49 AM', 1),
(32, 9, 'rahim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 22:18:28', '03-09-2020 03:48:35 AM', 1),
(33, 10, 'rafiq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:01:53', '03-09-2020 05:32:28 AM', 1),
(34, 10, 'rafiq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:05:07', NULL, 1),
(35, 10, 'rafiq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:12:57', NULL, 1),
(36, 10, 'rafiq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:17:54', NULL, 1),
(37, 10, 'rafiq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:25:06', NULL, 1),
(38, 10, 'rafiq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:38:30', '03-09-2020 06:09:34 AM', 1),
(39, 2, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:39:56', NULL, 1),
(40, 2, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 22:31:33', '04-09-2020 04:02:47 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
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
  `message` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
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
  `MedicalPres` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
  `PatientAdd` mediumtext,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
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
(6, 2, 'Rabia Akther', 172492163, 'rabia@gmail.com', 'Female', 'Gopalpur,Tangail', 24, 'He has headache problem.', '2020-09-03 00:45:59', '2020-09-03 00:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 01:05:03', NULL, 0),
(2, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 01:07:13', NULL, 1),
(3, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 01:10:36', '02-09-2020 06:41:17 AM', 1),
(4, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 01:12:39', '02-09-2020 07:01:53 AM', 1),
(5, 8, 'Arifiubat066@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 01:33:32', '02-09-2020 07:16:16 AM', 1),
(6, 8, 'Arifiubat066@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 01:51:43', NULL, 1),
(7, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 20:57:17', '03-09-2020 02:35:45 AM', 1),
(8, NULL, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:06:16', NULL, 0),
(9, 1, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:07:23', '03-09-2020 02:37:32 AM', 1),
(10, NULL, 'rubina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:07:50', NULL, 0),
(11, NULL, 'rubina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:09:47', NULL, 0),
(12, 2, 'rubina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:10:49', '03-09-2020 02:41:32 AM', 1),
(13, 1, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:26:02', '03-09-2020 03:05:25 AM', 1),
(14, 1, 'arif@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:35:37', '03-09-2020 03:06:52 AM', 1),
(15, 3, 'milon123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 21:59:12', '03-09-2020 03:30:06 AM', 1),
(17, 4, 'rabia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 22:02:39', '03-09-2020 03:32:46 AM', 1),
(18, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 23:23:30', '03-09-2020 05:31:34 AM', 1),
(19, NULL, 'roni@gmil.com', 0x3a3a3100000000000000000000000000, '2020-09-02 23:26:28', NULL, 0),
(20, NULL, 'roni@gmil.com', 0x3a3a3100000000000000000000000000, '2020-09-02 23:26:44', NULL, 0),
(21, NULL, 'roni@gmil.com', 0x3a3a3100000000000000000000000000, '2020-09-02 23:28:03', NULL, 0),
(22, 2, 'roni@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 23:29:40', '03-09-2020 04:59:53 AM', 1),
(23, NULL, 'sujon@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 23:31:30', NULL, 0),
(24, 3, 'sujon@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 23:31:45', '03-09-2020 05:02:05 AM', 1),
(25, 4, 'rabia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-02 23:34:29', NULL, 1),
(26, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:11:37', NULL, 1),
(27, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:15:12', NULL, 1),
(28, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:18:49', NULL, 1),
(29, 9, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 00:31:14', NULL, 1),
(30, 4, 'rabia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 01:05:26', '03-09-2020 06:50:15 AM', 1),
(31, 1, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-03 22:29:12', '04-09-2020 04:01:12 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
