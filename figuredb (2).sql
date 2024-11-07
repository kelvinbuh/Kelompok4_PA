-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2024 at 11:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `figuredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `keinginan`
--

CREATE TABLE `keinginan` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keinginan`
--

INSERT INTO `keinginan` (`id`, `user_id`, `pid`, `nama`, `harga`, `image`) VALUES
(29, 17, 21, 'Gojo Satoru', '500', 'Jujutsu Kaisen Gojou Satoru Shibuya Scramble Figure (17 Scale) Exclusive.png'),
(31, 17, 22, 'Rei Ayanami', '699', 'RADIO EVA Evangelion Rei Ayanami .png'),
(33, 17, 25, 'Zero Two', '999', 'Figure Zero Two DARLING in the FRANXX.png');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `kuantitas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `metode` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `total_produk` varchar(100) NOT NULL,
  `total_harga` varchar(100) NOT NULL,
  `ditempatkan` varchar(100) NOT NULL,
  `status_pembayaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `nama`, `nomor`, `email`, `metode`, `alamat`, `total_produk`, `total_harga`, `ditempatkan`, `status_pembayaran`) VALUES
(7, 17, 'Alif Rifai', '31414', 'alifrifai07032006@gmail.com', 'kartu kredit', 'sebrang lek', ',Rei Ayanami(1),Killua Zoldyck(1),Albedo(1)', '1001498', '04-11-24', 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(100) NOT NULL,
  `user_Id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `user_Id`, `nama`, `email`, `nomor`, `message`) VALUES
(8, 17, 'Alif Rifai', 'alifrifai07032006@gmail.com', '31414', 'halo banggg'),
(9, 17, 'jaki', 'jaki@gmail.com', '23444', 'semangat bangg');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `detail_produk` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `detail_produk`, `image`) VALUES
(20, 'Killua Zoldyck', '1000000', 'killua zoldyck from hunter x hunte, power petir, dan temannya gon', 'Pop Up Parade Killua Zaoldyeck Zoldyck - HUNTER x HUNTER.png'),
(21, 'Gojo Satoru', '500', 'Gojo Satoru adalah karakter terkuat di anime jujutsu kaisen, dia sekaligus guru, di animenya', 'Jujutsu Kaisen Gojou Satoru Shibuya Scramble Figure (17 Scale) Exclusive.png'),
(22, 'Rei Ayanami', '699', 'Rei Ayanami Berasal dari Anime Evangelion, dia salah satu pengendara robot juga', 'RADIO EVA Evangelion Rei Ayanami .png'),
(23, 'Itadori Yuji', '555', 'Itadori Yuji Adalah Main Character Di Anime Jujutsu Kaisen, Dia adalah MC yg zero to hero banget', 'Shibuya Scramble Figure 17 Itadori Yuji - Jujutsu Kaisen.png'),
(24, 'Rem', '666', 'Rem Berasal Dari Anime Re zero, dia salah satu char penting', 'ReZero kara Hajimeru Isekai Seikatsu.png'),
(25, 'Zero Two', '999', 'Zero Two berasal dari anime darling in the franxx, dimana anime ini bercerita tentang robot2 gtu', 'Figure Zero Two DARLING in the FRANXX.png'),
(26, 'Albedo', '799', 'Albedo Berasalh dari Anime Overlord, Dia juga cahr yg sangat over power', 'Figurine Overlord - Albedo - Maid Clothes.png'),
(27, 'Hatsune MIku', '1555555', 'Hatsune MIku Adalah Char yg terkenal dengan Nyanyiannya', 'Hatsune Miku Figures.png'),
(28, 'Denji', '499', 'Denji From Chainsawman', 'Chainsaw Man Denji Action Figure Model.png'),
(29, 'Kamado Nezuko', '999', 'Kamado Nezuko Adalah Adik Dari Kamado Tanjiro, tetapi dia dijadikan oleh iblis oleh simuzan', 'Figure Kimetsu no Yaiba - Figuarts Zero FZO Kamado Nezuko Kekkijutsu - FP.png'),
(30, 'Komi Shouko', '888', 'Komi Shouko, adalaha char yg intovert', 'Komi-san wa Komyushou Komi Desu Shouko.png'),
(31, 'Geto Suguru', '999', 'Geto Suguru Adalah salah satu teman terbaik gojo, tetapi mereka berbeda prinsip ketika si gojo yg lebih kuat', 'Nendoroid Geto Suguru - High School Ver. Jujutsu Kaisen.png'),
(32, 'Toru Amano', '1777777', 'Toru Amano adalaha char game yg sangat kuat', 'Game animation figure Fire Emblem ThreeHouses Byleth Byleth hand do classic hand do.png'),
(33, 'Levi Ackerman', '299', 'Levi Berasal dari anime attack on titan, dimana dia adalaha strongest soldier bagi umat manusia', 'ATTACK ON TITAN - LEVI ACKERMAN.png'),
(34, 'Shosu', '777', 'Shosu adalah char yg misterious', 'Scale Kimono Tech Gear Shoshu Figure SWAV WINGS inc Wasou 10 in. PVC&ABS.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_role` enum('pilih role','user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `user_role`) VALUES
(16, 'kelpin', 'kelvin.id@gmail.com', '$2y$10$spQM0xFtMvcxOrNSzut/ceuoUBif.7SYAtGQlUnUcWlws1vK5QSQe', 'admin'),
(17, 'alip', 'alip@gmail.com', '$2y$10$HADjiwhZwgwFFczXDq9tsug5quT1Vo.rO/kclAansS.3A9jhDu9gG', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keinginan`
--
ALTER TABLE `keinginan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keinginan`
--
ALTER TABLE `keinginan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
