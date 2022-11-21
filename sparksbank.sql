-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 10:13 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparksbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`First_Name`, `Last_Name`, `Email`, `Message`) VALUES
('Subir kumar', 'patro', 'subirbam2013@gmail.com', 'hi'),
('Subir kumar', 'patro', 'subirbam2013@gmail.com', 'ji'),
('Subir kumar', 'patro', 'subirbam2013@gmail.com', 'SUCCESS'),
('Subir kumar', 'patro', 'subirbam2013@gmail.com', 'SUCCESS !!!'),
('Subir kumar', 'patro', 'subirbam2013@gmail.com', 'Nice website');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Account_no` int(10) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Email_id` varchar(100) NOT NULL,
  `Balance` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Account_no`, `Name`, `Email_id`, `Balance`) VALUES
(20010200, 'SWAYAM PRATAP SETHY', 'swayam.pratp@gmail.com', 20000),
(20010201, 'ASHRIBAD PATRA', 'ashribadpatra@gmail.com', 60000),
(20010202, 'SUBIR KUMAR PATRO', 'subirbam2013@gmail.com', 50000),
(20010203, 'Mr unknown', 'swiss.bank@gmail.com', 99999),
(20010204, 'SOMYO PATI', 'mosa.sonu@gmail.com', 30000),
(20010205, 'PRATYUSH PREETAM PUHAN', 'sonu.apee@gmail.com', 100000),
(20010206, 'APARNA PANDA', 'aparnapanda139@gmail.com', 90000),
(20010207, 'NIKHILESH PATNAIK', 'nikhileshpatnaik4@gmail.com', 87),
(20010208, 'SIDHARTH BRAMHA', 'sidharthbramnha@gmail.com', 89000),
(20010209, 'PRABIN KUMAR PATRO', 'prabin.ldmgap@gmail.com', 35000),
(20010210, 'ANKITA SWAIN', 'ankita.lgb@gmail.com', 16),
(20010211, 'ANKUR SANDA', 'ankur.baharagora@gmail.com', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(100) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'ANKITA SWAIN', 'NIKHILESH PATNAIK', 5, '2022-11-20 11:18:35'),
(2, 'APARNA PANDA', 'ANKITA SWAIN', 1, '2022-11-20 11:19:14'),
(3, 'ANKITA SWAIN', 'NIKHILESH PATNAIK', 80, '2022-11-20 12:18:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Account_no`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
