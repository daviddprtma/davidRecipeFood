-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2021 at 01:58 AM
-- Server version: 10.3.31-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hybrid_160419103`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoryrecipefood`
--

CREATE TABLE `categoryrecipefood` (
  `idcategory` int(11) NOT NULL,
  `idrecipefood` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoryrecipefood`
--

INSERT INTO `categoryrecipefood` (`idcategory`, `idrecipefood`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 1),
(5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoryrecipefood`
--
ALTER TABLE `categoryrecipefood`
  ADD PRIMARY KEY (`idcategory`,`idrecipefood`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
