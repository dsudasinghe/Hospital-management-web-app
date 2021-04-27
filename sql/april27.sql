-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 03:04 PM
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
(4, 'lal', 'lal', '1234');

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
(2, '11', '11', '11', '1'),
(3, '11', '11', '11', '1'),
(4, 'w', 'w', 'w', '2'),
(5, 'w', 'w', 'w', '2'),
(6, 'test', 'test2', '04/26/2021', '04/26/2021'),
(7, 'test', 'test2', '04/15/2021', '04/15/2021'),
(8, 'test', 'test2', '04/10/2021', '04/10/2021'),
(9, '1', '15 ', '04/13/2021', 'this will work'),
(10, '2', '15', '12/10/2021', 'ghjghgjhg'),
(11, '2', '15', '12/10/2021', 'ghjghgjhg'),
(12, '1', 'null ', '04/13/2021', 'r'),
(13, '1', '15 ', '04/13/2021', 'test\r\n'),
(14, '1', '15 ', '04/13/2021', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docid` int(5) NOT NULL,
  `doc_nic` varchar(20) NOT NULL,
  `docfirstname` varchar(20) NOT NULL,
  `doclastname` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
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
(1, '00000001v', 'hiranya', 'ravinath', '', 'zoology', '', '', '', ''),
(2, '00000001v', 'hiranya', 'ravinath', '', 'zoology', '', '', '', ''),
(4, '990251460v', 'lahiru', 'danajaya', '123', 'cartiology', 'today', 'evening', '      nothing          \r\n              ', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `patiant`
--

CREATE TABLE `patiant` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
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
(11, 'da', 'da', 'da', 'da', 'da', 'da', 'da', 'da', 'da'),
(12, 'lahiru99', 'lahiru@gmail.com', '123', 'A+', '                \r\n      ghsw        ', '99', 'lahiru', 'dananjaya', 'male'),
(14, 'bakaya1891@delowd.com', 's', '1', 'A', '                \r\n              s', '', 's', 's', 'male'),
(15, 'w', 'w', 'w', 'w', 'w', 'w', 'wakka', 'wakka', 'w'),
(16, 'w', 'y', 'w', 'f', 'w', 't', 'w', 'w', 'w'),
(17, 'test', '04/26/2021', 'w', 'f', 'w', 't', 'test2', '04/26/2021', 'w');

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
(1, '15', '1', 'fever,dry cough', 'Remdesivir', '04/26/2021'),
(2, '15', '1', 'Chills and shivering   /Muscle aches', ' acetaminophen ', '04/2/2021');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patiant`
--
ALTER TABLE `patiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `phistory`
--
ALTER TABLE `phistory`
  MODIFY `hisid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
