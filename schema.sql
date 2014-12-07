-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: mysql.metropolia.fi
-- Generation Time: Dec 07, 2014 at 01:17 PM
-- Server version: 5.0.95
-- PHP Version: 5.5.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `seyedhe`
--

-- --------------------------------------------------------

--
-- Table structure for table `Belonging`
--

CREATE TABLE IF NOT EXISTS `Belonging` (
  `id` int(11) NOT NULL auto_increment,
  `DateAdded` date default NULL,
  `Privacy` enum('public','private','friends') default NULL,
  `PhotoURL` varchar(300) default NULL,
  `Category` int(2) default NULL,
  `Description` varchar(200) default NULL,
  `Name` varchar(30) default NULL,
  `RecyclingNotes` varchar(200) default NULL,
  `PurchasePrice` int(6) default NULL,
  `SellingPrice` int(6) default NULL,
  `DateBought` date default NULL,
  `GaurantyInfo` varchar(300) default NULL,
  `owner` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `Category` (`Category`),
  KEY `owner` (`owner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Belonging`
--

INSERT INTO `Belonging` (`id`, `DateAdded`, `Privacy`, `PhotoURL`, `Category`, `Description`, `Name`, `RecyclingNotes`, `PurchasePrice`, `SellingPrice`, `DateBought`, `GaurantyInfo`, `owner`) VALUES
(1, '2014-11-18', 'public', 'http://i1368.photobucket.com/albums/ag162/ommmmid/', 1, 'A new Raspberry PI', 'Raspberry PI', 'Special centers in Espoo', 30, 10, '2014-09-08', 'none', 1),
(3, '2014-10-13', 'public', 'http://i1368.photobucket.com/albums/ag162/ommmmid/e324e787-a527-4f42-99f9-2357dd0fb6fa_zps0287e9f7.jpg', 1, 'A xbee client ', 'xbee client', 'Special centers in finland', 150, 20, '2014-07-09', 'ends in jan 2015', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
  `id` int(11) NOT NULL auto_increment,
  `CategoryName` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id`, `CategoryName`) VALUES
(1, 'computers'),
(2, 'books');

-- --------------------------------------------------------

--
-- Table structure for table `Friendship`
--

CREATE TABLE IF NOT EXISTS `Friendship` (
  `id` int(11) NOT NULL auto_increment,
  `person1` int(6) default NULL,
  `person2` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Friendship`
--

INSERT INTO `Friendship` (`id`, `person1`, `person2`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `lendandborrow`
--

CREATE TABLE IF NOT EXISTS `lendandborrow` (
  `id` int(11) NOT NULL auto_increment,
  `LenderID` int(11) default NULL,
  `Date` date default NULL,
  `ReturnEstimation` date default NULL,
  `BorrowerID` int(11) default NULL,
  `BelongingID` int(6) default NULL,
  PRIMARY KEY  (`id`),
  KEY `BelongingID` (`BelongingID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lendandborrow`
--

INSERT INTO `lendandborrow` (`id`, `LenderID`, `Date`, `ReturnEstimation`, `BorrowerID`, `BelongingID`) VALUES
(1, 1, '2014-11-18', '2014-12-01', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE IF NOT EXISTS `Person` (
  `id` int(11) NOT NULL auto_increment,
  `FullName` varchar(30) default NULL,
  `NickName` varchar(30) default NULL,
  `BirthDate` date default NULL,
  `Email` varchar(30) default NULL,
  `Address` varchar(100) default NULL,
  `Password` char(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`id`, `FullName`, `NickName`, `BirthDate`, `Email`, `Address`, `Password`) VALUES
(1, 'Omid Hezaveh', 'Omid', '1988-12-17', 'my@email.com', 'Koskeshkatu 29', 'mypasswld'),
(3, 'Anton Chernenko', 'Anton', '2013-09-17', 'anton@mail.com', 'Kunikatu 29', 'antonpasswd');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
