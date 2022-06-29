-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 03, 2021 at 04:53 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_appointment` date NOT NULL,
  `time_of_appointment` time NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `،FK_doctor_appointment،` (`doctor_id`),
  KEY `،FK_patient_appointment،` (`patient_id`),
  KEY `،FK_employee_appointment،` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`ID`, `date_of_appointment`, `time_of_appointment`, `doctor_id`, `patient_id`, `employee_id`) VALUES
(1, '2021-05-04', '01:00:00', 1, 1, 2),
(2, '2021-05-14', '02:00:00', 2, 1, 2),
(3, '2021-05-24', '01:00:00', 4, 1, 4),
(4, '2021-05-25', '03:00:00', 6, 1, 6),
(5, '2021-05-05', '01:00:00', 1, 3, 2),
(6, '2021-05-15', '02:00:00', 3, 3, 4),
(7, '2021-05-25', '01:00:00', 5, 3, 6),
(8, '2021-05-26', '03:00:00', 6, 3, 6),
(9, '2021-05-16', '02:00:00', 3, 4, 4),
(10, '2021-05-26', '01:00:00', 5, 4, 6),
(11, '2021-05-27', '03:00:00', 1, 4, 2),
(12, '2021-05-17', '02:00:00', 3, 5, 4),
(13, '2021-05-05', '01:00:00', 5, 5, 6),
(14, '2021-05-06', '03:00:00', 1, 5, 2),
(15, '2021-05-18', '02:30:00', 3, 6, 4),
(16, '2021-05-28', '01:30:00', 5, 6, 6),
(17, '2021-05-29', '03:30:00', 1, 6, 2),
(18, '2021-05-19', '02:00:00', 3, 7, 4),
(19, '2021-06-26', '01:00:00', 5, 7, 6),
(20, '2021-06-27', '03:00:00', 1, 7, 2),
(21, '2021-07-16', '02:00:00', 3, 8, 4),
(22, '2021-07-26', '01:00:00', 5, 8, 6),
(23, '2021-07-27', '03:00:00', 1, 8, 2),
(24, '2021-01-01', '02:00:00', 3, 9, 4),
(25, '2021-01-02', '01:00:00', 5, 9, 6),
(26, '2021-01-03', '03:00:00', 2, 9, 2),
(27, '2021-01-04', '02:00:00', 4, 10, 4),
(28, '2021-01-05', '01:00:00', 5, 10, 6),
(29, '2021-01-06', '03:00:00', 2, 10, 2),
(30, '2021-01-07', '02:00:00', 4, 11, 4),
(31, '2021-01-08', '01:00:00', 6, 11, 6),
(32, '2021-01-09', '03:00:00', 2, 11, 2),
(33, '2021-01-10', '02:00:00', 4, 12, 4),
(34, '2021-01-11', '01:00:00', 6, 12, 6),
(35, '2021-01-12', '03:00:00', 2, 12, 2),
(36, '2021-01-13', '02:00:00', 4, 13, 4),
(37, '2021-01-14', '01:00:00', 6, 13, 6),
(38, '2021-01-15', '03:00:00', 2, 13, 2),
(39, '2021-01-16', '02:00:00', 4, 14, 4),
(40, '2021-01-17', '01:00:00', 6, 14, 6),
(41, '2021-01-18', '03:00:00', 2, 14, 2),
(42, '2021-01-19', '02:00:00', 4, 15, 4),
(43, '2021-01-20', '01:00:00', 6, 15, 6),
(44, '2021-01-21', '03:00:00', 2, 15, 2),
(45, '2021-01-30', '02:00:00', 5, 16, 6);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `phone` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL,
  `street_number` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `،FK_clinic_branch،` (`clinic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`ID`, `phone`, `clinic_id`, `street_number`, `city`, `name`, `email`) VALUES
(1, 775478965, 1, 15, 'Amman', 'Amman clinic', 'PerfectTeethAmman@gmail.com'),
(2, 779658888, 1, 10, 'Irbid', 'Irbid clinic', 'PerfectTeethIrbid@gmail.com'),
(3, 775411111, 1, 12, 'Zarqa', 'Zarqa clinic', 'PerfectTeethZarqa@gmail.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `branch1max`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `branch1max`;
CREATE TABLE IF NOT EXISTS `branch1max` (
`COUNT(appointment.ID)` bigint(21)
,`ID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `branch2max`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `branch2max`;
CREATE TABLE IF NOT EXISTS `branch2max` (
`COUNT(appointment.ID)` bigint(21)
,`ID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `branch3max`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `branch3max`;
CREATE TABLE IF NOT EXISTS `branch3max` (
`COUNT(appointment.ID)` bigint(21)
,`ID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

DROP TABLE IF EXISTS `clinic`;
CREATE TABLE IF NOT EXISTS `clinic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`ID`, `name`) VALUES
(1, 'perfect teeth');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `،FK_doctor_branch،` (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`ID`, `branch_id`, `payment`, `phone`, `fname`, `lname`, `email`) VALUES
(1, 1, 1300, 792224657, 'Dr.Nart ', 'Wardam', ' NartWardam@gmail.com'),
(2, 1, 1450, 771233357, 'Dr.Obada ', '  Hyari', 'ObadaHyari@gmail.com'),
(3, 2, 1300, 781234777, 'Dr.Oun', '   Naimat', 'OunNaimat@gmail.com'),
(4, 2, 1300, 792224655, 'Dr.Raed ', '  ahmad', 'RaedAhmad@gmail.com'),
(5, 3, 1200, 777734657, 'Dr.Ahmad ', '  Mahmoud', 'AhmadMahmoud@gmail.com'),
(6, 3, 1450, 771239357, 'Dr.Zaid ', '  Snouno', 'ZaidSnouno@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_address`
--

DROP TABLE IF EXISTS `doctor_address`;
CREATE TABLE IF NOT EXISTS `doctor_address` (
  `doctor_id` int(11) NOT NULL,
  `street_number` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  PRIMARY KEY (`doctor_id`,`city`,`street_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_address`
--

INSERT INTO `doctor_address` (`doctor_id`, `street_number`, `city`) VALUES
(1, 5, 'Amman'),
(1, 9, 'Irbid'),
(2, 45, 'Amman'),
(2, 4, 'Maan'),
(3, 1120, 'Jarash'),
(3, 60, 'Salt'),
(4, 52, 'Amman'),
(4, 91, 'Irbid'),
(5, 40, 'Maan'),
(5, 405, 'Zarqa'),
(6, 120, 'Jarash'),
(6, 660, 'Salt');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_patient`
--

DROP TABLE IF EXISTS `doctor_patient`;
CREATE TABLE IF NOT EXISTS `doctor_patient` (
  `patient_health_number` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  PRIMARY KEY (`patient_health_number`,`doctor_id`),
  KEY `،FK_doctor_patient،` (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_patient`
--

INSERT INTO `doctor_patient` (`patient_health_number`, `doctor_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(1, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(1, 4),
(2, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(1, 6),
(2, 6),
(3, 6),
(5, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6);

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

DROP TABLE IF EXISTS `drug`;
CREATE TABLE IF NOT EXISTS `drug` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug`
--

INSERT INTO `drug` (`ID`, `name`) VALUES
(1, 'Fluoride'),
(2, 'Ibuprofen'),
(3, 'Panadol'),
(4, 'Chlorhexidine'),
(5, 'Azithromycin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_birth` date NOT NULL,
  `email` varchar(200) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `is_cleaner` tinyint(1) DEFAULT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `،FK_employee_branch،` (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `date_of_birth`, `email`, `branch_id`, `payment`, `is_cleaner`, `fname`, `lname`) VALUES
(1, '2000-05-04', 'IssaMahmoud@gmail.com', 1, 300, 1, 'Issa ', '  Mahmoud'),
(2, '1980-05-04', 'AhmadMahmoud@gmail.com', 1, 500, 0, 'Ahmad ', '  Mahmoud'),
(3, '2002-08-04', 'IssaAhmad@gmail.com', 2, 300, 1, 'Issa ', '  Ahmad'),
(4, '1984-05-12', 'AhmadSabri@gmail.com', 2, 500, 0, 'Ahmad ', '  Sabri'),
(5, '2001-12-04', 'AmjadGhazi@gmail.com', 3, 300, 1, 'Amjad ', '  Ghazi'),
(6, '1989-05-28', 'AhmadHyari@gmail.com', 3, 500, 0, 'Ahmad ', '  Hyari');

-- --------------------------------------------------------

--
-- Table structure for table `employee_address`
--

DROP TABLE IF EXISTS `employee_address`;
CREATE TABLE IF NOT EXISTS `employee_address` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `street_number` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  PRIMARY KEY (`employee_id`,`city`,`street_number`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_address`
--

INSERT INTO `employee_address` (`employee_id`, `street_number`, `city`) VALUES
(1, 50, 'Amman'),
(1, 9, 'Irbid'),
(2, 45, 'Amman'),
(2, 4, 'Maan'),
(3, 1120, 'Jarash'),
(3, 60, 'Salt'),
(4, 52, 'Amman'),
(4, 91, 'Irbid'),
(5, 40, 'Maan'),
(5, 405, 'Zarqa'),
(6, 120, 'Jarash'),
(6, 660, 'Salt');

-- --------------------------------------------------------

--
-- Table structure for table `employee_phone`
--

DROP TABLE IF EXISTS `employee_phone`;
CREATE TABLE IF NOT EXISTS `employee_phone` (
  `employee_id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`employee_id`,`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_phone`
--

INSERT INTO `employee_phone` (`employee_id`, `phone`) VALUES
(1, '771234567'),
(1, '771234577'),
(2, '771234767'),
(2, '771237567'),
(3, '771274567'),
(3, '771734567'),
(4, '777234567'),
(4, '791234567'),
(5, '771834567'),
(5, '778234567'),
(6, '771238567'),
(6, '771284567');

-- --------------------------------------------------------

--
-- Table structure for table `health_record`
--

DROP TABLE IF EXISTS `health_record`;
CREATE TABLE IF NOT EXISTS `health_record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `،FK_patient_record،` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_record`
--

INSERT INTO `health_record` (`ID`, `patient_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16);

-- --------------------------------------------------------

--
-- Stand-in structure for view `maxbranch`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `maxbranch`;
CREATE TABLE IF NOT EXISTS `maxbranch` (
`num` bigint(21)
,`branch_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `health_number` int(11) NOT NULL AUTO_INCREMENT,
  `street_number` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`health_number`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`health_number`, `street_number`, `fname`, `lname`, `city`, `date_of_birth`, `email`) VALUES
(1, 200, 'Ahmad ', '  Waleed', 'Amman', '2000-05-04', 'AhmadWaleed@gmail.com'),
(2, 320, 'Ahmad ', '  Mahmoud', 'Zarqa', '2002-06-04', 'AhmadMahmoud@gmail.com'),
(3, 302, 'Ahmad ', '  Mohammad', 'Irbid', '2001-07-04', 'AhmadMohammad@gmail.com'),
(4, 303, 'Issa ', '  Mahmoud', 'Jarash', '2007-08-04', 'IssaMahmoud@gmail.com'),
(5, 330, 'Rajab', '   Mahmoud', 'Amman', '2008-09-04', 'RajabMahmoud@gmail.com'),
(6, 400, 'Alex ', '  Hyari', 'Amman', '2010-10-04', 'AlexHyari@gmail.com'),
(7, 340, 'Nazmi', '   Mahmoud', 'Amman', '1990-11-04', 'NazmiMahmoud@gmail.com'),
(8, 304, 'Ahmad ', '  Yousef', 'Amman', '2004-12-04', 'AhmadYousef@gmail.com'),
(9, 301, 'Mohammad', '   Mahmoud', 'Amman', '2001-05-05', 'MohammadMahmoud@gmail.com'),
(10, 310, 'Mohammad', '   Tehabsim', 'Amman', '2000-05-14', 'MohammadTehabsim@gmail.com'),
(11, 380, 'Ahmad ', '  Abu Seef', 'Amman', '2002-05-24', 'AhmadAbuSeef@gmail.com'),
(12, 308, 'Mahmoud ', '  Ahmad', 'Aqaba', '2001-05-09', 'MahmoudAhmad@gmail.com'),
(13, 309, 'Aseel ', '  Saif', 'Zarqa', '2003-05-02', 'AseelSaif@gmail.com'),
(14, 30, 'Rana ', '  Mahmoud', 'Jarash', '2002-05-04', 'RanaMahmoud@gmail.com'),
(15, 3, 'Sarah ', '  Mahmoud', 'Amman', '2001-05-08', 'SarahMahmoud@gmail.com'),
(16, 3, 'Sara', 'Mahmod', 'Amman', '2010-05-08', 'SaraMahmod@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `patient_phone`
--

DROP TABLE IF EXISTS `patient_phone`;
CREATE TABLE IF NOT EXISTS `patient_phone` (
  `patient_id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`patient_id`,`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_phone`
--

INSERT INTO `patient_phone` (`patient_id`, `phone`) VALUES
(1, '779876533'),
(1, '779876543'),
(2, '779873543'),
(2, '779876343'),
(3, '779376543'),
(3, '779836543'),
(4, '773876543'),
(4, '774876543'),
(5, '779476543'),
(5, '779846543'),
(6, '779874543'),
(6, '779876443'),
(7, '779876548'),
(7, '779876583'),
(8, '779876843'),
(8, '779878543'),
(9, '778876543'),
(9, '779886543'),
(10, '771876543'),
(10, '779176543'),
(11, '779816543'),
(11, '779871543'),
(12, '779876143'),
(12, '779876513'),
(13, '779876523'),
(13, '779876541'),
(14, '779872543'),
(14, '779876243'),
(15, '779276543'),
(15, '779826543');

-- --------------------------------------------------------

--
-- Table structure for table `record_disease`
--

DROP TABLE IF EXISTS `record_disease`;
CREATE TABLE IF NOT EXISTS `record_disease` (
  `record_id` int(11) NOT NULL,
  `disease` varchar(200) NOT NULL,
  PRIMARY KEY (`record_id`,`disease`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record_disease`
--

INSERT INTO `record_disease` (`record_id`, `disease`) VALUES
(1, 'Cavities'),
(1, 'Periodontitis'),
(2, 'Cracked teeth'),
(2, 'Gum disease'),
(2, 'Periodontitis'),
(2, 'Sensitive teeth'),
(3, 'Cavities'),
(3, 'Sensitive teeth'),
(4, 'Cavities'),
(4, 'Gum disease'),
(4, 'Periodontitis'),
(5, 'Cracked teeth'),
(5, 'Gum disease'),
(5, 'Sensitive teeth'),
(6, 'Cavities'),
(6, 'Cracked teeth'),
(6, 'Periodontitis'),
(7, 'Cavities'),
(7, 'Cracked teeth'),
(7, 'Gum disease'),
(7, 'Sensitive teeth'),
(8, 'Cavities'),
(8, 'Sensitive teeth'),
(9, 'Gum disease'),
(9, 'Periodontitis'),
(10, 'Cracked teeth'),
(10, 'Gum disease'),
(10, 'Sensitive teeth'),
(11, 'Cavities'),
(11, 'Cracked teeth'),
(11, 'Periodontitis'),
(12, 'Cracked teeth'),
(12, 'Gum disease'),
(12, 'Sensitive teeth'),
(13, 'Cavities'),
(13, 'Sensitive teeth'),
(14, 'Gum disease'),
(14, 'Periodontitis'),
(15, 'Cracked teeth'),
(15, 'Gum disease'),
(15, 'Periodontitis');

-- --------------------------------------------------------

--
-- Table structure for table `record_drug`
--

DROP TABLE IF EXISTS `record_drug`;
CREATE TABLE IF NOT EXISTS `record_drug` (
  `record_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `uses` varchar(500) NOT NULL,
  PRIMARY KEY (`record_id`,`drug_id`,`uses`),
  KEY `،FK_drug_record،` (`drug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record_drug`
--

INSERT INTO `record_drug` (`record_id`, `drug_id`, `uses`) VALUES
(1, 1, 'two bills every 24 hours to remove the pain'),
(3, 1, 'two bills every 24 hours to remove the pain'),
(4, 1, 'three bills every 24 hours to remove the pain'),
(6, 1, 'one bills every 24 hours to remove the pain'),
(7, 1, 'one bills every 24 hours to remove the pain'),
(8, 1, 'one bills every 24 hours to remove the pain'),
(11, 1, 'two bills every 24 hours to remove the pain'),
(13, 1, 'two bills every 24 hours to remove the pain'),
(2, 2, 'two bills every 7 hours to remove the pain'),
(3, 2, 'two bills every 7 hours to remove the pain'),
(5, 2, 'three bills every 7 hours to remove the pain'),
(7, 2, 'one bills every 7 hours to remove the pain'),
(8, 2, 'one bills every 7 hours to remove the pain'),
(10, 2, 'one bills every 7 hours to remove the pain'),
(12, 2, 'two bills every 7 hours to remove the pain'),
(13, 2, 'two bills every 7 hours to remove the pain'),
(2, 3, 'two bills every 12 hours to remove the pain'),
(5, 3, 'two bills every 12 hours to remove the pain'),
(6, 3, 'three bills every 12 hours to remove the pain'),
(7, 3, 'one bills every 12 hours to remove the pain'),
(10, 3, 'one bills every 12 hours to remove the pain'),
(11, 3, 'two bills every 12 hours to remove the pain'),
(12, 3, 'one bills every 12 hours to remove the pain'),
(15, 3, 'two bills every 12 hours to remove the pain'),
(2, 4, 'two bills every 4 hours to remove the pain'),
(4, 4, 'two bills every 4 hours to remove the pain'),
(5, 4, 'three bills every 4 hours to remove the pain'),
(7, 4, 'two bills every 4 hours to remove the pain'),
(9, 4, 'two bills every 4 hours to remove the pain'),
(10, 4, 'three bills every 4 hours to remove the pain'),
(12, 4, 'two bills every 4 hours to remove the pain'),
(14, 4, 'two bills every 4 hours to remove the pain'),
(15, 4, 'three bills every 4 hours to remove the pain'),
(1, 5, 'two bills every 5 hours to remove the pain'),
(2, 5, 'two bills every 5 hours to remove the pain'),
(4, 5, 'one bills every 5 hours to remove the pain'),
(6, 5, 'three bills every 5 hours to remove the pain'),
(9, 5, 'one bills every 5 hours to remove the pain'),
(11, 5, 'two bills every 5 hours to remove the pain'),
(14, 5, 'one bills every 5 hours to remove the pain'),
(15, 5, 'two bills every 5 hours to remove the pain');

-- --------------------------------------------------------

--
-- Structure for view `branch1max`
--
DROP TABLE IF EXISTS `branch1max`;

DROP VIEW IF EXISTS `branch1max`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `branch1max`  AS  select count(`appointment`.`ID`) AS `COUNT(appointment.ID)`,`employee`.`ID` AS `ID` from (`employee` join `appointment` on((`employee`.`ID` = `appointment`.`employee_id`))) where (`employee`.`branch_id` = 1) group by `employee`.`ID` ;

-- --------------------------------------------------------

--
-- Structure for view `branch2max`
--
DROP TABLE IF EXISTS `branch2max`;

DROP VIEW IF EXISTS `branch2max`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `branch2max`  AS  select count(`appointment`.`ID`) AS `COUNT(appointment.ID)`,`employee`.`ID` AS `ID` from (`employee` join `appointment` on((`employee`.`ID` = `appointment`.`employee_id`))) where (`employee`.`branch_id` = 2) group by `employee`.`ID` ;

-- --------------------------------------------------------

--
-- Structure for view `branch3max`
--
DROP TABLE IF EXISTS `branch3max`;

DROP VIEW IF EXISTS `branch3max`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `branch3max`  AS  select count(`appointment`.`ID`) AS `COUNT(appointment.ID)`,`employee`.`ID` AS `ID` from (`employee` join `appointment` on((`employee`.`ID` = `appointment`.`employee_id`))) where (`employee`.`branch_id` = 3) group by `employee`.`ID` ;

-- --------------------------------------------------------

--
-- Structure for view `maxbranch`
--
DROP TABLE IF EXISTS `maxbranch`;

DROP VIEW IF EXISTS `maxbranch`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maxbranch`  AS  select count(`appointment`.`doctor_id`) AS `num`,`doctor`.`branch_id` AS `branch_id` from (`appointment` join `doctor` on((`appointment`.`doctor_id` = `doctor`.`ID`))) group by `doctor`.`branch_id` order by `num` desc limit 1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `،FK_doctor_appointment،` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`ID`),
  ADD CONSTRAINT `،FK_employee_appointment،` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`ID`),
  ADD CONSTRAINT `،FK_patient_appointment،` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`health_number`);

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `،FK_clinic_branch،` FOREIGN KEY (`clinic_id`) REFERENCES `clinic` (`ID`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `،FK_doctor_branch،` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`ID`);

--
-- Constraints for table `doctor_address`
--
ALTER TABLE `doctor_address`
  ADD CONSTRAINT `،FK_doctor_address،` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`ID`);

--
-- Constraints for table `doctor_patient`
--
ALTER TABLE `doctor_patient`
  ADD CONSTRAINT `،FK_doctor_patient،` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`ID`),
  ADD CONSTRAINT `،FK_patient_doctor،` FOREIGN KEY (`patient_health_number`) REFERENCES `patient` (`health_number`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `،FK_employee_branch،` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`ID`);

--
-- Constraints for table `employee_address`
--
ALTER TABLE `employee_address`
  ADD CONSTRAINT `،FK_employee_address،` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`ID`);

--
-- Constraints for table `employee_phone`
--
ALTER TABLE `employee_phone`
  ADD CONSTRAINT `،FK_employee_phone،` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`ID`);

--
-- Constraints for table `health_record`
--
ALTER TABLE `health_record`
  ADD CONSTRAINT `،FK_patient_record،` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`health_number`);

--
-- Constraints for table `patient_phone`
--
ALTER TABLE `patient_phone`
  ADD CONSTRAINT `،FK_patient_phone،` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`health_number`);

--
-- Constraints for table `record_disease`
--
ALTER TABLE `record_disease`
  ADD CONSTRAINT `،FK_record_disease،` FOREIGN KEY (`record_id`) REFERENCES `health_record` (`ID`);

--
-- Constraints for table `record_drug`
--
ALTER TABLE `record_drug`
  ADD CONSTRAINT `،FK_drug_record،` FOREIGN KEY (`drug_id`) REFERENCES `drug` (`ID`),
  ADD CONSTRAINT `،FK_record_drug،` FOREIGN KEY (`record_id`) REFERENCES `health_record` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
