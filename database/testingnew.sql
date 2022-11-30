-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 01:57 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testingnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `datadiris`
--

CREATE TABLE `datadiris` (
  `idnama` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `jenisKelamin` enum('laki-laki','perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `agama` enum('islam','kristen protestan','kristen katholik','konghucu','hindu','buddha') NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datadiris`
--

INSERT INTO `datadiris` (`idnama`, `nama`, `nik`, `jenisKelamin`, `tanggal_lahir`, `alamat`, `agama`, `gambar`) VALUES
(84, 'bandi anggara', '0087867856', 'laki-laki', '2000-04-18', 'jl. dara', 'islam', 'avt01.png'),
(86, 'devara ayodya', '0087867856', 'perempuan', '2001-12-12', 'jl. taman sari', 'kristen katholik', 'avt2.jpg'),
(87, 'arvan anggara', '0058263785', 'laki-laki', '1995-08-27', 'jl. kencana wungu', 'islam', 'avt02.jpg'),
(88, 'tasya devara', '0878674653', 'perempuan', '1999-03-23', 'jl. mentari pagi', 'kristen protestan', 'avt6.jpg'),
(89, 'axelion jonathan', '0058263785', 'laki-laki', '1999-04-19', 'jl. pahlawan kita', 'kristen katholik', 'avt1.jpg'),
(90, 'piyanka maheswari', '0087675544', 'perempuan', '1995-12-24', 'jl. tegal', 'hindu', 'avt07.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `keahlians`
--

CREATE TABLE `keahlians` (
  `id_keahlian` int(11) NOT NULL,
  `idnama` int(11) NOT NULL,
  `nama_keahlian` varchar(30) DEFAULT NULL,
  `prestasi` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keahlians`
--

INSERT INTO `keahlians` (`id_keahlian`, `idnama`, `nama_keahlian`, `prestasi`) VALUES
(6988, 84, 'inspiratif', 'juara 1 '),
(6991, 86, 'public speaking', 'juara 1 debat'),
(6992, 86, 'berpikir kritis', 'juara 1 paralel '),
(6999, 84, 'public speaking', 'juara 1 debat'),
(7006, 89, 'kemampuan promosi ', 'juara 1 paralel'),
(7022, 88, 'inspirate', 'juara 2 paralel'),
(7054, 87, 'berpikir kritis', 'juara 2 paralel'),
(7073, 88, 'berpikir ', 'juara 1 paralel '),
(7078, 87, 'inovatif', 'juara 2 paralel'),
(7079, 90, 'manajemen waktu', 'duta sekolah'),
(7080, 90, 'berpikir kilat', 'olimpic '),
(7081, 90, 'speaking', 'juara 1 paralel '),
(7082, 89, 'inovatif', 'juara 2 paralel');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikans`
--

CREATE TABLE `pendidikans` (
  `id_pendik` int(11) NOT NULL,
  `idnama` int(11) NOT NULL,
  `riwayat_pendik` varchar(50) DEFAULT NULL,
  `tahun_lulus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendidikans`
--

INSERT INTO `pendidikans` (`id_pendik`, `idnama`, `riwayat_pendik`, `tahun_lulus`) VALUES
(243, 84, 'tk cinta ibu', '2007-05-23'),
(244, 84, 'sd sumberasih ', '2013-08-06'),
(245, 84, 'smp 3 banyumas', '2016-07-08'),
(246, 84, 'sma 1 banyumas', '2019-09-09'),
(247, 84, 'universitas negeri surabaya', '2021-05-08'),
(253, 86, 'tk kasih ibu', '2006-06-12'),
(254, 86, 'sd 1 nameera', '2012-12-12'),
(255, 86, 'smpn 2 lamongan', '2015-10-28'),
(256, 86, 'smk 1 sumenep', '2018-08-08'),
(257, 86, 'institut sepuluh september', '2021-12-02'),
(258, 87, 'tk nusa indah', '2002-06-12'),
(259, 87, 'sd linggar ', '2010-02-23'),
(260, 87, 'smp 1 cilegon', '2013-05-08'),
(261, 87, 'sma 4 cilegon', '2016-09-12'),
(262, 87, 'universitas brawijaya', '2020-11-09'),
(263, 88, 'tk angkasa', '2006-06-12'),
(264, 88, 'sd nusantara', '2012-10-22'),
(265, 88, 'smp pelita harapa', '2015-12-07'),
(266, 88, 'smk 3 prob', '2018-07-11'),
(267, 88, 'universitas negeri jakarta', '2021-07-07'),
(268, 89, 'tk nusa', '2006-12-12'),
(269, 89, 'sd jatinegara', '2012-03-30'),
(270, 89, 'smpn 2 lamongan', '2015-09-17'),
(271, 89, 'sma 5 surabaya', '2018-08-30'),
(272, 89, 'institut teknologi bandung', '2021-09-23'),
(273, 90, 'tk jakbar', '2002-04-17'),
(274, 90, 'sd jakbar', '2008-10-04'),
(275, 90, 'smp jakbar', '2011-07-26'),
(276, 90, 'sma jakbar', '2014-04-10'),
(277, 90, 'universitas indonesia', '2018-12-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datadiris`
--
ALTER TABLE `datadiris`
  ADD PRIMARY KEY (`idnama`);

--
-- Indexes for table `keahlians`
--
ALTER TABLE `keahlians`
  ADD PRIMARY KEY (`id_keahlian`),
  ADD KEY `idnama` (`idnama`);

--
-- Indexes for table `pendidikans`
--
ALTER TABLE `pendidikans`
  ADD PRIMARY KEY (`id_pendik`),
  ADD KEY `idnama` (`idnama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datadiris`
--
ALTER TABLE `datadiris`
  MODIFY `idnama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `keahlians`
--
ALTER TABLE `keahlians`
  MODIFY `id_keahlian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7083;

--
-- AUTO_INCREMENT for table `pendidikans`
--
ALTER TABLE `pendidikans`
  MODIFY `id_pendik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keahlians`
--
ALTER TABLE `keahlians`
  ADD CONSTRAINT `keahlians_ibfk_1` FOREIGN KEY (`idnama`) REFERENCES `datadiris` (`idnama`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pendidikans`
--
ALTER TABLE `pendidikans`
  ADD CONSTRAINT `pendidikans_ibfk_1` FOREIGN KEY (`idnama`) REFERENCES `datadiris` (`idnama`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
