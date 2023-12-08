-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Des 2021 pada 15.50
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hutang`
--

CREATE TABLE `tb_hutang` (
  `id_hutang` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pembeli` varchar(200) NOT NULL,
  `daftar_barang` varchar(200) DEFAULT NULL,
  `total_hutang` int(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_hutang`
--

INSERT INTO `tb_hutang` (`id_hutang`, `tanggal`, `nama_pembeli`, `daftar_barang`, `total_hutang`) VALUES
(112033, '2021-12-03', 'Raihan', 'Telur Ayam', 20500),
(112035, '2021-12-02', 'Hasan', 'Beras', 10500),
(112037, '2021-12-07', 'Ghibran', 'Indomie Goreng', 3000),
(112038, '2021-12-07', 'Dhea', 'Sarden', 8000),
(112039, '2021-12-17', 'Ghibran AL Khamaeni', 'Luwak White Coffee', 3000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_hutang`
--
ALTER TABLE `tb_hutang`
  ADD PRIMARY KEY (`id_hutang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_hutang`
--
ALTER TABLE `tb_hutang`
  MODIFY `id_hutang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112040;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
