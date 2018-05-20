-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2017 at 03:27 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahmdlive`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminemail` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminemail`, `password`) VALUES
('admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `areaid` int(11) NOT NULL,
  `areaname` varchar(30) NOT NULL,
  `deptid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`areaid`, `areaname`, `deptid`) VALUES
(1, 'University', 2),
(2, 'Lal Darwaja', 3),
(3, 'Ranip', 3),
(4, 'lal darwaja', 3);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `compid` int(11) NOT NULL,
  `deptname` varchar(50) NOT NULL,
  `areaname` varchar(50) NOT NULL,
  `adharno` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `message` varchar(9000) NOT NULL,
  `status` varchar(20) NOT NULL,
  `datecomp` datetime NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`compid`, `deptname`, `areaname`, `adharno`, `username`, `email`, `message`, `status`, `datecomp`, `userid`) VALUES
(2, '2', '1', 'd,lv ', ',devl,', 'm@gmail.com', 'lwecv,', '1', '1111-01-01 00:00:00', 2),
(3, '3', '2', 'nd', 'adkn', 'm@gmail.com', 'dnc', '1', '1111-01-01 00:00:00', 2),
(5, '3', '3', '123', 'df', 'm@gmail.com', 'asvdsDF', '0', '1997-02-01 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `deptid` int(11) NOT NULL,
  `deptname` varchar(30) NOT NULL,
  `deptdesc` varchar(9000) NOT NULL,
  `officername` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptid`, `deptname`, `deptdesc`, `officername`) VALUES
(2, 'Educational', 'kasjdbkhgvkjbkjdbskjbhk							\r\n							', 'mimoh'),
(3, 'Abc', 'abc							\r\n							', 'mscn'),
(5, 'RTO', 'KSJcbkkjsDBVbdskvbkjb							\r\n							', 'Kodee');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `userid` int(11) NOT NULL,
  `adhar` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` varchar(40) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`userid`, `adhar`, `username`, `email`, `password`, `address`, `pincode`, `phone`) VALUES
(2, '3456', 'mimoh', 'm@gmail.com', '456', 'majurgham', '380008', '8401644801');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`areaid`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`compid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptid`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `areaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `compid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `deptid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
