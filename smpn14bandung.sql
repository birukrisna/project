-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2022 pada 17.06
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smpn14bandung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `nis` varchar(10) NOT NULL,
  `tgl` date NOT NULL,
  `keterangan` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`nis`, `tgl`, `keterangan`) VALUES
('112233', '2021-01-15', '1'),
('131415', '2021-01-15', '2'),
('121212', '2021-01-15', '1'),
('020124', '2021-02-09', '2'),
('131415', '2021-02-11', '2'),
('131415', '2022-01-28', '1'),
('123123', '2022-01-29', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ket_absen`
--

CREATE TABLE `ket_absen` (
  `id_keterangan` varchar(1) NOT NULL,
  `keterangan` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ket_absen`
--

INSERT INTO `ket_absen` (`id_keterangan`, `keterangan`) VALUES
('1', 'Sakit'),
('2', 'Izin'),
('3', 'Tampa Keterangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang_tua`
--

CREATE TABLE `orang_tua` (
  `nis` varchar(10) NOT NULL,
  `nama_orang_tua` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orang_tua`
--

INSERT INTO `orang_tua` (`nis`, `nama_orang_tua`, `alamat`, `no_hp`) VALUES
('112233', 'Pak RIzal', 'Kopo', '8964362241'),
('121212', 'Rukanda', 'Baleendah', '899736958'),
('123123', 'ipin ', 'Alamat', '8562211334'),
('123456', 'Dadang', 'ABCD', '858624781'),
('131415', 'Ibu Fakhri', 'Ujung Berung', '8982238968');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(10) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama_siswa`, `jenis_kelamin`, `kelas`) VALUES
('112233', 'Rizal', 'Lelaki', 'VII A'),
('121212', 'R Masnah Srinagara', 'Perempuan', 'VIII C'),
('123123', 'suparman', 'Lelaki', 'VII A'),
('123456', 'Yusup', 'Lelaki', 'VIII D'),
('131415', 'Fakhri Nashrudin Haq', 'Lelaki', 'VII A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varbinary(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `password` varbinary(60) NOT NULL,
  `tipe` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `nama_user`, `password`, `tipe`) VALUES
(0x61646d696e, 'Admin', 0x61646d696e, 'admin'),
(0x67757275, 'Tatang', 0x67757275, 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ket_absen`
--
ALTER TABLE `ket_absen`
  ADD PRIMARY KEY (`id_keterangan`);

--
-- Indeks untuk tabel `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
