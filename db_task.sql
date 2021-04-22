-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 12:09 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id` int(11) NOT NULL,
  `nama_dosen` varchar(255) CHARACTER SET latin1 NOT NULL,
  `details` text CHARACTER SET latin1 NOT NULL,
  `subject_jd` varchar(255) CHARACTER SET latin1 NOT NULL,
  `bentuk_soal` varchar(255) CHARACTER SET latin1 NOT NULL,
  `tanggal` date NOT NULL,
  `status_jd` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id`, `nama_dosen`, `details`, `subject_jd`, `bentuk_soal`, `tanggal`, `status_jd`) VALUES
(1, 'Rosa Ariyani', 'Ngoding bahasa C++', 'DPBO', 'Lain-lain', '2021-04-30', 'Belum'),
(2, 'Herbert Siregar', 'Ngerjain soal', 'RPL', 'Pilihan Ganda', '2021-04-28', 'Sudah'),
(3, 'Wawan Setiawan', 'Menyelesaikan permasalahan soal', 'Kecerdasan Buatan', 'Essay', '2021-04-29', 'Belum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
