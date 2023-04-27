-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Apr 2023 pada 03.19
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portal_berita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` varchar(200) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `judul`, `isi`, `tanggal`, `gambar`, `penulis`, `id_kategori`) VALUES
(4, 'puan masuk penjara', 'Puan masuk penjara karena korupsi', '15 april 2023', 'puanpenjara.jpeg', 'jae ganteng', 1),
(6, 'kecelakaan', 'motor nabrak mobil', '15 april 2023', 'kecelakaan.png', 'haikal jae', 6),
(8, 'ojan masuk penjara', 'masuk', '18 april 2023', 'ojanpenjara.jpg', 'fatur', 5),
(9, 'ojan masuk penjara', 'masuk', '18 april 2023', 'ojanpenjara.jpg', 'fatur', 5),
(10, 'wawan sepuh', 'sirkel gamer', '18 april 2023', 'wawangamer.jpg', 'ojan', 2),
(11, 'wawan sepuh', 'sirkel gamer', '18 april 2023', 'wawangamer.jpg', 'ojan', 2),
(12, 'wawan sepuh', 'sirkel gamer', '18 april 2023', 'wawangamer.jpg', 'ojan', 2),
(13, 'wawan sepuh', 'sirkel gamer', '18 april 2023', 'wawangamer.jpg', 'ojan', 2),
(14, 'wawan sepuh', 'sirkel gamer', '18 april 2023', 'wawangamer.jpg', 'ojan', 2),
(15, 'wawan sepuh', 'sirkel gamer', '18 april 2023', 'wawangamer.jpg', 'ojan', 2),
(16, '8 + 1', '9 ', '19 april 2023', 'pintar,jpg', 'fatur', 5),
(17, '1 + 1 =2', '9 ', '14 april 2023', 'beritaanakpintar.jpg', 'jae ganteng', 5),
(18, '1 + 1 =2', '9 ', '14 april 2023', 'beritaanakpintar.jpg', 'jae ganteng', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(6, 'kecelekaan'),
(2, 'olahraga\r\n'),
(5, 'pendidikan'),
(1, 'politik');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_kategori` (`id_kategori`) USING BTREE;

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `nama_kategori` (`nama_kategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD CONSTRAINT `tb_berita_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
