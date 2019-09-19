-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 24, 2019 at 02:59 AM
-- Server version: 5.7.23
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
-- Database: `system`
--

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
CREATE TABLE IF NOT EXISTS `fee` (
  `unid` varchar(30) NOT NULL,
  `degree` varchar(200) NOT NULL,
  `fee` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`unid`,`degree`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`unid`, `degree`, `fee`) VALUES
('ANU', 'UNDER-GRADUATION', 2930000),
('CAM', 'UNDER-GRADUATION', 2830000),
('HAR', 'UNDER-GRADUATION', 5000000),
('KENT', 'UNDER-GRADUATION', 1350000),
('MIT', 'UNDER-GRADUATION', 4780000),
('OX', 'UNDER-GRADUATION', 4740000),
('QMUL', 'UNDER-GRADUATION', 1960000),
('RRU', 'UNDER-GRADUATION', 1070000),
('STAN', 'UNDER-GRADUATION', 4350000),
('SYD', 'UNDER-GRADUATION', 3380000),
('TRU', 'UNDER-GRADUATION', 1510000),
('TWUB', 'UNDER-GRADUATION', 1220000),
('TWUL', 'UNDER-GRADUATION', 1100000),
('TWUR', 'UNDER-GRADUATION', 1050000),
('UCL', 'UNDER-GRADUATION', 4380000),
('UNIMELB', 'UNDER-GRADUATION', 3260000),
('UQ', 'UNDER-GRADUATION', 1385000),
('VIU', 'UNDER-GRADUATION', 1350000),
('VIU', 'POST-GRADUATION', 1870000),
('RRU', 'POST-GRADUATION', 1730000),
('TWUL', 'POST-GRADUATION', 1990000),
('TWUR', 'POST-GRADUATION', 1820000),
('TWUB', 'POST-GRADUATION', 1920000),
('TRU', 'POST-GRADUATION', 2220000),
('OX', 'POST-GRADUATION', 3020000),
('UCL', 'POST-GRADUATION', 5770000),
('QMUL', 'POST-GRADUATION', 3690000),
('CAM', 'POST-GRADUATION', 5620000),
('KENT', 'POST-GRADUATION', 2340000),
('HAR', 'POST-GRADUATION', 7790000),
('STAN', 'POST-GRADUATION', 6890000),
('MIT', 'POST-GRADUATION', 7180000),
('UNIMELB', 'POST-GRADUATION', 3950000),
('SYD', 'POST-GRADUATION', 4790000),
('ANU', 'POST-GRADUATION', 3080000),
('UQ', 'POST-GRADUATION', 5180000);

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
CREATE TABLE IF NOT EXISTS `search` (
  `email` varchar(200) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `degree` varchar(300) NOT NULL,
  `program` varchar(300) NOT NULL,
  `grescore` int(5) NOT NULL,
  `gmatscore` int(5) NOT NULL,
  `actscore` int(5) NOT NULL,
  `satscore` int(5) NOT NULL,
  `lsatscore` int(5) NOT NULL,
  `toeflscore` int(5) NOT NULL,
  `ieltsscore` int(5) NOT NULL,
  `fee` int(8) NOT NULL,
  `hostel` tinyint(1) DEFAULT '0',
  `scholarship` tinyint(1) DEFAULT '0',
  `sports` tinyint(1) DEFAULT '0',
  `arts` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`email`, `country`, `city`, `degree`, `program`, `grescore`, `gmatscore`, `actscore`, `satscore`, `lsatscore`, `toeflscore`, `ieltsscore`, `fee`, `hostel`, `scholarship`, `sports`, `arts`) VALUES
('robinhooda66@gmail.com', '-1', '', 'UNDER-GRADUATION', 'Bachelor of Sciences in Nursing', 0, 0, 0, 600, 0, 95, 9, 8000000, 0, 1, 1, 1),
('prasannalaxmivangeepuram@gmail.com', '-1', '', 'UNDER-GRADUATION', 'Bachelor of Business Administration', 340, 750, 0, 0, 0, 115, 9, 8000000, 0, 1, 1, 1),
('rahulkonedia@gmail.com', 'USA', 'Cambridge', 'POST-GRADUATION', 'Master of Business Administration', 0, 750, 0, 0, 0, 95, 9, 8000000, 0, 1, 1, 1),
('rohit@gmail.com', '-1', '', 'POST-GRADUATION', 'Master of Business Administration', 0, 750, 0, 0, 0, 95, 8, 7000000, 0, 1, 1, 1),
('robin@gmail.com', 'USA', 'Cambridge', 'POST-GRADUATION', 'Master of Business Administration', 0, 750, 0, 0, 0, 95, 0, 8000000, 0, 1, 1, 1),
('rohit@gmail.com', '-1', '', 'POST-GRADUATION', 'Master of Business Administration', 0, 750, 0, 0, 0, 115, 0, 7000000, 0, 1, 1, 1),
('rohit@gmail.com', 'USA', 'Cambridge', 'POST-GRADUATION', 'Master of Business Administration', 0, 750, 0, 0, 0, 115, 0, 8000000, 1, 1, 1, 1),
('rohit@gmail.com', '-1', '', 'POST-GRADUATION', 'Master of Business Administration', 0, 750, 0, 0, 0, 115, 9, 8000000, 0, 1, 1, 1),
('rohit@gmail.com', '-1', '', 'POST-GRADUATION', 'Master of Business Administration', 0, 750, 0, 0, 0, 95, 8, 5000000, 0, 1, 1, 1),
('rohit@gmail.com', '-1', '', 'POST-GRADUATION', 'Master of Business Administration', 340, 0, 0, 0, 0, 95, 9, 8000000, 0, 1, 1, 1),
('rohit@gmail.com', '-1', '', 'POST-GRADUATION', 'Master of Business Administration', 0, 750, 0, 0, 0, 95, 8, 6000000, 0, 1, 1, 1),
('rohit@gmail.com', '-1', '', 'POST-GRADUATION', 'Master of Business Administration', 0, 750, 0, 0, 0, 95, 0, 8000000, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `name` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `phone`, `email`, `password`, `city`) VALUES
('shesh', '1214124141', 'shreshta.p.v@gmail.com', 'abcd', 'Mahabubnagar'),
('shesh', '1214124141', 'prasannalaxmivangeepuram@gmail.com', '1234', 'Mahabubnagar'),
('shesh', '1214124141', 'vlaxmi@gmail.com', 'abcd', 'Mahabubnagar'),
('shesh', '1214124141', 'shesh@xmail.com', '5678', 'Mahabubnagar'),
('shesh', '1214124141', 'spoo@ymail.com', 'abcd', 'Mahabubnagar'),
('shesh', '1214124141', 'spoon@ymail.com', 'abcd', 'Mahabubnagar'),
('shesh', '1214124141', 'spoorthypuppam@gmail.com', 'abcd', 'Mahabubnagar'),
('shesh', '1214124141', '', 'abcd', 'Mahabubnagar'),
('puppam spoorthy', '9866457980', 'abc@gmail.com', 'cdba', 'Mahabubnagar'),
('Robin Hooda', '7330961644', 'robinhooda66@gmail.com', '5678', 'rohtak'),
('Rahul Konedia Singh', '8918914569', 'rahulkonedia@gmail.com', 'abcd', 'New Delhi'),
('abc', '8919676548', 'rahul@abc.com', 'abab', 'Mahaboobnagar'),
('kavya', '7894561230', 'kavyakoreshetty123@gmail.com', '123654', 'mahabubnagar'),
('rohit reddy', '8918918918', 'rohit@gmail.com', '1234', 'Hyderabad'),
('kavya', '1236549870', 'kavyakor@gmail.com', '789', 'Mahaboobnagar'),
('robin', '1234567892', 'robin@gmail.com', '1234', 'mbnr'),
('Shreshta Puppam', '8919676548', 'abcde@gmail.com', '1212', 'Mahaboobnagar'),
('robin', '1234567892', 'abcdef@gmail.com', '1234', 'Hyderabad');

-- --------------------------------------------------------

--
-- Table structure for table `uniadminandfacilities`
--

DROP TABLE IF EXISTS `uniadminandfacilities`;
CREATE TABLE IF NOT EXISTS `uniadminandfacilities` (
  `unid` varchar(20) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `hostel` tinyint(1) NOT NULL DEFAULT '0',
  `scholarship` tinyint(1) NOT NULL DEFAULT '0',
  `sports` tinyint(1) NOT NULL DEFAULT '0',
  `arts` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`unid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uniadminandfacilities`
--

INSERT INTO `uniadminandfacilities` (`unid`, `uname`, `location`, `city`, `country`, `email`, `phone`, `hostel`, `scholarship`, `sports`, `arts`) VALUES
('VIU', 'Vancouver Island University', '900 Fifth Street', 'Nanaimo', 'Canada', 'info@viu.ca', '18889202221', 1, 1, 1, 1),
('RRU', 'Royal Roads University', '2005 Sooke Road', 'Victoria', 'Canada', '', '18007888028', 1, 1, 1, 0),
('TWUL', 'Trinity Western University', '7600 Glover Road', 'Langley', 'Canada', '', '18884686898', 1, 1, 0, 0),
('TWUR', 'Trinity Western University', '5900 Minoru Blvd', 'Richmond', 'Canada', '', '16045132193', 1, 1, 1, 0),
('TWUB', 'Trinity Western University', '143 W Kellogg Road', 'Bellingham', 'USA', '', '13605270222', 1, 1, 1, 1),
('TRU', 'Thompson River University', '805 TRU Way', 'Kamploops', 'Canada', '', '12508285000', 1, 1, 0, 0),
('OX', 'University of Oxford', 'University Offices, WellingtonSquare', 'Oxford', 'UK', '', '1865270000', 1, 1, 1, 1),
('UCL', 'University College London', 'Gower Street', 'London', 'UK', 'international@ucl.ac.uk', '402031088520', 1, 1, 1, 1),
('CAM', 'University of Cambridge', 'The Old Schools, Trinity Lane', 'Cambridge', 'UK', 'coreweb@admin.cam.ac.uk', '4401223337733', 1, 1, 1, 1),
('QMUL', 'Queen Mary University of London', 'Mile End Road', 'London', 'UK', 'internationaloffice@qmul.ac.uk', '4402078826530', 1, 1, 0, 0),
('KENT', 'University of Kent', 'Canterbury', 'Kent', 'UK', '', '4401227764000', 1, 1, 1, 1),
('HAR', 'Harvard University', 'Harvard University', 'Cambridge', 'USA', 'vphpac@harvard.edu', '6174951585', 1, 1, 1, 1),
('STAN', 'Stanford University', '450 Serra Mall', 'Stanford', 'USA', '', '6507232300', 1, 1, 1, 1),
('MIT', 'Massachusetts Institute of Technology', '77 Massachusetts Avenue, Building E18-219', 'Cambridge', 'USA', '', '6172533795', 1, 1, 1, 1),
('UNIMELB', 'University of Melbourne', 'The University of Melbourne', 'Victoria', 'Australia', '', '61390355511', 1, 1, 1, 1),
('SYD', 'University of Sydney', 'Level 3,Jane Foss Russell Building (G02),Darlington Campus', 'Sydney', 'Australia', '', '6128627144', 1, 1, 1, 1),
('ANU', 'Australian National University', 'The Australian National University', 'Canberra', 'Australia', '', '61261255111', 1, 1, 0, 0),
('UQ', 'University of Queensland', 'The University of Queensland', 'St Lucia', 'Australia', '', '1800800123', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uniprograms`
--

DROP TABLE IF EXISTS `uniprograms`;
CREATE TABLE IF NOT EXISTS `uniprograms` (
  `unid` varchar(20) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `program` varchar(200) NOT NULL,
  `grescore` float NOT NULL DEFAULT '0',
  `gmatscore` float NOT NULL DEFAULT '0',
  `actscore` float NOT NULL DEFAULT '0',
  `satscore` float NOT NULL DEFAULT '0',
  `lsatscore` float NOT NULL DEFAULT '0',
  `toeflscore` float NOT NULL DEFAULT '0',
  `ieltsscore` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`unid`,`program`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uniprograms`
--

INSERT INTO `uniprograms` (`unid`, `degree`, `program`, `grescore`, `gmatscore`, `actscore`, `satscore`, `lsatscore`, `toeflscore`, `ieltsscore`) VALUES
('VIU', 'UNDER-GRADUATION', 'Bachelor of Business Administration', 0, 0, 0, 0, 0, 0, 6),
('VIU', 'UNDER-GRADUATION', 'Bachelor of Hospitality Management', 0, 0, 0, 0, 0, 0, 6),
('VIU', 'UNDER-GRADUATION', 'Bachelor of Sciences in Nursing', 0, 0, 0, 0, 0, 0, 6),
('VIU', 'UNDER-GRADUATION', 'Bachelor of Arts in Physical Education', 0, 0, 0, 0, 0, 0, 6),
('VIU', 'POST-GRADUATION', 'Master of Business Administration', 0, 0, 0, 0, 0, 0, 6.5),
('VIU', 'POST-GRADUATION', 'Master of Geographic Information in Systems Applications', 0, 0, 0, 0, 0, 0, 6.5),
('VIU', 'POST-GRADUATION', 'Master of Community Planning\r\n', 0, 0, 0, 0, 0, 0, 6.5),
('RRU', 'POST-GRADUATION', 'Master of Arts in Conflict Analysis and Management', 300, 0, 0, 0, 0, 0, 6.5),
('RRU', 'POST-GRADUATION', 'Master of Arts in Disaster and Emergency Management', 300, 0, 0, 0, 0, 0, 6.5),
('RRU', 'POST-GRADUATION', 'Master of Business Administration in Executive Management', 300, 0, 0, 0, 0, 0, 6.5),
('RRU', 'POST-GRADUATION', 'Master of Global Management', 300, 0, 0, 0, 0, 0, 6.5),
('RRU', 'UNDER-GRADUATION', 'Bachelor of Business Administration', 0, 0, 0, 0, 0, 0, 6.5),
('RRU', 'UNDER-GRADUATION', 'Bachelor of Science in Environmental Management', 0, 0, 0, 0, 0, 0, 6.5),
('RRU', 'UNDER-GRADUATION', 'Bachelor of Arts in Global Tourism Management', 0, 0, 0, 0, 0, 0, 6.5),
('TWUL', 'UNDER-GRADUATION', 'Bachelor of Business Adminstration', 0, 0, 0, 0, 0, 88, 0),
('TWUL', 'UNDER-GRADUATION', 'Bachelor of Education(B.Ed)', 0, 0, 0, 0, 0, 80, 0),
('TWUL', 'UNDER-GRADUATION', 'Bachelor of Arts in Leadership', 0, 0, 0, 0, 0, 105, 0),
('TWUL', 'POST-GRADUATION', 'Master of Business Administration', 0, 550, 0, 0, 0, 0, 7),
('TWUB', 'UNDER-GRADUATION', 'Bachelor of Arts in Leadership', 0, 0, 0, 0, 0, 0, 6.5),
('TWUB', 'UNDER-GRADUATION', 'Bachelor of Arts in Psychology', 0, 0, 0, 0, 0, 0, 6.5),
('TWUR', 'UNDER-GRADUATION', 'Bachelor of Arts in Leadership', 0, 0, 0, 0, 0, 0, 6),
('TWUR', 'POST-GRADUATION', 'Masters of Business Administration', 0, 0, 0, 0, 0, 0, 6),
('TWUR', 'POST-GRADUATION', 'Master of Arts in Leadership', 0, 0, 0, 0, 0, 0, 6),
('TRU', 'UNDER-GRADUATION', 'Bachelor of Arts in Communication', 0, 0, 0, 0, 0, 0, 6.5),
('TRU', 'UNDER-GRADUATION', 'Bachelor of Arts in Criminology', 0, 0, 0, 0, 0, 0, 6.5),
('TRU', 'UNDER-GRADUATION', 'Bachelor of Business Administration in Accounting', 0, 0, 0, 0, 0, 0, 6.5),
('TRU', 'UNDER-GRADUATION', 'Bachelor of Business Administration in Economics', 0, 0, 0, 0, 0, 0, 6.5),
('TRU', 'POST-GRADUATION', 'Master of Business Administration', 0, 0, 0, 0, 0, 0, 7),
('TRU', 'POST-GRADUATION', 'Master of Education', 0, 0, 0, 0, 0, 0, 6.5),
('OX', 'UNDER-GRADUATION', 'Bachelor of Arts in Archaeology and Anthropology', 0, 0, 0, 0, 0, 0, 7),
('OX', 'UNDER-GRADUATION', 'Bachelor of Arts in Biomedical Sciences', 0, 0, 0, 0, 0, 0, 7),
('OX', 'UNDER-GRADUATION', 'Bachelor of Arts in Physics', 0, 0, 0, 0, 0, 0, 7),
('OX', 'POST-GRADUATION', 'Master of Chemistry', 0, 0, 0, 0, 0, 0, 7.5),
('OX', 'POST-GRADUATION', 'Master of Computer Sciences', 0, 0, 0, 0, 0, 0, 7.5),
('OX', 'POST-GRADUATION', 'Master of Mathematics', 0, 0, 0, 0, 0, 0, 7.5),
('UCL', 'UNDER-GRADUATION', 'Bachelor of Arts & Sciences', 0, 0, 0, 0, 0, 87, 0),
('UCL', 'UNDER-GRADUATION', 'Bachelor of Arts in Archeology', 0, 0, 0, 0, 0, 87, 0),
('UCL', 'UNDER-GRADUATION', 'Bachelor of Sciences in Astrophysics', 0, 0, 0, 0, 0, 87, 0),
('UCL', 'UNDER-GRADUATION', 'Bachelor of Law', 0, 0, 0, 0, 150, 87, 0),
('UCL', 'POST-GRADUATION', 'Master of Sciences in Biochemistry', 324, 0, 0, 0, 0, 87, 0),
('UCL', 'POST-GRADUATION', 'Master of Sciences in Biological Sciences', 324, 0, 0, 0, 0, 87, 0),
('UCL', 'UNDER-GRADUATION', 'Bachelor of Engineering in Civil', 0, 0, 0, 0, 0, 87, 0),
('UCL', 'UNDER-GRADUATION', 'Bachelor of Engineering in Electronic and Electrical', 0, 0, 0, 0, 0, 87, 0),
('UCL', 'POST-GRADUATION', 'Master of Engineering in Mechanical with Business Finance', 324, 0, 0, 0, 0, 87, 0),
('UCL', 'POST-GRADUATION', 'Master of Engineering in Biochemistry', 324, 0, 0, 0, 0, 87, 0),
('CAM', 'UNDER-GRADUATION', 'Bachelor of Law', 0, 0, 0, 0, 150, 0, 7.5),
('CAM', 'UNDER-GRADUATION', 'Bachelor of Management Sciences', 0, 0, 0, 0, 0, 0, 7.5),
('CAM', 'UNDER-GRADUATION', 'Bachelor of Mathematics', 0, 0, 0, 0, 0, 0, 7.5),
('CAM', 'UNDER-GRADUATION', 'Bachelor of Medical Sciences ', 0, 0, 0, 0, 0, 0, 7.5),
('CAM', 'UNDER-GRADUATION', 'Bachelor of Computer Science', 0, 0, 0, 0, 0, 0, 7.5),
('CAM', 'POST-GRADUATION', 'Master of Philosophy in Advanced Chemical Engineering', 0, 0, 0, 0, 0, 0, 7.5),
('CAM', 'POST-GRADUATION', 'Master of Philosophy in Archaeology', 0, 0, 0, 0, 0, 0, 7.5),
('CAM', 'POST-GRADUATION', 'Master of Advanced Study in Applied Mathematics', 0, 0, 0, 0, 0, 0, 7.5),
('CAM', 'POST-GRADUATION', 'Master of Philosophy in Medical Science', 0, 0, 0, 0, 0, 0, 7.5),
('CAM', 'POST-GRADUATION', 'Master of Business Administration', 0, 696, 0, 0, 0, 0, 7.5),
('CAM', 'POST-GRADUATION', 'Master of Philosophy in Engineering', 0, 0, 0, 0, 0, 0, 7.5),
('QMUL', 'UNDER-GRADUATION', 'Bachelor of Sciences in Accounting and Management ', 0, 0, 0, 0, 0, 0, 7),
('QMUL', 'UNDER-GRADUATION', 'Bachelor of Sciences in Biology', 0, 0, 0, 0, 0, 0, 6.5),
('QMUL', 'UNDER-GRADUATION', 'Bachelor of Engineering in Biomedical Engineering', 0, 0, 0, 0, 0, 0, 7),
('QMUL', 'UNDER-GRADUATION', 'Bachelor of Sciences in Economics', 0, 0, 0, 0, 0, 0, 6.5),
('QMUL', 'UNDER-GRADUATION', 'Bachelor of Engineering in Electronic Engineering', 0, 0, 0, 0, 0, 0, 7),
('QMUL', 'POST-GRADUATION', 'Master of Engineering in Electrical and Electronic Engineering', 0, 0, 0, 0, 0, 0, 7),
('QMUL', 'POST-GRADUATION', 'Master of Sciences in Mathematics ', 0, 0, 0, 0, 0, 0, 6),
('QMUL', 'POST-GRADUATION', 'Master of Engineering in Materials and Design', 0, 0, 0, 0, 0, 0, 7),
('QMUL', 'POST-GRADUATION', 'Master of Sciences in Physics with Particle Physics', 0, 0, 0, 0, 0, 0, 6),
('KENT', 'UNDER-GRADUATION', 'Bachelor of Computer Science', 0, 0, 0, 0, 0, 0, 6.5),
('KENT', 'UNDER-GRADUATION', 'Bachelor of Sciences in Business Psychology', 0, 0, 0, 0, 0, 0, 6.5),
('KENT', 'UNDER-GRADUATION', 'Bachelor of Arts in Contemporary Literature', 0, 0, 0, 0, 0, 0, 6.5),
('KENT', 'UNDER-GRADUATION', 'Bachelor of Law', 0, 0, 0, 0, 150, 0, 6.5),
('KENT', 'UNDER-GRADUATION', 'Bachelor of Sciences in Management', 0, 0, 0, 0, 0, 0, 6.5),
('KENT', 'POST-GRADUATION', 'Master of Sciences in Advanced Computer Science', 0, 0, 0, 0, 0, 0, 6.5),
('KENT', 'POST-GRADUATION', 'Master of Arts in Anthropology', 0, 0, 0, 0, 0, 0, 6.5),
('KENT', 'POST-GRADUATION', 'Master of Arts in Architecture and Urban Design', 0, 0, 0, 0, 0, 0, 6.5),
('KENT', 'POST-GRADUATION', 'Master of Arts in Creative Writing ', 0, 0, 0, 0, 0, 0, 6.5),
('KENT', 'POST-GRADUATION', 'Master of Sciences in Economics', 0, 0, 0, 0, 0, 0, 6.5),
('HAR', 'UNDER-GRADUATION', 'Bachelor of Arts in Applied Mathematics', 0, 0, 0, 740, 0, 92, 0),
('HAR', 'UNDER-GRADUATION', 'Bachelor of Computer Science', 0, 0, 0, 770, 0, 92, 0),
('HAR', 'UNDER-GRADUATION', 'Bachelor of Engineering in Biomedical Sciences', 0, 0, 0, 770, 0, 92, 0),
('HAR', 'UNDER-GRADUATION', 'Bachelor of Environmental Sciences', 0, 0, 0, 720, 0, 92, 0),
('HAR', 'UNDER-GRADUATION', 'Bachelor of Engineering in Mechanical', 0, 0, 0, 770, 0, 92, 0),
('HAR', 'POST-GRADUATION', 'Master of Engineering in Electrical ', 330, 0, 0, 770, 0, 92, 0),
('HAR', 'POST-GRADUATION', 'Master of Business Administration', 0, 740, 0, 0, 0, 92, 0),
('HAR', 'POST-GRADUATION', 'Master in Design Engineering', 0, 0, 0, 770, 0, 92, 0),
('HAR', 'POST-GRADUATION', 'Master of Engineering in Mechanical', 0, 0, 0, 770, 0, 92, 0),
('HAR', 'POST-GRADUATION', 'Master of Engineering Sciences', 0, 0, 0, 770, 0, 92, 0),
('STAN', 'UNDER-GRADUATION', 'Bachelor of Arts in Human Biology', 0, 0, 0, 750, 0, 90, 0),
('STAN', 'UNDER-GRADUATION', 'Bachelor of Sciences in Physics', 0, 0, 0, 770, 0, 90, 0),
('STAN', 'UNDER-GRADUATION', 'Bachelor of Arts in Anthropology', 0, 0, 0, 750, 0, 90, 0),
('STAN', 'UNDER-GRADUATION', 'Bachelor of Sciences in Bioengineering', 0, 0, 0, 770, 0, 90, 0),
('STAN', 'POST-GRADUATION', 'Master of Arts in Human Biology', 0, 0, 0, 760, 0, 90, 0),
('STAN', 'POST-GRADUATION', 'Master of Business Administration', 0, 720, 0, 0, 0, 90, 0),
('STAN', 'POST-GRADUATION', 'Master of Sciences in Advanced Computer Science', 0, 0, 0, 750, 0, 90, 0),
('STAN', 'POST-GRADUATION', 'Master of Sciences in Biochemistry', 0, 0, 0, 750, 0, 90, 0),
('STAN', 'POST-GRADUATION', 'Master of Engineering in Electrical and Electronics', 332.5, 0, 0, 0, 0, 90, 0),
('MIT', 'UNDER-GRADUATION', 'Bachelor of Science in Chemistry and Biology', 0, 0, 0, 780, 0, 90, 0),
('MIT', 'UNDER-GRADUATION', 'Bachelor of Computer Science', 0, 0, 0, 780, 0, 90, 0),
('MIT', 'UNDER-GRADUATION', 'Bachelor of Science in Economics', 0, 716, 0, 0, 0, 0, 0),
('MIT', 'UNDER-GRADUATION', 'Bachelor of Engineering in Humanities', 0, 0, 0, 780, 0, 90, 0),
('MIT', 'POST-GRADUATION', 'Master of Engineering in Computer Science', 0, 0, 0, 0, 0, 0, 7),
('MIT', 'POST-GRADUATION', 'Master of Design Engineering', 0, 716, 0, 0, 0, 0, 0),
('MIT', 'POST-GRADUATION', 'Computational Science and Engineering', 0, 0, 0, 0, 0, 0, 7.5),
('MIT', 'POST-GRADUATION', 'Master of Science in Technology', 0, 0, 0, 0, 0, 90, 0),
('MIT', 'POST-GRADUATION', 'Master of Sciences in Microbiology', 0, 0, 0, 780, 0, 90, 0),
('UNIMELB', 'UNDER-GRADUATION', 'Bachelor of Commerce', 0, 0, 0, 0, 0, 0, 6.5),
('UNIMELB', 'UNDER-GRADUATION', 'Bachelor of Biomedicine', 0, 0, 0, 0, 0, 0, 6.5),
('UNIMELB', 'UNDER-GRADUATION', 'Bachelor of Computer Science', 0, 0, 0, 0, 0, 0, 6.5),
('UNIMELB', 'UNDER-GRADUATION', 'Bachelor of Business Administration', 0, 0, 0, 0, 0, 0, 6.5),
('UQ', 'UNDER-GRADUATION', 'Bachelor of Commerce', 0, 0, 0, 0, 0, 0, 6.5),
('UNIMELB', 'POST-GRADUATION', 'Bachelor of Management Science', 0, 0, 0, 0, 0, 0, 6.5),
('UNIMELB', 'POST-GRADUATION', 'Master of Engineering in Civil', 0, 0, 0, 0, 0, 0, 6.5),
('UNIMELB', 'POST-GRADUATION', 'Master of Engineering in Electrical and Electronic', 0, 0, 0, 0, 0, 0, 6.5),
('UNIMELB', 'POST-GRADUATION', 'Master of Biomedical Science', 0, 0, 0, 0, 0, 0, 6.5),
('SYD', 'UNDER-GRADUATION', 'Bachelor of Commerce', 0, 0, 0, 0, 0, 0, 7),
('SYD', 'UNDER-GRADUATION', 'Bachelor of Law', 0, 0, 0, 0, 150, 0, 7),
('SYD', 'UNDER-GRADUATION', 'Bachelor of Business Administration', 0, 0, 0, 0, 0, 0, 7),
('SYD', 'UNDER-GRADUATION', 'Bachelor of Biology', 0, 0, 0, 0, 0, 0, 7),
('SYD', 'POST-GRADUATION', 'Master of Commerce', 0, 0, 0, 0, 0, 0, 7),
('SYD', 'POST-GRADUATION', 'Master of Business Administration', 0, 0, 0, 0, 0, 0, 7),
('SYD', 'POST-GRADUATION', 'Master of Management Science', 0, 0, 0, 0, 0, 0, 7),
('SYD', 'POST-GRADUATION', 'Master of Computer Sciences', 0, 0, 0, 0, 0, 0, 7),
('SYD', 'POST-GRADUATION', 'Master of Science in Psychology', 0, 0, 0, 0, 0, 0, 7),
('ANU', 'UNDER-GRADUATION', 'Bachelor of Commerce', 0, 0, 0, 0, 0, 0, 7),
('ANU', 'UNDER-GRADUATION', 'Bachelor of Business Administration', 0, 0, 0, 0, 0, 0, 7),
('ANU', 'UNDER-GRADUATION', 'Bachelor of Science', 0, 0, 0, 0, 0, 0, 7),
('ANU', 'UNDER-GRADUATION', 'Bachelor of Philosophy', 0, 0, 0, 0, 0, 0, 7),
('ANU', 'UNDER-GRADUATION', 'Bachelor of Statistics', 0, 0, 0, 0, 0, 0, 7),
('ANU', 'POST-GRADUATION', 'Master of Statistics', 0, 0, 0, 0, 0, 0, 7),
('ANU', 'POST-GRADUATION', 'Master of Biotechnology', 0, 0, 0, 0, 0, 0, 7),
('ANU', 'POST-GRADUATION', 'Master of Marketing Management', 0, 0, 0, 0, 0, 0, 7),
('ANU', 'POST-GRADUATION', 'Master of Finance', 0, 0, 0, 0, 0, 0, 7),
('UQ', 'UNDER-GRADUATION', 'Bachelor of Law', 0, 0, 0, 0, 150, 0, 6.5),
('UQ', 'UNDER-GRADUATION', 'Bachelor of Business Administration', 0, 0, 0, 0, 0, 0, 6.5),
('UQ', 'UNDER-GRADUATION', 'Bachelor of Computer Science', 0, 0, 0, 0, 0, 0, 6.5),
('UQ', 'UNDER-GRADUATION', 'Bachelor of Arts in Leadership', 0, 0, 0, 0, 0, 0, 6.5),
('UQ', 'POST-GRADUATION', 'Master of Business Administration', 0, 550, 0, 0, 0, 0, 7),
('UQ', 'POST-GRADUATION', 'Master of Engineering in Biotechnology', 0, 0, 0, 0, 0, 0, 6.5),
('UQ', 'POST-GRADUATION', 'Master of Marketing Management', 0, 0, 0, 0, 0, 0, 6.5),
('UQ', 'POST-GRADUATION', 'Master of Computer Sciences', 0, 0, 0, 0, 0, 0, 6.5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
