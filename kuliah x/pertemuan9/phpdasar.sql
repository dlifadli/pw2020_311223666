-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 04:53 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpdasar`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nrp` char(9) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nrp`, `email`, `jurusan`, `gambar`) VALUES
(1, 'Fadli Zuhri', '108272842', 'fadlizuhri@gmail.com', 'Teknik Informatika', 'fadli.jpg'),
(2, 'Ahsan Besarik', '123414653', 'ahsanbesarik@yahoo.com', 'DKV', 'ahsanbesarik.jpg'),
(3, 'Fauzan Yono', '124542341', 'fauzanzono@yahoo.co.id', 'Teknik Mesin', 'fauzanyono.jpg'),
(4, 'Hana Anisa', '812733292', 'hanaanisa@gmail.com', 'DKV', 'hana.jpg'),
(5, 'Rudi Salaman', '812529225', 'rudisalaman@yahoo.co.id', 'Bisnis', 'rudisalaman.jpg'),
(6, 'Steven Will', '812533281', 'stevenwill@gmail.com', 'Teknik Mesin', 'stevenwill.jpg'),
(7, 'wika', '916235323', 'wikawikawika@gmail.com', 'DKV', 'wika.jpg'),
(8, 'Windah Basodara', '815232823', 'windahbasodara@yahoo.com', 'Komunikasi', 'windah.jpg'),
(9, 'Yati Sukaesih', '978283924', 'yatisukaesih@gmail.com', 'Bisnis', 'yatisukaesih.jpg'),
(10, 'Yatno Basnar', '129361293', 'yatnobasnar@gmail.com', 'Teknik Mesin', 'yatnobasnar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(3, 'admin', '$2y$10$DDvvo6INGYF7dzoR045lOuC06NFlECOCQeSolztYG2tc47H4D0SpK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
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
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
