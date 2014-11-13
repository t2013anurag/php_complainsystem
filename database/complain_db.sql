-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2014 at 03:10 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `complain_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`aid` int(100) NOT NULL,
  `aname` varchar(100) NOT NULL,
  `apass` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`aid`, `aname`, `apass`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complains`
--

CREATE TABLE IF NOT EXISTS `tbl_complains` (
`cid` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `cust_name` varchar(40) NOT NULL,
  `comp_type` varchar(40) NOT NULL,
  `comp_title` varchar(200) NOT NULL,
  `comp_desc` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `eng_id` int(10) NOT NULL,
  `eng_name` varchar(40) NOT NULL,
  `eng_comment` varchar(240) NOT NULL,
  `create_date` datetime NOT NULL,
  `close_date` datetime NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_complains`
--

INSERT INTO `tbl_complains` (`cid`, `cust_id`, `cust_name`, `comp_type`, `comp_title`, `comp_desc`, `status`, `eng_id`, `eng_name`, `eng_comment`, `create_date`, `close_date`) VALUES
(14, 7, 'anurag', 'Hostel Complains', 'Not Enough Rooms', 'Students cannot be accommodated in the hostel. The number of rooms should be more.\r\n', 'close', 8, 'Hostel', 'Issue Rectified', '2014-11-12 11:36:52', '0000-00-00 00:00:00'),
(15, 7, 'anurag', 'Mess Complains', 'Food not good', 'fd;skjfskfj', 'open', 0, '', '', '2014-11-12 11:38:57', '0000-00-00 00:00:00'),
(13, 3, 'ravi', 'Mess Complains', 'kfjsdflksdjfs', 'sfdfd', 'open', 0, '', '', '2014-11-09 14:45:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
`cid` int(10) NOT NULL,
  `cname` varchar(40) NOT NULL,
  `cpass` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `c_mobile` varchar(15) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cid`, `cname`, `cpass`, `address`, `email`, `c_mobile`, `date_time`) VALUES
(10, 'poorani', '0a75f7697678abcf54501b3bddd38815', 'VIT University, Vellore', 'poorani2013@vit.ac.in', '9629771207', '2014-11-06 21:13:00'),
(8, 'aafrin', 'f5235fb6aeb34ddbc1150220719342d2', 'VIT University, Vellore', 'someid2013@vit.ac.in', '9629771207', '2014-11-06 21:11:59'),
(9, 'ashwanth', '3f2fe97ef575782133b64384bfb5d476', 'VIT University, Vellore', 'ashwanth2013@vit.ac.in', '9629771207', '2014-11-06 21:12:33'),
(7, 'anurag', 'd77d2953c546cb33e2d0bff4989f6aa2', 'A-310 VIT Men''s Hostel,\r\nVIT University', 'tiwari.anurag126@gmail.com', '09629771207', '2014-11-03 12:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_engineer`
--

CREATE TABLE IF NOT EXISTS `tbl_engineer` (
`eid` int(10) NOT NULL,
  `ename` varchar(40) NOT NULL,
  `epass` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(40) NOT NULL,
  `e_mobile` varchar(20) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_engineer`
--

INSERT INTO `tbl_engineer` (`eid`, `ename`, `epass`, `address`, `email`, `e_mobile`, `date_time`) VALUES
(9, 'Mess', '0667a85fdebf01ea9f1b85366257cd20', '1234', 'mess@vit.ac.in', '+919191962977', '2014-11-05 11:14:51'),
(10, 'Parking', '3ac156eead4ae6b40e9c498d532b4448', 'VIT University, Vellore', 'parking@vit.ac.in', '09629771207', '2014-11-06 21:04:57'),
(8, 'Hostel', '9e12394c8d54ac26c45e9a98922c2e11', 'VIT University, Vellore', 'hostel@vit.ac.in', '09629771207', '2014-11-03 12:23:47'),
(12, 'Network', '91e02cd2b8621d0c05197f645668c5c4', 'VIT University, Vellore', 'network@vit.ac.in', '9629771207', '2014-11-06 21:10:27'),
(11, 'Academics', '51d8e2ccc0e8f8061025e8f5e9c645d8', 'VIT University, Vellore', 'academics@vit.ac.in', '9629771207', '2014-11-06 21:09:07'),
(13, 'Sports', '36f8ce91f06653e5d5a2a7a6bf22d6c5', 'VIT University, Vellore', 'sports@vit.ac.in', '9629771207', '2014-11-06 21:11:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `tbl_complains`
--
ALTER TABLE `tbl_complains`
 ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
 ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_engineer`
--
ALTER TABLE `tbl_engineer`
 ADD PRIMARY KEY (`eid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `aid` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_complains`
--
ALTER TABLE `tbl_complains`
MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_engineer`
--
ALTER TABLE `tbl_engineer`
MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
