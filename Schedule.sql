-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 09:41 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--
-- Creation: Apr 19, 2020 at 05:08 AM
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `ScheduleID` int(10) NOT NULL AUTO_INCREMENT,
  `ScheduleDate` varchar(50) NOT NULL,
  `ScheduleTime` varchar(50) NOT NULL,
  `ScheduleType` varchar(50) NOT NULL,
  `ScheduleDoc` varchar(50) NOT NULL,
  `ScheduleHos` varchar(50) NOT NULL,
  PRIMARY KEY (`ScheduleID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;


--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`ScheduleID`, `ScheduleDate`, `ScheduleTime`, `ScheduleType`, `ScheduleDoc`, `ScheduleHos`) VALUES
(22, '2020/OCT/21', '3.00 PM - 4.00 PM', 'channeling', 'ashok senaka', 'lanka'),
(23, '2020/OCT/23', '3.00 PM - 4.00 PM', 'channeling', 'seth ekanayake', 'lanka'),
(24, '2020/OCT/24', '4.00 PM - 5.00 PM', 'counseling', 'jaliya parera', 'hemas');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
