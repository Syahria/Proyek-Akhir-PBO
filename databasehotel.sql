-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 08:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databasehotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `kamar_hotel`
--

CREATE TABLE `kamar_hotel` (
  `id_kamar` int(11) NOT NULL,
  `lantai` int(11) NOT NULL,
  `no_kamar` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `fasilitas` varchar(50) NOT NULL,
  `status` varchar(255) NOT NULL,
  `pegawai_id_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar_hotel`
--

INSERT INTO `kamar_hotel` (`id_kamar`, `lantai`, `no_kamar`, `harga`, `fasilitas`, `status`, `pegawai_id_pegawai`) VALUES
(13, 1, 1, 200000, 'AC', 'Booked', 6),
(14, 1, 2, 240000, 'DC Triple', 'Booked', 6),
(15, 1, 3, 440000, 'AC Double', 'Booked', 6),
(16, 1, 4, 400000, 'AC Triple', 'Open', 6);

-- --------------------------------------------------------

--
-- Table structure for table `kamar_standard`
--

CREATE TABLE `kamar_standard` (
  `id_kamar` int(11) NOT NULL,
  `kapasitas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar_standard`
--

INSERT INTO `kamar_standard` (`id_kamar`, `kapasitas`) VALUES
(13, '5 Orang'),
(15, '8 Orang'),
(16, '10 orang');

-- --------------------------------------------------------

--
-- Table structure for table `kamar_suite`
--

CREATE TABLE `kamar_suite` (
  `id_kamar` int(11) NOT NULL,
  `layanan_gratis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar_suite`
--

INSERT INTO `kamar_suite` (`id_kamar`, `layanan_gratis`) VALUES
(14, 'Donut morning');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `no_telepon` varchar(12) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `pegawai_id_pegawai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `no_telepon`, `alamat`, `jabatan`, `pegawai_id_pegawai`) VALUES
(6, 'Laden', 'CEO', '081329467290', 'Suwandi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

CREATE TABLE `reservasi` (
  `id_reservasi` int(11) NOT NULL,
  `tgl_checkin` date NOT NULL,
  `tgl_checkout` date NOT NULL,
  `kamar_hotel_id_kamar` int(11) NOT NULL,
  `pegawai_id_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservasi`
--

INSERT INTO `reservasi` (`id_reservasi`, `tgl_checkin`, `tgl_checkout`, `kamar_hotel_id_kamar`, `pegawai_id_pegawai`) VALUES
(12, '2023-11-02', '2023-11-02', 13, 6),
(13, '2023-11-02', '2023-11-04', 15, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(11) NOT NULL,
  `reservasi_id_reservasi` int(11) NOT NULL,
  `nama_tamu` varchar(30) NOT NULL,
  `no_telepon` varchar(12) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `reservasi_id_reservasi`, `nama_tamu`, `no_telepon`, `alamat`) VALUES
(14, 12, 'Laden', '123', '123'),
(15, 13, 'Chiko', '0813213123', 'Suwandi');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `pegawai_id_pegawai` int(11) DEFAULT NULL,
  `reservasi_id_reservasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `total_harga`, `status`, `pegawai_id_pegawai`, `reservasi_id_reservasi`) VALUES
(5, 200000, 'unpaid', 6, 12),
(6, 1320000, 'paid', 6, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar_hotel`
--
ALTER TABLE `kamar_hotel`
  ADD PRIMARY KEY (`id_kamar`),
  ADD KEY `fk_kamar_pegawai` (`pegawai_id_pegawai`);

--
-- Indexes for table `kamar_standard`
--
ALTER TABLE `kamar_standard`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `kamar_suite`
--
ALTER TABLE `kamar_suite`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `fi_pegawai_atasan` (`pegawai_id_pegawai`);

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id_reservasi`),
  ADD UNIQUE KEY `reservasi__idx` (`kamar_hotel_id_kamar`),
  ADD KEY `reservasi_pegawai_fk` (`pegawai_id_pegawai`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`),
  ADD KEY `fk_tamu_reservasi` (`reservasi_id_reservasi`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD UNIQUE KEY `transaksi__idx` (`reservasi_id_reservasi`),
  ADD KEY `fk_transaksi_pegawai` (`pegawai_id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kamar_hotel`
--
ALTER TABLE `kamar_hotel`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kamar_hotel`
--
ALTER TABLE `kamar_hotel`
  ADD CONSTRAINT `fk_kamar_pegawai` FOREIGN KEY (`pegawai_id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kamar_standard`
--
ALTER TABLE `kamar_standard`
  ADD CONSTRAINT `Fk_kamar_standard` FOREIGN KEY (`id_kamar`) REFERENCES `kamar_hotel` (`id_kamar`) ON DELETE CASCADE;

--
-- Constraints for table `kamar_suite`
--
ALTER TABLE `kamar_suite`
  ADD CONSTRAINT `Fk_kamar_suite` FOREIGN KEY (`id_kamar`) REFERENCES `kamar_hotel` (`id_kamar`) ON DELETE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `fi_pegawai_atasan` FOREIGN KEY (`pegawai_id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `fk_reservasi_kamar` FOREIGN KEY (`kamar_hotel_id_kamar`) REFERENCES `kamar_hotel` (`id_kamar`);

--
-- Constraints for table `tamu`
--
ALTER TABLE `tamu`
  ADD CONSTRAINT `fk_tamu_reservasi` FOREIGN KEY (`reservasi_id_reservasi`) REFERENCES `reservasi` (`id_reservasi`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_transaksi_pegawai` FOREIGN KEY (`pegawai_id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_transaksi_reservasi` FOREIGN KEY (`reservasi_id_reservasi`) REFERENCES `reservasi` (`id_reservasi`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
