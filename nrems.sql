-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 18, 2020 at 09:01 AM
-- Server version: 10.3.9-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nrems`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp_reg`
--

DROP TABLE IF EXISTS `emp_reg`;
CREATE TABLE IF NOT EXISTS `emp_reg` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `ph` bigint(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hno` int(11) NOT NULL DEFAULT 0,
  `hname` varchar(90) NOT NULL DEFAULT '0',
  `street` varchar(50) NOT NULL DEFAULT '0',
  `district` varchar(50) NOT NULL DEFAULT '0',
  `state` varchar(50) NOT NULL DEFAULT '0',
  `sex` varchar(2) NOT NULL DEFAULT '0',
  `dob` varchar(90) NOT NULL DEFAULT '0',
  `adhar` bigint(13) NOT NULL DEFAULT 0,
  `reg_date` varchar(90) NOT NULL DEFAULT '0',
  `account` int(20) NOT NULL DEFAULT 0,
  `pic` varchar(100) NOT NULL DEFAULT '0',
  `work_day` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `wrk` varchar(90) NOT NULL DEFAULT '0',
  `ws` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`app_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_reg`
--

INSERT INTO `emp_reg` (`app_id`, `name`, `ph`, `password`, `hno`, `hname`, `street`, `district`, `state`, `sex`, `dob`, `adhar`, `reg_date`, `account`, `pic`, `work_day`, `status`, `wrk`, `ws`) VALUES
(1, '0', 0, '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', 0, '0', 2, 0, '0', 0),
(2, 'HarshaHaridas', 9387021829, '12345678', 0, '0', '0', '0', '0', '0', '0', 0, '0', 0, '0', 2, 0, '', 0),
(3, 'sarammaMathai', 9526937502, 'saramma', 0, '0', 'valamboor', '0', '0', '0', '0', 0, '0', 0, '0', 2, 0, '', 0),
(5, 'sample4sample4', 1234567890, '123', 6, 'Uu', 'mazhuvannoor', 'ernakulam', 'tamilnadu', 'm', '2020-12-24', 123456789012, '20-12-18', 12334444, 'hhggh.jpg', 2, 1, 'no new works', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emp_wrk`
--

DROP TABLE IF EXISTS `emp_wrk`;
CREATE TABLE IF NOT EXISTS `emp_wrk` (
  `app_id` int(11) NOT NULL,
  `w_id` int(11) NOT NULL,
  `attendance` float NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_wrk`
--

INSERT INTO `emp_wrk` (`app_id`, `w_id`, `attendance`) VALUES
(5, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `injury`
--

DROP TABLE IF EXISTS `injury`;
CREATE TABLE IF NOT EXISTS `injury` (
  `app_id` int(11) NOT NULL,
  `w_id` int(11) NOT NULL,
  `date` varchar(80) NOT NULL,
  `type` varchar(30) NOT NULL,
  `localbody` varchar(90) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `injury`
--

INSERT INTO `injury` (`app_id`, `w_id`, `date`, `type`, `localbody`) VALUES
(5, 2, '2020-12-15', 'non', ''),
(5, 2, '12-03-1010', 'non', 'mazhuvannoor'),
(5, 2, '2020-12-20', 'non', ''),
(5, 2, '2020-12-20', 'non', 'valamboor'),
(5, 2, '2020-12-13', 'intencive', 'valamboor');

-- --------------------------------------------------------

--
-- Table structure for table `local_admin`
--

DROP TABLE IF EXISTS `local_admin`;
CREATE TABLE IF NOT EXISTS `local_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `localbody` varchar(90) NOT NULL,
  `username` varchar(90) NOT NULL,
  `district` varchar(90) NOT NULL,
  `state` varchar(90) NOT NULL,
  `ph` bigint(10) NOT NULL,
  `is_ver` int(11) NOT NULL DEFAULT 0,
  `password` varchar(80) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `local_admin`
--

INSERT INTO `local_admin` (`id`, `lid`, `localbody`, `username`, `district`, `state`, `ph`, `is_ver`, `password`) VALUES
(1, 0, '0', '0', '0', '0', 0, 0, '0'),
(2, 7899, 'Mazhuvannoor', 'habro', 'ernakulam', 'tamilnadu', 9645431044, 1, '5102'),
(3, 78900, 'valamboor', 'vlamboor', 'ernakulam', 'tamilnadu', 787887878, 1, '5336');

-- --------------------------------------------------------

--
-- Table structure for table `main_admin`
--

DROP TABLE IF EXISTS `main_admin`;
CREATE TABLE IF NOT EXISTS `main_admin` (
  `username` varchar(90) NOT NULL,
  `password` varchar(90) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_admin`
--

INSERT INTO `main_admin` (`username`, `password`) VALUES
('habro', '9526');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `id` int(11) NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state`) VALUES
(1, 'kerala'),
(2, 'tamilnadu'),
(3, 'kerala');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
CREATE TABLE IF NOT EXISTS `work` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`id`, `name`) VALUES
(1, 'Public Institution Development'),
(2, 'Water Harvesting'),
(3, 'Ploughing'),
(4, 'Mending Walls');

-- --------------------------------------------------------

--
-- Table structure for table `work_reg`
--

DROP TABLE IF EXISTS `work_reg`;
CREATE TABLE IF NOT EXISTS `work_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `dem` varchar(90) NOT NULL,
  `days` int(11) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `status` varchar(2) NOT NULL DEFAULT 'w',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_reg`
--

INSERT INTO `work_reg` (`id`, `name`, `dem`, `days`, `start_date`, `end_date`, `place`, `status`) VALUES
(1, 'ff', 'ddd', 4, 'tt', 'gg', 'tt', 'w'),
(2, 'Water', 'govt', 89, '2020-12-01', '2020-12-21', 'mazhuvannoor', 'w');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
