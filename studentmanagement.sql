-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2021 at 02:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `batchname` varchar(255) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batchname`, `year`) VALUES
(1, 'FALL', 2020),
(2, 'FALL', 2019),
(3, 'FALL', 2018),
(4, 'SUMMER', 2020),
(5, 'SUMMER', 2019),
(7, 'AUTUMN', 2019),
(8, 'WINTER ', 2020),
(9, 'WINTER ', 2021),
(10, 'AUTUMN ', 2017);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `coursename` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `optionn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `coursename`, `duration`, `optionn`) VALUES
(1, 'HARVARD CS50', 6, 'Month/s'),
(2, 'MIT CS PYTHON', 7, 'Month/s'),
(3, 'PRINCETON DSA', 1, 'Year/s'),
(4, 'STANFORD DATA SCIENCE', 2, 'Year/s'),
(5, 'ETH ZURICH ARTS', 12, 'Month/s'),
(7, 'IMPERIAL COLLEGE AI', 5, 'Year/s'),
(8, 'STI', 23, 'Month/s'),
(9, 'uuuu', 0, 'Month/s');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `firstname` varchar(24) NOT NULL,
  `lastname` varchar(24) NOT NULL,
  `middlename` varchar(24) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `batch` varchar(24) NOT NULL,
  `course` varchar(24) NOT NULL,
  `contactnumber` varchar(11) NOT NULL,
  `address` text NOT NULL,
  `id` int(11) NOT NULL,
  `grade` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`firstname`, `lastname`, `middlename`, `gender`, `batch`, `course`, `contactnumber`, `address`, `id`, `grade`) VALUES
('Adrian ', 'Ramirez', 'Buts', 'Female', 'HARVARD CS50', 'FALL', '99999999', '123', 1, '75'),
('LENI', 'ROBREDO', '34567', 'Female', 'IMPERIAL COLLEGE AI', 'FALL', '9119999', 'SKWATER AREA', 3, '90'),
('SALEEL', 'AL SAWARIM', 'NASHEED', 'Female', 'ETH ZURICH ARTS', 'FALL', '456 214', 'BOOM', 4, '75'),
('Adrian', 'Ramirez', 'asd', 'Male', 'INFORMATION TECHNOLOGY 2', 'COMPUTER PROGRAMMING 1', '123123', '13 123 123 12312 312', 5, '89'),
('ERIC ', 'CLAPTON', 'WONDERFUL TONIGHT', 'Female', 'STI NUMBA WAN', 'FALL', '09696969', 'LIGMA street', 6, '76'),
('Juys', 'Dikkamu', 'Lemao', 'Female', 'INFORMATION TECHNOLOGY 1', 'COMPUTER PROGRAMMING 1', '12341234', '12 Twitter st. Internet', 7, '100'),
('BENJAMIN', 'MAGALONG', 'XD', 'Male', 'IT-2', 'OOP', '8700', 'BAGUIO CITY UGH', 8, '87'),
('ADRIAN', 'RAMIREZ', 'B', 'Male', 'SUMMER', 'STANFORD DATA SCIENCE', '099999', 'VIZCAYA', 11, '89'),
('Minecraft', 'asd', 'asd', 'Male', 'SUMMER', 'STANFORD DATA SCIENCE', '65656565', 'sdfsdfsdfs', 12, '99'),
('adasdasd', 'asdsadsad', 'asdasdasdsa', 'Male', 'ETH ZURICH ARTS', 'SUMMER', '435345', '11231231 qweqeqwe', 13, '99');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `utype`) VALUES
(1, 'asd ', 'aids', 'User'),
(2, 'adrian', 'lmao', 'User'),
(3, '123', '123', 'User'),
(4, 'ADRIAN', '123', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
