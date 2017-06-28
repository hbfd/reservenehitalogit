-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2016 at 07:03 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
use dbmw;
--
-- Database: `dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--


CREATE TABLE IF NOT EXISTS `users` (
  `userID` int primary key NOT NULL AUTO_INCREMENT,
  `userRegistration` varchar(9) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `userType` boolean,
  UNIQUE KEY `userEmail` (`userEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `administrador` (
  `userID` int primary key NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
   UNIQUE KEY `userEmail` (`userEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
