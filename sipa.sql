-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2019 at 10:28 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipa`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id_order` int(11) NOT NULL,
  `nama_order` varchar(255) NOT NULL,
  `total_order` int(11) NOT NULL,
  `noHp_order` varchar(20) DEFAULT NULL,
  `jmlbeli_order` int(11) DEFAULT NULL,
  `jmlharga_order` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(225) DEFAULT NULL,
  `desc_paket` text DEFAULT NULL,
  `harga_paket` double DEFAULT NULL,
  `kuota_paket` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `desc_paket`, `harga_paket`, `kuota_paket`) VALUES
(1, 'Paket Hemat', 'Tiket Parkir \r\n		motor: Rp.2000,00/jam\r\nTiket Masuk\r\n		Rp.45.000,00/orang', 47000, 50),
(2, 'Paket Hemat 2', 'Tiket Parkir\r\n		Mobil : Rp.5.000/jam\r\nTiket Masuk\r\n		Rp.45.000/orang', 50000, 50),
(3, 'Paket Lengkap 1', 'Tiket Parkir\r\n		motor : Rp.2000/jam\r\nTiket Masuk\r\n		Rp.45.000/orang\r\nTiket Jeep\r\n		Rp.100.000/mobil jeep', 147000, 50),
(4, 'Paket Lengkap 2', 'Tiket Parkir\r\n		mobil : Rp.5.000/jam\r\nTiket Masuk \r\n		Rp.45.000/orang\r\ntiket Jeep\r\n		Rp.100.000/mobil jeep', 150000, 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` mediumint(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `telepon`, `username`, `password`, `level`) VALUES
(8, 'Gorontalo', 'gorontalo@gmail.com', '123456789012', 'gorontalo', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', 'admin'),
(9, 'Adnan Kasim', 'adnan@gmail.com', '012931271451624', 'adnan', '7179747e9de1dfa6881c3ffa912941e667b6c368', 'user'),
(10, 'Ryan Nusi', 'ryan@gmail.com', '212138197389', 'ryan123', 'adcd7048512e64b48da55b027577886ee5a36350', 'user'),
(11, 'Ilham Ahmad', 'ilham@gmail.com', '103897313718', 'ilham', '989e9254f7d287a8bd3af9c533a409ff6cfde78a', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` tinyint(4) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `waktu` datetime NOT NULL DEFAULT current_timestamp(),
  `gambar` varchar(255) NOT NULL,
  `tampil` int(10) UNSIGNED NOT NULL,
  `validasi` enum('ya','tidak') NOT NULL DEFAULT 'tidak',
  `id_user` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `judul`, `deskripsi`, `waktu`, `gambar`, `tampil`, `validasi`, `id_user`) VALUES
(7, 'Bukit Layang', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum reprehenderit molestiae magnam blanditiis pariatur tempora dicta, doloribus obcaecati officiis sapiente exercitationem sint ipsum debitis alias autem repellat facilis aliquid veniam.\r\n           Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum reprehenderit molestiae magnam blanditiis pariatur tempora dicta, doloribus obcaecati officiis sapiente exercitationem sint ipsum debitis alias autem repellat facilis aliquid veniam.\r\n           Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum reprehenderit molestiae magnam blanditiis pariatur tempora dicta, doloribus obcaecati officiis sapiente exercitationem sint ipsum debitis alias autem repellat facilis aliquid veniam.', '2018-08-28 02:45:35', 'Bukit layang.jpg', 1, 'ya', 9),
(8, 'Benteng Otanaha', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum reprehenderit molestiae magnam blanditiis pariatur tempora dicta, doloribus obcaecati officiis sapiente exercitationem sint ipsum debitis alias autem repellat facilis aliquid veniam.\r\n           Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum reprehenderit molestiae magnam blanditiis pariatur tempora dicta, doloribus obcaecati officiis sapiente exercitationem sint ipsum debitis alias autem repellat facilis aliquid veniam.\r\n           Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum reprehenderit molestiae magnam blanditiis pariatur tempora dicta, doloribus obcaecati officiis sapiente exercitationem sint ipsum debitis alias autem repellat facilis aliquid veniam.', '2018-08-28 02:45:35', 'Benteng Otanaha.jpg', 0, 'tidak', 9),
(9, 'Masjid Walima', 'sbdhsb sdbahvdbh bsdhabdhq dbhdbvqh dqhjdb hdbqhbuq hdwbhqb hdbqhdb dbq', '2018-08-28 02:59:36', 'Masjid Walima Emas - Herry Dwi Prasetya.jpg', 2, 'ya', 10),
(11, 'Saronde Island', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum reprehenderit molestiae magnam blanditiis pariatur tempora dicta, doloribus obcaecati officiis sapiente exercitationem sint ipsum debitis alias autem repellat facilis aliquid veniam.\r\n           Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum reprehenderit molestiae magnam blanditiis pariatur tempora dicta, doloribus obcaecati officiis sapiente exercitationem sint ipsum debitis alias autem repellat facilis aliquid veniam.\r\n           Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum reprehenderit molestiae magnam blanditiis pariatur tempora dicta, doloribus obcaecati officiis sapiente exercitationem sint ipsum debitis alias autem repellat facilis aliquid veniam.', '2018-08-28 03:07:12', 'Pulau Saronde.jpg', 3, 'ya', 10),
(12, 'Desa Bongo', 'snfjdbsf sbdajh', '2018-08-28 03:10:25', 'DESA BONGO.jpg', 0, 'tidak', 10),
(13, 'Monumen Nanti', 'nsjdsj fbhfbhqj fbqhjfbqj wwsdbwqhjbdf qwhdbqjhf qdhbqhjd', '2018-08-28 03:49:00', 'Monumen Nanti.jpeg', 0, 'ya', 10),
(15, 'Jejak Kaki', 'SNDJSDBJH SDBQHJDBHQB WBDJQ', '2018-08-28 05:59:25', 'Tangga-2000-dan-Jejak-Kaki-Lahilote.jpg', 0, 'tidak', 11),
(16, 'Hiu Paus', 'dhabsdhb wdqbbdq dq', '2018-08-28 06:24:36', 'hiu-paus-jadi-objek-wisata-bahari.jpg', 2, 'ya', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` mediumint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wisata`
--
ALTER TABLE `wisata`
  ADD CONSTRAINT `wisata_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
