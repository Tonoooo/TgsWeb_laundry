-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2022 pada 11.43
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry_hendri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE `harga` (
  `harga_per_kilo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`harga_per_kilo`) VALUES
(10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakaian`
--

CREATE TABLE `pakaian` (
  `pakaian_id` int(11) NOT NULL,
  `pakaian_transaksi` int(11) NOT NULL,
  `pakaian_jenis` varchar(100) NOT NULL,
  `pakaian_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pakaian`
--

INSERT INTO `pakaian` (`pakaian_id`, `pakaian_transaksi`, `pakaian_jenis`, `pakaian_jumlah`) VALUES
(69, 5, 'topi', 5),
(70, 5, 'kaos', 9),
(71, 6, 'sepatu', 5),
(72, 6, 'baju', 25),
(73, 7, 'kemeja', 6),
(74, 7, 'jas', 4),
(75, 7, 'baju', 10),
(76, 9, 'baju', 20),
(77, 9, 'rok', 10),
(78, 9, 'celana', 10),
(79, 9, 'kemeja', 5),
(80, 9, 'sepatu', 12),
(81, 9, 'pakaian dalam', 26),
(87, 12, 'hawai', 5),
(94, 10, 'kemeja', 5),
(95, 10, 'celana', 5),
(96, 8, 'baju', 12),
(97, 8, 'celana', 8),
(98, 8, 'topi', 4),
(99, 8, 'sepatu', 5),
(100, 8, 'kemeja', 10),
(101, 11, 'sarung', 15),
(102, 11, 'kopiah', 4),
(103, 11, 'kaos', 2),
(104, 13, 'jaket', 5),
(105, 13, 'celana', 5),
(106, 13, 'sepatu', 5),
(107, 13, 'hawai', 5),
(108, 13, 'k', 5),
(110, 15, 'selimut', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(100) NOT NULL,
  `pelanggan_hp` varchar(20) NOT NULL,
  `pelanggan_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_hp`, `pelanggan_alamat`) VALUES
(1, 'tono', '084513697542', 'Indonesia'),
(2, 'suep', '084555477712', 'Badung, Bali'),
(3, 'andi', '087945612365', 'Kaimana, Papua'),
(4, 'adom', '081234567890', 'Samarinda, Kalimantan'),
(6, 'sana', '084613575424', 'Bandung, Jawa Barat'),
(7, 'Rendi', '047651279885', 'Jakarta Pusat'),
(8, 'Ucup', '08478965551221', 'Solo, Jawa Tengah'),
(9, 'Jamal', '089754133336', 'Aceh Singkil'),
(10, 'Tehyunk', '012345678911', 'serpong'),
(11, 'Ultraman', '087946135208', 'Baleendah'),
(13, 'Hitler', '087954123654', 'Jerman'),
(15, 'gara', '087459312548', 'sulawesi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `transaksi_pelanggan` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_berat` int(11) NOT NULL,
  `transaksi_tgl_selesai` date NOT NULL,
  `transaksi_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tgl`, `transaksi_pelanggan`, `transaksi_harga`, `transaksi_berat`, `transaksi_tgl_selesai`, `transaksi_status`) VALUES
(5, '2022-04-07', 2, 60000, 6, '2022-04-08', 2),
(6, '2022-04-07', 4, 550000, 55, '2022-04-10', 1),
(7, '2022-04-07', 3, 140000, 14, '2022-04-11', 1),
(8, '2022-04-08', 1, 440000, 44, '2022-04-12', 2),
(9, '2022-04-12', 6, 960000, 96, '2022-04-17', 0),
(10, '2022-04-12', 7, 20000, 2, '2022-04-12', 2),
(11, '2022-04-12', 8, 170000, 17, '2022-04-13', 1),
(12, '2022-04-12', 9, 10000, 1, '2022-04-12', 0),
(13, '2022-04-12', 10, 410000, 41, '2022-04-15', 1),
(15, '2022-06-16', 15, 20000, 2, '2022-06-18', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`pakaian_id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `pakaian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
