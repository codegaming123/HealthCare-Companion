-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2024 at 05:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin1', '28-09-2024 11:42:05 AM');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Dermatologist', 4, 13, 1500, '2024-11-29', '9:15 AM', '2024-10-15 18:31:28', 1, 0, '2024-10-23 03:11:52'),
(4, 'Opthalmoligist', 5, 2, 800, '2024-11-08', '1:00 PM', '2024-10-01 09:28:54', 1, 1, '2024-10-23 03:13:33'),
(5, 'Dermatologist', 4, 11, 1500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2024-10-23 03:18:55'),
(6, 'Gynecologist/Obstetrician', 6, 12, 300, '2024-10-23', '10:15 AM', '2024-10-16 02:12:37', 1, 1, '2024-10-23 03:11:06'),
(7, 'Pediatrician', 7, 2, 300, '2024-10-29', '8:30 AM', '2024-09-05 02:14:49', 1, 1, '2024-10-22 04:23:49');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Dr. Paul Abad', 'Mandurriao, Iloilo City', '500', 9472361407, 'pabad@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-09-28 14:25:37', '2024-10-22 00:29:19'),
(2, ' Cardiologist', 'Dr. Maria  dela   Cruz', 'La  Paz,   Iloilo   City', '550', 9176610739, 'delacruzm@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-09-26 02:51:51', '2024-10-22 02:50:49'),
(3, 'General Physician', 'Dr.  Daniel  Santos', 'Jaro, Iloilo City', '1200', 9082290175, 'daniels@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-09-27 06:33:35', '2024-10-22 00:30:59'),
(4, 'Dermatologist', 'Dr. Ana Reyes', 'Molo, Iloilo City', '1500', 9270828715, 'areyes@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-09-27 03:15:09', '2024-10-22 02:51:03'),
(5, 'Opthalmology', 'Dr. Jerome Villanueva', 'Mandurriao, Iloilo City', '800', 9089810244, 'villanuevaj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-10-01 02:41:37', '2024-10-22 00:26:49'),
(6, 'Gynecologist/Obstetrician\r\n', 'Dr. Olivia Flores', 'Leganes, Iloilo', '300', 9082290175, 'oliviaflores@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-09-26 06:52:50', '2024-10-23 00:09:38'),
(7, 'Pediatrician', 'Dr. Isabella Aquino', 'Pototan, Iloilo', '300', 9472361407, 'aquinoi@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-09-27 12:08:58', '2024-10-22 02:51:19');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(30, 7, 'aquinoi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 02:42:51', '22-10-2024 08:13:38 AM', 1),
(31, 4, 'areyes@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 02:44:11', NULL, 1),
(32, NULL, 'areyes@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 02:46:46', NULL, 0),
(33, NULL, 'areyes@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 02:47:03', NULL, 0),
(34, 4, 'areyes@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 02:47:46', '22-10-2024 08:18:15 AM', 1),
(36, 1, 'pabad@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 03:05:51', '22-10-2024 09:41:42 AM', 1),
(37, NULL, 'rosalese@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:12:27', NULL, 0),
(38, NULL, 'rosalese@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:13:02', NULL, 0),
(39, NULL, 'rosalese@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:13:39', NULL, 0),
(40, NULL, 'areyes@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:13:58', NULL, 0),
(41, NULL, 'pabad@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:14:15', NULL, 0),
(42, NULL, 'aquinoi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:14:48', NULL, 0),
(43, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:15:01', NULL, 0),
(44, 1, 'pabad@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:16:32', '22-10-2024 09:46:43 AM', 1),
(45, NULL, 'rosalese@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:16:55', NULL, 0),
(46, 7, 'aquinoi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:17:19', '22-10-2024 09:47:27 AM', 1),
(47, NULL, 'rosalese@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:17:37', NULL, 0),
(48, NULL, 'aliced@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:18:27', NULL, 0),
(49, 3, 'daniels@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:18:59', '22-10-2024 09:49:09 AM', 1),
(50, 2, 'delacruzm@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:19:46', '22-10-2024 09:49:56 AM', 1),
(51, NULL, 'rosalese@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:20:07', NULL, 0),
(52, 5, 'Villanuevaj@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:20:45', '22-10-2024 09:50:54 AM', 1),
(53, 6, 'oliviaflores@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:21:27', '22-10-2024 09:51:39 AM', 1),
(54, NULL, 'rosalese@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:22:02', NULL, 0),
(55, 4, 'areyes@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:22:24', '22-10-2024 09:52:30 AM', 1),
(56, 7, 'aquinoi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:26:04', NULL, 1),
(57, 7, 'aquinoi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 05:25:09', NULL, 1),
(58, NULL, 'rosalese@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 21:37:27', NULL, 0),
(59, NULL, 'areyes@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 21:38:06', NULL, 0),
(60, 1, 'pabad@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 21:38:24', '23-10-2024 03:21:08 AM', 1),
(61, NULL, 'aliced@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 23:27:03', NULL, 0),
(62, NULL, 'aliced@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 23:42:03', NULL, 0),
(63, 6, 'oliviaflores@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-23 00:10:29', '23-10-2024 05:47:03 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2024-09-28 05:37:25', '2024-10-22 03:10:45'),
(2, 'General Physician', '2024-10-06 05:38:12', '2024-10-22 03:11:15'),
(3, 'Dermatologist', '2024-09-29 05:38:48', '2024-10-22 03:11:51'),
(5, 'Opthalmologist', '2024-10-22 03:09:19', '2024-10-22 03:13:09'),
(6, 'Dentist', '2024-10-01 05:40:08', '2024-10-22 03:14:41'),
(13, 'Physician', '2024-10-05 01:59:00', '2024-10-22 03:15:27');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Florence Diaz', 'diazf@gmail.com', 9564329102, 'I would like to schedule an appointment with Dr. Aquino. My preferred date and time is on Oct. 25 at 10:00 AM. If this slot is unavailable, I am flexible and can adjust accordingly.\r\n\r\nPlease let me know the soonest available time for the appointment.\r\n\r\nThank you for your assistance.', '2024-09-29 19:03:08', 'Answered.', '2024-10-22 07:40:57', 1),
(2, 'Catalina Soriano', 'soriano2@gmail.com', 9643201873, 'I am writing to request an urgent appointment with Dr. Santos as I have been experiencing several concerning symptoms over the past few days. These include persistent headaches, dizziness.\r\n\r\nI would greatly appreciate it if you could provide the earliest available dates and times for a consultation. I am willing to adjust my schedule to fit his availability, as these symptoms have been affecting my daily activities.\r\n\r\nThank you for your prompt attention to this matter. I look forward to your response.', '2024-10-17 13:06:50', 'Answered', '2024-10-21 02:13:25', 1),
(3, 'Katherine Enriquez', 'katherine30@gmail.com', 9674827310, 'I am writing to schedule an appointment with Dr. Diaz as I have been experiencing some concerns related to my reproductive health. Specifically, I have been dealing with irregular menstrual cycles and some pelvic discomfort over the past few months.\r\n\r\nCould you please let me know her earliest available dates and times for a consultation? I am flexible with my schedule and can adjust to fit your availability.\r\n\r\nThank you for your attention to this matter. I look forward to your response. ', '2024-10-10 17:53:48', '', '2024-10-21 17:54:04', 1),
(4, 'Leo Pascua', 'pascualeo@gmail.com', 9285120837, 'I am writing to schedule an appointment with Dr. Villanueva as I have been experiencing some concerning symptoms related to my vision. Specifically, I have noticed persistent blurry vision and occasional eye discomfort over the past few weeks.\r\n\r\nCould you please provide his earliest available dates and times for a consultation? I am flexible with my schedule and can adjust to fit your availability.\r\n\r\nThank you for your prompt attention to this matter. I look forward to your response.', '2024-09-25 01:57:20', 'Answered', '2024-10-18 01:57:46', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 6, '120/185', '80', '85 kg.', '50 degrees Celsius', '# High fever\r\n1.Ibuprofen(Advil, Motrin)\r\n\r\n', '2024-10-23 03:20:24'),
(3, 5, '90/120', '92', '86 kg', '35 degrees Celsius', '# High blood pressure\r\n1. Losartan (Cozaar)', '2024-10-04 03:31:24'),
(4, 1, '96/120', '86', '56 kg.', '36 degrees Celsius', '# Shortness of breath\r\n1.Tiotropium (Spiriva)', '2024-10-22 08:22:31'),
(5, 1, '96/120', '86', '56 kg.', '36 degress Celcius', '# Asthma Problem\r\n1. Prednisone-Quick-relief (Rescue) Medication\r\n2. Fluticasone (Flovent)', '2024-10-22 08:23:44'),
(6, 4, '90/120', '120', '75 kg.', '38 degrees Celsius', '# High blood Sugar\r\n1. Metformin\r\n2. Axagliptin(Onglyza)\r\n', '2024-10-22 08:24:23');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Jhon Salazar', 9276582913, 'jhons27gmail.com', 'Male', 'Passi, City Iloilo', 22, 'Chest pain and shortness of breath', '2024-10-04 20:38:06', '2024-10-06 05:48:05'),
(4, 7, 'William  Guevarra', 9284164098, 'guevarrawilliam@gmail.com', 'Male', 'Senator Benigno Aquino Jr. Avenue, Jaro West Diversion Road, Mandurriao District, Iloilo City', 45, 'Hypertension diagnosed 3 years ago', '2024-10-06 13:33:54', '2024-10-06 13:34:31'),
(5, 9, 'Amara  Ortiz', 9128387409, 'amaraortiz@gmail.com', 'Female', 'Airport Spur Road 5000 Iloilo Western Visayas', 5, 'Persistent cough and weight loss', '2024-10-10 17:49:24', '2024-10-22 03:27:05'),
(6, 0, 'Penelope  Manuel', 9663276981, 'manuelp@gmail.com', 'Female', 'Jaro, Iloilo City', 50, 'Blurry vision and eye discomfort', '2024-10-05 02:08:09', '2024-10-22 03:31:33');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(31, NULL, 'henry456@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:57:41', NULL, 0),
(32, 2, 'henry456@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 04:58:40', '22-10-2024 10:28:56 AM', 1),
(33, 8, 'manalooliver@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 05:02:54', '22-10-2024 10:33:36 AM', 1),
(34, 8, 'manalooliver@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 05:04:26', '22-10-2024 10:34:56 AM', 1),
(35, NULL, 'manalooliver@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 05:05:13', NULL, 0),
(36, NULL, 'manalooliver@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 05:05:20', NULL, 0),
(37, NULL, 'manalooliver@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 05:05:25', NULL, 0),
(38, 8, 'manalooliver@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 05:05:33', '22-10-2024 10:35:58 AM', 1),
(39, 9, 'gonzalezr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 05:09:41', '22-10-2024 10:43:51 AM', 1),
(40, 10, 'trinityb@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 05:17:31', NULL, 1),
(41, 2, 'henry456@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-22 21:51:33', '23-10-2024 04:56:45 AM', 1),
(42, 11, 'manalooliver@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-23 00:36:15', '23-10-2024 06:06:32 AM', 1),
(43, 12, 'gonzalezr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-23 00:37:35', '23-10-2024 06:07:39 AM', 1),
(44, 13, 'trinityb@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-23 00:38:54', '23-10-2024 08:44:04 AM', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, ' Henry  Manalo', 'Mandurriao', 'Iloilo, City', 'Male', 'henry456@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-10-11 04:34:39', '2024-10-17 01:55:24'),
(11, 'Oliver Manalo', 'Pavia', 'Iloilo City', 'Male', 'manalooliver@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-10-23 00:35:58', '2024-10-23 03:17:00'),
(12, 'Regina Gonzalez', 'Leganes', 'Iloilo City', 'F\r\nemale', 'gonzalezr@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-10-23 00:37:16', '2024-10-23 03:15:50'),
(13, 'Trinity Bautista', 'Barangay 7', 'Roxas City', 'female', 'trinityb@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-10-23 00:38:20', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
