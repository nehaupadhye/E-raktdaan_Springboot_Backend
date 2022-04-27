-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2022 at 07:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-raktdaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(10) NOT NULL,
  `adminname` varchar(255) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `active` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `username`, `password`, `active`) VALUES
(1, 'admin1', 'Admin One', 'Pass1', 'Y'),
(2, 'Admin2', 'Admin Two', 'Pass2', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `bloodbank`
--

CREATE TABLE `bloodbank` (
  `bloodbankid` int(10) NOT NULL,
  `bloodbankname` varchar(255) NOT NULL,
  `bloodbankaddress` text NOT NULL,
  `contact` text NOT NULL,
  `active` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodbank`
--

INSERT INTO `bloodbank` (`bloodbankid`, `bloodbankname`, `bloodbankaddress`, `contact`, `active`) VALUES
(1, 'Dr.Hedgewar Rakta Pedhi', '1st Floor, Sahyadri Shopping Centre Railway Lines, NH 13, Old Employment Chowk, Solapur', '0217-2311215', 'Y'),
(2, 'Smt. Gopabai Damani Blood Bank, Solapur', 'Railway Lines, Dufferin Chowk, Solapur', '0217-2726858', 'Y'),
(3, 'Siddheshwar Blood Bank', 'Kalyani Tower, 126 Siddheshwar Peth, Behind Civil Court, Near Yashodhara Hospital, Solapur ', '0217-2323222', 'Y'),
(4, 'Solapur Blood Bank', '110/11, Vijaylaxmi Arcade, Railway Lines, Solapur', '0217-2317242', 'Y'),
(5, 'Dean Chatrapati Shivaji Maharaj Sarvopchar Hospital Blood Bank', 'OPD Building 1st Floor, Solapur', '0217-2749440', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `bloodbankuser`
--

CREATE TABLE `bloodbankuser` (
  `bloodbankuserid` int(11) NOT NULL,
  `bloodbank` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `active` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodbankuser`
--

INSERT INTO `bloodbankuser` (`bloodbankuserid`, `bloodbank`, `name`, `username`, `password`, `active`) VALUES
(1, 1, 'Bloodbankuser1', 'Bloodbankuser One', 'Pass1', 'Y'),
(2, 1, 'Bloodbankuser2', 'Bloodbankuser Two', 'Pass2', 'Y'),
(3, 2, 'abcd', 'efgh', 'ijkl', 'Y'),
(4, 3, 'Bloodbankuser 3', 'Bloodbankuser Three', 'pass3', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

CREATE TABLE `bloodrequest` (
  `bloodrequestid` int(10) NOT NULL,
  `bloodbank` int(10) NOT NULL,
  `bloodgroup` varchar(2) NOT NULL,
  `rhfactor` text NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `isurgent` text NOT NULL,
  `isnotificationsent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bloodstock`
--

CREATE TABLE `bloodstock` (
  `bloodstockid` int(10) NOT NULL,
  `bloodbank` int(10) NOT NULL,
  `bloodstockname` text NOT NULL,
  `quantity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodstock`
--

INSERT INTO `bloodstock` (`bloodstockid`, `bloodbank`, `bloodstockname`, `quantity`) VALUES
(1, 1, 'A+\r\nA-\r\nB+\r\nO+', '6\r\n5\r\n10\r\n5'),
(2, 2, 'A+\r\nB+\r\nB-\r\nAB+\r\nAB-\r\n', '15\r\n10\r\n4\r\n20\r\n3'),
(3, 3, 'A+\r\nB+\r\nAB+\r\nO+', '10\r\n12\r\n8\r\n7'),
(4, 4, 'A+\r\nA-\r\nB+\r\nB-\r\nO-', '20\r\n4\r\n12\r\n5\r\n2'),
(5, 5, 'A+\r\nB+\r\nB-\r\nO+', '6\r\n4\r\n1\r\n2');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE `camp` (
  `campid` int(10) NOT NULL,
  `bloodbank` int(10) NOT NULL,
  `datetime` time(6) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `Email` text NOT NULL,
  `Subject` text NOT NULL,
  `Query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donationid` int(10) NOT NULL,
  `donor` int(10) DEFAULT NULL,
  `bloodbank` int(10) DEFAULT NULL,
  `regdate` text DEFAULT NULL,
  `regtime` text DEFAULT NULL,
  `donateddatetime` datetime(6) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donationid`, `donor`, `bloodbank`, `regdate`, `regtime`, `donateddatetime`, `status`, `comment`) VALUES
(1, NULL, 1, '14-4-2022', '10:00 to 12:00', NULL, 'Y', NULL),
(2, NULL, 1, '14-4-2022', '10:00 to 12:00', NULL, 'Y', NULL),
(3, NULL, 1, '14-4-2022', '10:00 to 12:00', NULL, 'Y', NULL),
(7, 4, 3, '15-04-2022', '10:00 to 1:00', NULL, 'CANCELED', NULL),
(8, 4, 3, '15-04-2022', '10:00 to 1:00', NULL, 'CANCELED', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donorid` int(10) NOT NULL,
  `donorname` varchar(255) NOT NULL,
  `donoraddress` text NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `active` varchar(5) NOT NULL,
  `dob` text NOT NULL,
  `dobnotification` text NOT NULL,
  `bloodgroup` text NOT NULL,
  `rhfactor` text NOT NULL,
  `candonate` varchar(5) NOT NULL,
  `token` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donorid`, `donorname`, `donoraddress`, `mobileno`, `username`, `password`, `active`, `dob`, `dobnotification`, `bloodgroup`, `rhfactor`, `candonate`, `token`) VALUES
(1, 'Vaishali Yangal', 'Pachha Peth, Solapur', '9820347782', 'VaishaliYangal', 'Vaishali123', 'Y', '01-01-1999', 'Y', 'A', '+', 'Y', ''),
(2, 'Rutuja Chougule', 'JuleSolapur', '9823674467', 'Rutuja', 'Rutuja123', 'Y', '10-3-2000', 'Y', 'A', '+', 'Y', ''),
(3, 'abcd', 'solapur', '9987654366', 'abcd@gmail.com', 'abcd123', 'Y', '12/5/2000', 'Y', 'A', '+', 'Y', '1'),
(4, 'Rutika', 'Ashok Chowk', '9870457732', 'Rutika@gmail.com', 'Rutika123', 'Y', '29-07-2000', 'Y', 'B', '+', 'Y', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `donorreply`
--

CREATE TABLE `donorreply` (
  `donorreplyid` int(10) NOT NULL,
  `bloodrequest` int(10) NOT NULL,
  `donor` int(10) NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `reply` text NOT NULL,
  `estimatedarrivaltime` time(6) NOT NULL,
  `isselected` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `bloodbank`
--
ALTER TABLE `bloodbank`
  ADD PRIMARY KEY (`bloodbankid`);

--
-- Indexes for table `bloodbankuser`
--
ALTER TABLE `bloodbankuser`
  ADD PRIMARY KEY (`bloodbankuserid`),
  ADD UNIQUE KEY `bloodbank` (`bloodbank`,`username`) USING HASH;

--
-- Indexes for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
  ADD PRIMARY KEY (`bloodrequestid`),
  ADD KEY `bloodbank` (`bloodbank`);

--
-- Indexes for table `bloodstock`
--
ALTER TABLE `bloodstock`
  ADD PRIMARY KEY (`bloodstockid`),
  ADD KEY `bloodbank` (`bloodbank`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`campid`),
  ADD KEY `bloodbank` (`bloodbank`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donationid`),
  ADD KEY `donor` (`donor`),
  ADD KEY `bloodbank` (`bloodbank`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donorid`);

--
-- Indexes for table `donorreply`
--
ALTER TABLE `donorreply`
  ADD PRIMARY KEY (`donorreplyid`),
  ADD KEY `bloodrequest` (`bloodrequest`),
  ADD KEY `donor` (`donor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bloodbank`
--
ALTER TABLE `bloodbank`
  MODIFY `bloodbankid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bloodbankuser`
--
ALTER TABLE `bloodbankuser`
  MODIFY `bloodbankuserid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
  MODIFY `bloodrequestid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bloodstock`
--
ALTER TABLE `bloodstock`
  MODIFY `bloodstockid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `campid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donationid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donorid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donorreply`
--
ALTER TABLE `donorreply`
  MODIFY `donorreplyid` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`donor`) REFERENCES `donor` (`donorid`),
  ADD CONSTRAINT `donation_ibfk_2` FOREIGN KEY (`bloodbank`) REFERENCES `bloodbank` (`bloodbankid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
