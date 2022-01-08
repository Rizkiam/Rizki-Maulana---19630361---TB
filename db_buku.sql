-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2022 pada 09.28
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `penulis` varchar(40) NOT NULL,
  `jumlah_halaman` int(4) NOT NULL,
  `penerbit` varchar(25) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penulis`, `jumlah_halaman`, `penerbit`, `harga`) VALUES
('B1', 'Harry Potter', 'JK Rowling', 448, 'Gramedia', 80000),
('B2', 'Lord Of The Ring', 'J R R Tolken', 500, 'Gramedia', 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` varchar(11) NOT NULL,
  `nama_pembeli` varchar(50) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `tanggal_beli` varchar(30) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `penulis` varchar(40) NOT NULL,
  `id_penulis` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `nama_pembeli`, `alamat`, `telepon`, `tanggal_beli`, `judul`, `harga`, `penulis`, `id_penulis`) VALUES
('L1', 'Yunawati', 'Aranio', '089655432232', '8 Januari 2022', 'Lord Of The Ring', 100000, 'J R R Tolken', 'P5'),
('L2', 'Fatasyahida', 'Riam Kanan', '089766756676', '6 Januari 2022', 'Lord Of The Ring', 100000, 'J R R Tolken', 'P5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `id_penulis` varchar(10) NOT NULL,
  `nama_penulis` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`id_penulis`, `nama_penulis`, `telepon`, `alamat`) VALUES
('P1', 'JK Rowling', '0118766', 'London'),
('P2', 'Pramoedya', '089566774432', 'Jakarta'),
('P3', 'Tere Liye', '089655432213', 'Bandung'),
('P4', 'Pidi Baiq', '085433212345', 'Bandung'),
('P5', 'J R R Tolken', '0115643', 'California');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id_penulis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
