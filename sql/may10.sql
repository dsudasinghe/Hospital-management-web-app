-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2021 at 07:56 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(4, 'lal', 'lal', '1234'),
(5, 'lal', 'w', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'MenakaLakshan', 'ww', '22af645d1859cb5ca6da0c484f1f37ea');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentid` int(5) NOT NULL,
  `docid` varchar(300) NOT NULL,
  `patientid` varchar(300) NOT NULL,
  `date` varchar(300) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentid`, `docid`, `patientid`, `date`, `message`) VALUES
(29, '1', '15 ', '04/28/2021', 'Personally, I have focused on cardiac'),
(35, '7', '21  ', '03/20/2021', 'about bad eating habits'),
(36, '1', '21 ', '04/28/2021', 'need to meet a cartiology doctor'),
(45, '1', '23 ', '05/10/2021', 'i need make an appointment');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docid` int(5) NOT NULL,
  `doc_nic` varchar(20) NOT NULL,
  `docfirstname` varchar(20) NOT NULL,
  `doclastname` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `specialization` varchar(20) NOT NULL,
  `availabledays` varchar(300) NOT NULL,
  `availabletimes` varchar(300) NOT NULL,
  `aboutme` varchar(300) NOT NULL,
  `gender` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `doc_nic`, `docfirstname`, `doclastname`, `password`, `specialization`, `availabledays`, `availabletimes`, `aboutme`, `gender`) VALUES
(1, '0000000v', 'Wenasara', 'Ravinath', '22af645d1859cb5ca6da0c484f1f37ea', 'cartiology', 'Monday-Friday', '15pm-20pm', 'pecializes in treating diseases of the cardiovascular system ', 'male'),
(4, '990251460v', 'lahiru', 'danajaya', '123', 'cartiology', 'today', '17pm-20pm', '      nothing          \r\n              ', 'male'),
(5, 'new', 'new', 'new', '22af645d1859cb5ca6da0c484f1f37ea', 'demeatology', 'new', '18pm-20pm', '                \r\n          new    ', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `patiant`
--

CREATE TABLE `patiant` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `bloodgroup` varchar(5) NOT NULL,
  `allergy` varchar(300) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `gender` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patiant`
--

INSERT INTO `patiant` (`id`, `username`, `email`, `password`, `bloodgroup`, `allergy`, `dob`, `firstname`, `lastname`, `gender`) VALUES
(11, 'da', 'da', 'da', 'AB+', 'Drug Allergy', 'da', 'da', 'da', 'da'),
(12, 'lahiru99', 'lahiru@gmail.com', '123', 'A+', '                \r\n      Drug Allergy.', '99', 'lahiru', 'dananjaya', 'male'),
(15, 'Emali', 'Susin', '7009b1f453cee28102a3f1e2be9d210e', 'A+', 'Drug Allergy.', 'w', 'wakka', 'wakka', 'w'),
(16, 'w', 'y', 'w', 'AB+', 'Drug Allergy.', 't', 'w', 'w', 'w'),
(17, 'test', '04/26/2021', 'w', 'AB+', 'Drug Allergy.', 't', 'test2', '04/26/2021', 'w'),
(18, 'new', 'new', '22af645d1859cb5ca6da0c484f1f37ea', 'A', '    dd            \r\n              ', '123333', 'new', 'new', 'male'),
(19, 's', 's', '03c7c0ace395d80182db07ae2c30f034', 'A', '       s         \r\n              ', 's', 's', 's', 'male'),
(20, 'bakaya1891@delowd.com', 'e', 'e1671797c52e15f763380b45e841ec32', 'A', '      e          \r\n              ', 'e', 'e', 'e', 'male'),
(21, 'Senehe', 'senehedananja@gmail.com', '22af645d1859cb5ca6da0c484f1f37ea', 'B', '            Latex Allergy.    \r\n       ', '12/12/1994', 'senehe', 'Dananja', 'male'),
(22, 'testname', 'testemail', '22af645d1859cb5ca6da0c484f1f37ea', 'A+', '                \r\n            rr  ', '12/12/1999', 'testfn', 'testln', 'male'),
(23, 'dilan', 'dilan@gmail.com', 'e72743f1af53fdbd840f1fdd3fd8ef10', 'A', '                \r\n      ggg        ', '12/12/200', 'www', 'www', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `phistory`
--

CREATE TABLE `phistory` (
  `hisid` int(5) NOT NULL,
  `patientid` varchar(300) NOT NULL,
  `docid` varchar(300) NOT NULL,
  `symptoms` varchar(300) NOT NULL,
  `prescription` varchar(400) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phistory`
--

INSERT INTO `phistory` (`hisid`, `patientid`, `docid`, `symptoms`, `prescription`, `date`) VALUES
(1, '21 ', '1', 'fever,dry cough', 'Remdesivir', '04/26/2021'),
(2, '21 ', '1', 'Chills and shivering   /Muscle aches', ' acetaminophen ', '04/2/2021'),
(5, '1 ', 'null', 'sleepyy', 'cafean', '12/12/2021; %> '),
(15, '15 ', '1 ', 'Muscle and body aches ', ' acetaminophen (Tylenol) ', '04/28/2021'),
(16, '1 ', 'null', 'Chills and shivering  ', 'acetaminophen ', '04/28/2021'),
(17, '1 ', 'null', 'symptom test', 'prescription test', '05/01/2021'),
(19, '1 ', 'null', 'symptom test', 'prescription test', '05/01/2021'),
(20, '1 ', 'null', 'symptom test', 'prescription test', '05/01/2021'),
(21, '18', '1 ', 'test sympt', 'test pres', '05/01/2021'),
(22, '23', '1 ', 'headache', 'fffffdfd', '05/10/2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docid`);

--
-- Indexes for table `patiant`
--
ALTER TABLE `patiant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phistory`
--
ALTER TABLE `phistory`
  ADD PRIMARY KEY (`hisid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patiant`
--
ALTER TABLE `patiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `phistory`
--
ALTER TABLE `phistory`
  MODIFY `hisid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
