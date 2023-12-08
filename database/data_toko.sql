-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Des 2021 pada 15.49
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
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(10) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `kuantitas` varchar(50) DEFAULT NULL,
  `harga_satuan` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `kuantitas`, `harga_satuan`) VALUES
(1, 'Beras', '1 Kg', '10500'),
(2, 'Minyak Goreng', '1 Lit', '14000'),
(3, 'Susu Kental', '1 Kal', '10000'),
(4, 'Gula Pasir', '1 Kg', '15000'),
(5, 'Tepung Terigu', '1 Kg', '8000'),
(7, 'Cabai Merah', '1 Kg', '39000'),
(8, 'Telur Ayam', '1 Kg', '20500'),
(9, 'Daging Ayam Ras', '1 Kg', '39000'),
(10, 'Daging Sapi', '1 Kg', '107000'),
(12346, 'Top Coffee Gula Aren', '1 sac', '1500'),
(12348, 'Bumbu Racik Ayam Goreng', '1 pcs', '2500'),
(12349, 'Sarden', '1 kal', '8000'),
(12351, 'Gula Merah', '1/4kg', '4000'),
(12352, 'Indomie Rebus', '1 pcs', '2500'),
(12356, 'Luwak White Coffee', '1 pcs', '1500');

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
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tb_hutang`
--
ALTER TABLE `tb_hutang`
  ADD PRIMARY KEY (`id_hutang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12357;

--
-- AUTO_INCREMENT untuk tabel `tb_hutang`
--
ALTER TABLE `tb_hutang`
  MODIFY `id_hutang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112040;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
