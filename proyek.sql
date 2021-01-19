-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18 Des 2017 pada 15.00
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `klass` enum('pelanggan','penjual','admin','mahasiswa') NOT NULL,
  `active` enum('1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`, `klass`, `active`) VALUES
(1, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', 'admin', '1'),
(2, 'user1', 'd781eaae8248db6ce1a7b82e58e60435', 'pelanggan', '1'),
(3, 'user2', '2e129db15b6d6db5342ba5d328642262', 'penjual', '1'),
(33, 'c', 'e10adc3949ba59abbe56e057f20f883e', 'penjual', '1'),
(34, 'annisa', 'c9d2cce909ea37234be8af1a1f958805', 'mahasiswa', '1'),
(35, 'cok', 'e10adc3949ba59abbe56e057f20f883e', 'mahasiswa', '1'),
(36, 'annisa', 'f67bf71add9d1688e72c58c708eaca8c', 'mahasiswa', '1'),
(37, 'imron', '41815707c75667cf2e1f9ab327a5c7a0', 'mahasiswa', '1'),
(38, 'asa', 'f61d751cdffa4f4d3d01f049aadca6a4', 'penjual', '1'),
(39, 'fadila', 'fc88df38a7262a0915586ca126a0b366', 'mahasiswa', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` enum('teknik informatika','logistk bisnis','manajemen bisnis','manajemen informatika','akutansi') NOT NULL,
  `email` varchar(60) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(12) NOT NULL,
  `gender` enum('Laki-laki','Perempuan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `jurusan`, `email`, `alamat`, `telp`, `gender`) VALUES
('1164067', 'annisa fathoroni', 'manajemen bisnis', 'annisa@gmail.com', 'jl sariasih no 5', '0228421621', 'Laki-laki'),
('1164069', 'cokro edi prawiro', 'teknik informatika', 'cokroedi@gmail.com', 'Jl Ahmad Yani No 9 Kota bandung', '082284216111', 'Laki-laki'),
('1164072', 'fadila', 'teknik informatika', 'fadila@outlook.com', 'jl sarijadi no 50', '0823', 'Perempuan'),
('1164074', 'imron sumadireja', 'teknik informatika', 'imron@yahoo.com', 'jl sarijadi', '022', 'Laki-laki'),
('1174041', 'Muhammad Afra Faris', 'teknik informatika', 'afra.faris123@gmail.com', 'dikosan', '0822', 'Laki-laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `idpemesanan` varchar(10) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `tanggal_pesan` date NOT NULL,
  `ukuran` enum('S','M','L','XL') NOT NULL,
  `gender` enum('Laki-laki','Perempuan') NOT NULL,
  `jumlah barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjual`
--

CREATE TABLE `penjual` (
  `idpenj` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telp` int(11) NOT NULL,
  `deskripsi` varchar(225) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `gambar` varchar(60) NOT NULL,
  `nama_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjual`
--

INSERT INTO `penjual` (`idpenj`, `nama`, `email`, `telp`, `deskripsi`, `alamat`, `gambar`, `nama_file`) VALUES
('1', 'asdw', 'asdw123', 2147483647, 'ac', 'ac', '', 'images_(1)1.jpg'),
('2', 'cokro edi', 'cokroedip@gmail.com', 21, 'asdw', 'asdw', '', '4P5njJ.png'),
('3', 'edi', 'edi@gmail.com', 21, 'apa saja bisa ', 'sarijadi ', '', 'Logo_IPSI10.png'),
('4', 'aip', 'aip@gmail.com', 228421621, 'menyedikan jasa jahit pakaian seragam kuota terbatas ', 'Jl sariasih no 10 ', '', 'aa.jpg'),
('5', 'imron ', 'imron@yahoo.com', 2147483647, 'menyediakan jasa jahit seragam berbagai ukuran ', 'Jl terusan gegerkalong no 20', '', 'bb.jpg'),
('6', 'annisa fathoroni', 'annisa@gmail.com', 228421621, 'menyediakan jasa jahit seragam polpos kuota 30 pasang ', 'jl sariasih no 20', '', 'images_(1).jpg'),
('7', 'cokro edi', 'cokroedi@gmail.com', 89, 'aiueo', 'jl sarijadi', '', '91Jk7II72mL__SL1500_.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`idpemesanan`);

--
-- Indexes for table `penjual`
--
ALTER TABLE `penjual`
  ADD PRIMARY KEY (`idpenj`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
