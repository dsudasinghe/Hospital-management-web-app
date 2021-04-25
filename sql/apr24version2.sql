-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 07:50 AM
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
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentid` int(5) NOT NULL,
  `docid` varchar(300) NOT NULL,
  `patientid` varchar(300) NOT NULL,
  `date` varchar(300) NOT NULL,
  `appointmentno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docid` int(5) NOT NULL,
  `doc_nic` varchar(20) NOT NULL,
  `docfirstname` varchar(20) NOT NULL,
  `doclastname` varchar(20) NOT NULL,
  `specialization` varchar(20) NOT NULL,
  `availabledays` varchar(300) NOT NULL,
  `availabletimes` varchar(300) NOT NULL,
  `aboutme` varchar(300) NOT NULL,
  `gender` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `doc_nic`, `docfirstname`, `doclastname`, `specialization`, `availabledays`, `availabletimes`, `aboutme`, `gender`) VALUES
(1, '00000001v', 'hiranya', 'ravinath', 'zoology', '', '', '', ''),
(2, '00000001v', 'hiranya', 'ravinath', 'zoology', '', '', '', '');

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
(1, 'lahiru', 'l@gmail.com', '123', '', '', '', '', '', ''),
(4, 'lalindu', 'ahfiuiouh', '4124', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `phistory`
--

CREATE TABLE `phistory` (
  `hisid` varchar(5) NOT NULL,
  `patientid` varchar(300) NOT NULL,
  `docid` varchar(300) NOT NULL,
  `symptoms` varchar(300) NOT NULL,
  `prescription` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentid` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patiant`
--
ALTER TABLE `patiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
