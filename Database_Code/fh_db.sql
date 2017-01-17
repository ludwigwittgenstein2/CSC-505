-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2014 at 08:12 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fh_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE IF NOT EXISTS `activities` (
  `ActID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Desc` char(30) NOT NULL,
  `Name` char(30) NOT NULL,
  `WorkoutID` int(11) NOT NULL,
  `userID` char(15) NOT NULL,
  `Balance` int(11) NOT NULL,
  PRIMARY KEY (`ActID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`ActID`, `Quantity`, `Desc`, `Name`, `WorkoutID`, `userID`, `Balance`) VALUES
(14001, 10, 'Push Ups', 'PushUp', 1, '1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
  `transID` int(11) NOT NULL,
  `userID` char(15) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `CurrentBalance` decimal(10,0) NOT NULL,
  `TransAmount` decimal(10,0) NOT NULL,
  `UpdateBalance` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`transID`, `userID`, `Date`, `Time`, `CurrentBalance`, `TransAmount`, `UpdateBalance`) VALUES
(1, '1234', '2014-03-25', '04:49:41', '22', '1', '21');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `loginID` char(20) COLLATE ascii_bin NOT NULL,
  `userID` char(20) COLLATE ascii_bin NOT NULL,
  `password` char(20) COLLATE ascii_bin NOT NULL,
  `timeIn` time DEFAULT NULL,
  `timeOut` time DEFAULT NULL,
  PRIMARY KEY (`loginID`),
  UNIQUE KEY `userID` (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii COLLATE=ascii_bin COMMENT='User Login Information';

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginID`, `userID`, `password`, `timeIn`, `timeOut`) VALUES
('John', '1234', '81dc9bdb52d04dc20036', '22:00:00', '23:00:00'),
('Mike', '2233', '81569bdb52d04dc20876', '18:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Balance` int(11) NOT NULL,
  `userID` char(15) NOT NULL,
  `DOB` date NOT NULL,
  `Height` decimal(10,0) NOT NULL,
  `Weight` decimal(10,0) NOT NULL,
  `Password` char(20) NOT NULL,
  `EmailAddress` char(50) NOT NULL,
  `Name` char(50) NOT NULL,
  `Address` char(50) NOT NULL,
  `CCNum` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `transID` int(11) NOT NULL,
  `LoginID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Balance`, `userID`, `DOB`, `Height`, `Weight`, `Password`, `EmailAddress`, `Name`, `Address`, `CCNum`, `Type`, `transID`, `LoginID`) VALUES
(22, '1234', '1991-04-12', '6', '182', 'abcdef1234', 'atp9187@hotmail.com', 'Andrew Poirier', '23 Plum Rd Rhode Island', 123456789, 1, 1401, 1234),
(22, '1234', '1991-04-12', '5', '182', 'abcdef1234', 'atp9187@hotmail.com', 'Andrew Poirier', '23 Plum Rd Rhode Island', 123456789, 1, 1401, 1234);

-- --------------------------------------------------------

--
-- Table structure for table `workout_db`
--

CREATE TABLE IF NOT EXISTS `workout_db` (
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `Date` date NOT NULL,
  `ActID` int(11) NOT NULL,
  `WorkOutID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Balance` int(11) NOT NULL,
  `WorkTime` time NOT NULL,
  `Distance` decimal(10,0) NOT NULL,
  `Repetition` int(11) NOT NULL,
  PRIMARY KEY (`WorkOutID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workout_db`
--

INSERT INTO `workout_db` (`StartTime`, `EndTime`, `Date`, `ActID`, `WorkOutID`, `UserID`, `Balance`, `WorkTime`, `Distance`, `Repetition`) VALUES
('16:42:34', '02:40:00', '2014-03-26', 12345, 1400001, 12345, 11, '00:30:00', '5', 3),
('16:43:31', '02:40:00', '2014-03-26', 12345, 1400002, 12345, 11, '00:30:00', '4', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
