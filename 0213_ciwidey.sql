-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2022 pada 00.41
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
-- Database: `0213_ciwidey`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ahli_waris`
--

CREATE TABLE `ahli_waris` (
  `id_mitra` varchar(10) NOT NULL,
  `nama_tertanggung` varchar(27) NOT NULL,
  `sts_tertanggung` varchar(15) NOT NULL,
  `jml_tanggungan` varchar(2) NOT NULL,
  `jml_anak` varchar(2) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `desa` varchar(27) NOT NULL,
  `kecamatan` varchar(27) NOT NULL,
  `rt` varchar(3) NOT NULL,
  `rw` varchar(3) NOT NULL,
  `kodepos` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bi_checking`
--

CREATE TABLE `bi_checking` (
  `id_mitra` varchar(10) NOT NULL,
  `kolektabilistas` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cekling`
--

CREATE TABLE `cekling` (
  `id_mitra` varchar(10) NOT NULL,
  `nm_nrsmber1` varchar(27) NOT NULL,
  `hasil1` varchar(7) NOT NULL,
  `nm_nrsmber2` varchar(27) NOT NULL,
  `hasil2` varchar(7) NOT NULL,
  `nm_nrsmber3` varchar(27) NOT NULL,
  `hasil3` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_usaha`
--

CREATE TABLE `jenis_usaha` (
  `id_mitra` varchar(10) NOT NULL,
  `nama_usaha` varchar(27) NOT NULL,
  `usaha_dihindari` varchar(1) NOT NULL,
  `pekerja_anak` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(14) NOT NULL,
  `nama` varchar(27) NOT NULL,
  `jabatan` varchar(27) NOT NULL,
  `cabang` varchar(27) NOT NULL,
  `id_regional` varchar(3) NOT NULL,
  `id_area` varchar(4) NOT NULL,
  `aktif` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `jabatan`, `cabang`, `id_regional`, `id_area`, `aktif`) VALUES
('201305200549', 'AGUS TAUFIK', 'BM', 'Ciwidey', '5', '2', 'N'),
('201510052392', 'Saepul akbar', 'DBM', 'Ciwidey', '5', '2', 'N'),
('201605093111', 'Fitriani Indah Nuraeni', 'DBM Act', 'Ciwidey', '5', '2', 'N'),
('201705024563', 'R. Masnah Srinagara', 'ADMIN', 'Ciwidey', '5', '2', 'Y'),
('201705024567', 'Fhito Repiandi', 'AO', 'Ciwidey', '5', '2', 'N'),
('201705024572', 'Untung Setia', 'AO', 'Ciwidey', '5', '2', 'N'),
('201705024574', 'Asri Aulia Turochmah', 'AO', 'Ciwidey', '5', '2', 'N'),
('201711135556', 'Wildan Faisal Hamdani', 'AO', 'Ciwidey', '5', '2', 'N'),
('201711135557', 'Syelfia Angraeni', 'AO', 'Ciwidey', '5', '2', 'N'),
('201802055986', 'Randi Budi Susanto', 'AO', 'Ciwidey', '5', '2', 'N'),
('201802055998', 'Mizan Agung Pratomo', 'AO', 'Ciwidey', '5', '2', 'N'),
('201807026675', 'Nova Irawan', 'AO', 'Ciwidey', '5', '2', 'Y'),
('201810017208', 'Pandu Pebstiandie', 'AO', 'Ciwidey', '5', '2', 'Y'),
('201811197485', 'DIAN HERDIAWAN', 'AO', 'Ciwidey', '5', '2', 'N'),
('201811197486', 'Suci Listiani', 'AO', 'Ciwidey', '5', '2', 'N'),
('201904018059', 'Redi Sopandi', 'AO', 'Ciwidey', '5', '2', 'Y'),
('201909168864', 'Dendi Warsita', 'AO', 'Ciwidey', '5', '2', 'N'),
('2020100610022', 'Yayan Hermawan', 'AO', 'Ciwidey', '5', '2', 'Y'),
('2021112511957', 'Muhammad Rizki H', 'AO', 'Ciwidey', '5', '2', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kumpulan`
--

CREATE TABLE `kumpulan` (
  `id_kumpulan` varchar(4) NOT NULL,
  `nama_kumpulan` varchar(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kumpulan`
--

INSERT INTO `kumpulan` (`id_kumpulan`, `nama_kumpulan`) VALUES
('0039', 'BALEENDAH 06'),
('0043', 'MALAKASARI06'),
('0060', 'JELEKONG05'),
('0062', 'MANGGAHANG 21'),
('0090', 'JELEKONG 11'),
('0104', 'ANDIR05'),
('0113', 'ANDIR08'),
('0119', 'BALEENDAH 29'),
('0122', 'BALEENDAH 27'),
('0146', 'MANGGAHANG 36'),
('0154', 'ANDIR 12'),
('0164', 'JELEKONG 26'),
('0167', 'BOJONGMALAKA 8'),
('0169', 'BALEENDAH 42'),
('0173', 'ANDIR 14'),
('0174', 'MANGGAHANG 42'),
('0179', 'MANGGAHANG 43'),
('0194', 'ANDIR 20'),
('0196', 'BALEENDAH 50'),
('0197', 'BALEENDAH 51'),
('0198', 'BALEENDAH 52'),
('0199', 'MALAKASARI 15 KP PASIR POGO'),
('0222', 'WARGAMEKAR 24'),
('0223', 'BALEENDAH 60 ADVENTURE'),
('0224', 'MANGGAHANG 49 LAPANG'),
('0228', 'MANGGAHANG 50 BASO KUBURAN'),
('0229', 'MANGGAHANG 08 POJOK'),
('0231', 'ANDIR 3 SUKAMELANG'),
('0232', 'JELEKONG 7 BSI'),
('0233', 'JELEKONG 36 GIRIMEKAR'),
('0234', 'MANGGAHANG 32 RONGOLAWE'),
('0239', 'ANDIR 26 PLN'),
('0242', 'ANDIR 26'),
('0243', 'BALEENDAH 62 SITU'),
('0244', 'BALEENDAH 25 PART 2'),
('0245', 'MANGGAHANG 55 BASO KUBURAN'),
('0246', 'BALEENDAH 63'),
('0247', 'MANGGAHANG 56'),
('0258', 'MANGGAHANG 59'),
('0259', 'Bojongmalaka 12'),
('0260', 'CIHEULANG 01'),
('0261', 'JELEKONG 39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mitra`
--

CREATE TABLE `mitra` (
  `id_mitra` varchar(10) NOT NULL,
  `nama_lengkap` varchar(27) DEFAULT NULL,
  `nama_panggilan` varchar(15) NOT NULL,
  `ibu_kandung` varchar(27) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `desa` varchar(27) NOT NULL,
  `kecamatan` varchar(27) NOT NULL,
  `rt` varchar(3) NOT NULL,
  `rw` varchar(3) NOT NULL,
  `kodepos` varchar(6) NOT NULL,
  `pendidikan_terakhir` varchar(15) NOT NULL,
  `nomer_telepon` varchar(14) NOT NULL,
  `status_rumah` varchar(7) NOT NULL,
  `lama_tinggal` varchar(2) NOT NULL,
  `rumah_lat` varchar(15) NOT NULL,
  `rumah_long` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penanggung_jawab`
--

CREATE TABLE `penanggung_jawab` (
  `id_mitra` varchar(10) NOT NULL,
  `nama_penanggung_jawab` varchar(27) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `desa` varchar(27) NOT NULL,
  `kecamatan` varchar(27) NOT NULL,
  `rt` varchar(3) NOT NULL,
  `rw` varchar(3) NOT NULL,
  `kodepos` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendapatan_keluarga`
--

CREATE TABLE `pendapatan_keluarga` (
  `id_mitra` varchar(10) NOT NULL,
  `nama_pemberi` varchar(27) NOT NULL,
  `hbgan_dng_mitra` varchar(10) NOT NULL,
  `pekerjaan` varchar(27) NOT NULL,
  `pendapatan` int(8) NOT NULL,
  `total_pendapatan` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendapatan_usaha`
--

CREATE TABLE `pendapatan_usaha` (
  `id_mitra` varchar(10) NOT NULL,
  `ramai` int(8) NOT NULL,
  `sepi_sedang` int(8) NOT NULL,
  `total` int(8) NOT NULL,
  `rata_rata` int(8) NOT NULL,
  `tgl` date NOT NULL,
  `jam` time NOT NULL,
  `hari_ini` int(8) NOT NULL,
  `total_pendapatan` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran_keluarga`
--

CREATE TABLE `pengeluaran_keluarga` (
  `id_mitra` varchar(10) NOT NULL,
  `biaya_makan` int(8) NOT NULL,
  `biaya_listrik` int(8) NOT NULL,
  `biaya_anak` int(8) NOT NULL,
  `biaya_kesehatan` int(8) NOT NULL,
  `biaya_angsuran` int(8) NOT NULL,
  `biaya_lain2` int(8) NOT NULL,
  `total_pengeluran` int(9) NOT NULL,
  `pengahsilan_bersih` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran_usaha`
--

CREATE TABLE `pengeluaran_usaha` (
  `id_mitra` varchar(10) NOT NULL,
  `bahan_baku` int(8) NOT NULL,
  `listrik` int(8) NOT NULL,
  `tenaga_kerja` int(8) NOT NULL,
  `transportasi` int(8) NOT NULL,
  `angsuran` int(8) NOT NULL,
  `ket_bahanbaku` varchar(200) NOT NULL,
  `ket_listrik` varchar(200) NOT NULL,
  `ket_tenaga_kerja` varchar(200) NOT NULL,
  `ket_transportasi` varchar(200) NOT NULL,
  `ket_angsuran` varchar(200) NOT NULL,
  `total_pengeluaran` int(9) NOT NULL,
  `penghasilan_bersih_usaha` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian_usaha`
--

CREATE TABLE `rincian_usaha` (
  `id_mitra` varchar(10) NOT NULL,
  `lokasi_usaha` varchar(27) NOT NULL,
  `lama_usaha` varchar(2) NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `putaran_usaha` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_pinjaman`
--

CREATE TABLE `riwayat_pinjaman` (
  `id_mitra` varchar(10) NOT NULL,
  `nama_lembaga` varchar(27) NOT NULL,
  `jangka_waktu` varchar(10) NOT NULL,
  `tahun_kredit` varchar(4) NOT NULL,
  `besar_pinjaman` varchar(9) NOT NULL,
  `angsuran` varchar(7) NOT NULL,
  `sisa_angsuran` int(3) NOT NULL,
  `sisa_pinjaman` varchar(9) NOT NULL,
  `frekuensi_angsuran` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tracking`
--

CREATE TABLE `tracking` (
  `id_tracking` varchar(7) NOT NULL,
  `nik_petugas` varchar(14) NOT NULL,
  `id_kumpulan` varchar(4) NOT NULL,
  `tipe_pengajuan` varchar(10) NOT NULL,
  `tipe_pinjaman` varchar(12) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `tgl_revisi` date NOT NULL,
  `tgl_ok` date NOT NULL,
  `tgl_lkkm1` date NOT NULL,
  `tgl_lkkm2` date NOT NULL,
  `tgl_pengesahan` date NOT NULL,
  `tgl_pencairan` date NOT NULL,
  `jml_mitra` int(2) NOT NULL,
  `jml_pencairan` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tracking`
--

INSERT INTO `tracking` (`id_tracking`, `nik_petugas`, `id_kumpulan`, `tipe_pengajuan`, `tipe_pinjaman`, `tgl_kirim`, `tgl_revisi`, `tgl_ok`, `tgl_lkkm1`, `tgl_lkkm2`, `tgl_pengesahan`, `tgl_pencairan`, `jml_mitra`, `jml_pencairan`) VALUES
('062021', '201904018059', '0229', 'NET OFF', '2W', '2021-06-07', '2021-06-08', '2021-06-10', '2021-06-10', '2021-06-11', '2021-06-14', '2021-06-16', 5, 16500000),
('062021', '201807026675', '0224', 'NET OFF', '2W', '2021-06-08', '0000-00-00', '2021-06-09', '2021-06-10', '0000-00-00', '2021-06-10', '2021-06-11', 4, 14000000),
('062021', '201810017208', '0223', 'NET OFF', '2W', '2021-06-11', '2021-06-15', '2021-06-16', '2021-06-17', '0000-00-00', '2021-06-17', '2021-06-21', 3, 7500000),
('062021', '201904018059', '0173', 'NET OFF', '2W', '2021-06-11', '2021-06-15', '2021-06-17', '2021-06-17', '2021-06-18', '2021-06-19', '2021-06-21', 5, 12500000),
('062021', '201810017208', '0113', 'NET OFF', '2W', '2021-06-16', '0000-00-00', '2021-06-18', '2021-06-21', '0000-00-00', '2021-06-21', '2021-06-23', 2, 11000000),
('062021', '2020100610022', '0232', 'NET OFF', '2W', '2021-06-18', '2021-06-22', '2021-06-24', '2021-06-24', '2021-06-25', '2021-06-26', '2021-06-28', 5, 14000000),
('062021', '2020100610022', '0231', 'NET OFF', '2W', '2021-06-18', '2021-06-21', '2021-06-24', '2021-06-24', '2021-06-25', '2021-06-26', '2021-06-28', 5, 13500000),
('072021', '201904018059', '0229', 'NET OFF', '2W', '2021-06-25', '2021-06-28', '2021-06-29', '2021-07-01', '0000-00-00', '2021-07-01', '2021-07-02', 3, 7500000),
('072021', '201904018059', '0233', 'NET OFF', '2W', '2021-06-29', '2021-07-02', '2021-07-16', '2021-07-16', '2021-07-19', '2021-07-21', '2021-07-23', 5, 16000000),
('072021', '201904018059', '0222', 'NET OFF', '2W', '2021-07-21', '0000-00-00', '2021-07-22', '2021-07-27', '0000-00-00', '2021-07-27', '2021-07-29', 2, 5500000),
('082021', '201807026675', '0146', 'NET OFF', '2W', '2021-07-29', '0000-00-00', '2021-08-02', '2021-08-02', '2021-08-03', '2021-08-04', '2021-08-06', 5, 23000000),
('082021', '201807026675', '0228', 'NET OFF', '2W', '2021-07-30', '2021-08-02', '2021-08-04', '2021-08-04', '0000-00-00', '2021-08-04', '2021-08-06', 2, 7000000),
('082021', '201810017208', '0122', 'NET OFF', '2W', '2021-07-30', '2021-08-02', '2021-08-03', '2021-08-03', '2021-08-04', '2021-08-05', '2021-08-06', 8, 32000000),
('082021', '201807026675', '0173', 'NET OFF', '2W', '2021-08-10', '2021-08-13', '2021-08-18', '2021-08-19', '0000-00-00', '2021-08-19', '2021-08-23', 2, 5000000),
('082021', '201810017208', '0234', 'NET OFF', '2W', '2021-08-14', '2021-08-20', '2021-08-23', '2021-08-23', '2021-08-24', '2021-08-25', '2021-08-30', 5, 16000000),
('082021', '201904018059', '0169', 'NET OFF', '2W', '2021-08-18', '2021-08-24', '2021-08-25', '2021-08-26', '2021-08-27', '2021-08-28', '2021-08-30', 5, 16000000),
('092021', '201810017208', '0167', 'NET OFF', '2W', '2021-09-07', '2021-09-09', '2021-09-10', '2021-09-11', '2021-09-13', '2021-09-14', '2021-09-15', 8, 27500000),
('092021', '201807026675', '0197', 'NET OFF', '2W', '2021-09-09', '0000-00-00', '2021-09-14', '2021-09-14', '2021-09-15', '2021-09-16', '2021-09-20', 8, 31000000),
('092021', '201810017208', '0119', 'NET OFF', '2W', '2021-09-15', '2021-09-17', '2021-09-20', '2021-09-20', '2021-09-21', '2021-09-22', '2021-09-23', 5, 21000000),
('092021', '201904018059', '0154', 'NET OFF', '2W', '2021-09-15', '0000-00-00', '2021-09-22', '2021-09-22', '2021-09-23', '2021-09-25', '2021-09-28', 8, 22500000),
('092021', '2020100610022', '0199', 'NET OFF', '2W', '2021-09-16', '0000-00-00', '2021-09-20', '2021-09-22', '0000-00-00', '2021-09-22', '2021-09-23', 6, 24000000),
('092021', '201904018059', '0239', 'NET OFF', '2W', '2021-09-19', '2021-09-20', '2021-09-21', '2021-09-22', '2021-09-23', '2021-09-27', '2021-09-29', 5, 13500000),
('092021', '2020100610022', '0104', 'NET OFF', '2W', '2021-09-19', '2021-09-20', '2021-09-21', '2021-09-21', '2021-09-22', '2021-09-23', '2021-09-27', 5, 20000000),
('102021', '201807026675', '0060', 'NET OFF', '2W', '2021-09-29', '2021-10-06', '2021-10-08', '2021-10-11', '2021-10-12', '2021-10-14', '2021-10-18', 5, 16000000),
('102021', '201807026675', '0043', 'NET OFF', '2W', '2021-09-30', '2021-10-05', '2021-10-07', '2021-10-08', '2021-10-11', '2021-10-12', '2021-10-14', 8, 34500000),
('102021', '2020100610022', '0090', 'NET OFF', '2W', '2021-10-01', '2021-10-07', '2021-10-11', '2021-10-12', '2021-10-13', '2021-10-14', '2021-10-18', 6, 19000000),
('102021', '201904018059', '0196', 'NET OFF', '2W', '2021-10-04', '2021-10-07', '2021-10-13', '2021-10-13', '2021-10-14', '2021-10-15', '2021-10-19', 6, 21000000),
('102021', '201810017208', '0194', 'NET OFF', '2W', '2021-10-05', '2021-10-08', '2021-10-14', '2021-10-15', '0000-00-00', '2021-10-15', '2021-10-19', 6, 27000000),
('102021', '201810017208', '0122', 'NET OFF', '2W', '2021-10-06', '0000-00-00', '2021-10-08', '2021-10-12', '0000-00-00', '2021-10-12', '2021-10-14', 2, 12000000),
('102021', '201807026675', '0197', 'NET OFF', '2W', '2021-10-06', '0000-00-00', '2021-10-16', '2021-10-21', '0000-00-00', '2021-10-21', '2021-10-25', 2, 6500000),
('102021', '201904018059', '0233', 'NET OFF', '2W', '2021-10-08', '2021-10-12', '2021-10-13', '2021-10-15', '0000-00-00', '2021-10-15', '2021-10-19', 2, 5000000),
('102021', '201810017208', '0244', 'NET OFF', '2W', '2021-10-13', '2021-10-18', '2021-10-26', '2021-10-26', '0000-00-00', '2021-10-26', '2021-10-28', 5, 21000000),
('102021', '2020100610022', '0242', 'NET OFF', '2W', '2021-10-14', '2021-10-18', '2021-10-23', '2021-10-23', '0000-00-00', '2021-10-23', '2021-10-26', 5, 20000000),
('102021', '201904018059', '0169', 'NET OFF', '2W', '2021-10-22', '2021-10-26', '2021-10-27', '2021-10-27', '0000-00-00', '2021-10-27', '2021-10-28', 3, 9500000),
('112021', '201807026675', '0243', 'NET OFF', '2W', '2021-10-15', '2021-10-25', '2021-11-04', '2021-10-27', '2021-10-28', '2021-11-05', '2021-11-09', 5, 18000000),
('112021', '2020100610022', '0179', 'NET OFF', '2W', '2021-10-23', '2021-11-03', '2021-11-04', '2021-11-04', '2021-11-05', '2021-11-08', '2021-11-09', 5, 20000000),
('112021', '201807026675', '0198', 'NET OFF', '2W', '2021-10-29', '2021-11-03', '2021-11-05', '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-12', 5, 23500000),
('112021', '201904018059', '0174', 'NET OFF', '2W', '2021-11-05', '2021-11-09', '2021-11-13', '2021-11-16', '0000-00-00', '2021-11-16', '2021-11-18', 5, 19000000),
('112021', '201810017208', '0164', 'NET OFF', '2W', '2021-11-05', '0000-00-00', '2021-11-11', '2021-11-12', '0000-00-00', '2021-11-12', '2021-11-17', 8, 32000000),
('112021', '201807026675', '0039', 'NET OFF', '2W', '2021-11-05', '2021-11-10', '2021-11-15', '2021-11-15', '2021-11-16', '2021-11-17', '2021-11-22', 5, 21000000),
('112021', '201904018059', '0246', 'NET OFF', '2W', '2021-11-12', '2021-11-17', '2021-11-19', '2021-11-19', '2021-11-20', '2021-11-22', '2021-11-24', 7, 24000000),
('112021', '201807026675', '0245', 'NET OFF', '2W', '2021-11-12', '2021-11-19', '2021-11-23', '2021-11-23', '2021-11-24', '2021-11-25', '2021-11-28', 5, 18000000),
('112021', '2020100610022', '0090', 'NET OFF', '2W', '2021-11-12', '2021-11-18', '2021-11-22', '2021-11-23', '0000-00-00', '2021-11-23', '2021-11-26', 2, 8000000),
('112021', '2020100610022', '0247', 'NET OFF', '2W', '2021-11-15', '0000-00-00', '2021-11-22', '2021-11-23', '0000-00-00', '2021-11-23', '2021-11-26', 5, 24000000),
('122021', '201810017208', '0258', 'NET OFF', '2W', '2021-12-10', '2021-12-14', '2021-12-17', '2021-12-17', '2021-12-18', '2021-12-20', '2021-12-27', 5, 23500000),
('012022', '2021112511957', '0260', 'NET OFF', '2W', '2021-12-14', '2021-12-17', '2021-12-24', '2021-12-27', '0000-00-00', '2021-12-28', '2022-01-31', 10, 50000000),
('012022', '201807026675', '0245', 'NET OFF', '2W', '2021-12-14', '2021-12-27', '2021-12-30', '2021-12-31', '0000-00-00', '2021-12-31', '0000-00-00', 2, 0),
('012022', '201904018059', '0259', 'NET OFF', '2W', '2021-12-15', '2021-12-23', '2021-12-24', '2021-12-27', '0000-00-00', '2021-12-28', '2022-01-31', 6, 15000000),
('012022', '201807026675', '0062', 'NET OFF', '2W', '2021-12-18', '2021-12-23', '2021-12-28', '2021-12-29', '0000-00-00', '2021-12-30', '0000-00-00', 6, 0),
('012022', '201904018059', '0246', 'NET OFF', '2W', '2021-12-18', '2021-12-21', '2021-12-24', '2021-12-28', '0000-00-00', '2021-12-28', '2022-01-31', 2, 5000000),
('012022', '2020100610022', '0261', 'NET OFF', '2W', '2021-12-18', '2021-12-23', '2021-12-24', '2021-12-28', '0000-00-00', '2021-12-30', '2022-01-31', 6, 20000000),
('122021', '201904018059', '0196', 'NET OFF', '2W', '2021-12-22', '0000-00-00', '2021-12-24', '2021-12-27', '0000-00-00', '2021-12-27', '2021-12-29', 2, 8000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ukm`
--

CREATE TABLE `ukm` (
  `nik` varchar(14) NOT NULL,
  `id_mitra` varchar(10) NOT NULL,
  `id_kumpulan` varchar(4) NOT NULL,
  `tgl_survei` date NOT NULL,
  `tgl_kirim` date NOT NULL,
  `putaran_pinjaman` varchar(2) NOT NULL,
  `bsr_pinjaman_dbr` int(8) NOT NULL,
  `bsr_pinjaman_ahp` int(8) NOT NULL,
  `bsr_pinjaman` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nik` varchar(14) NOT NULL,
  `username` varbinary(60) NOT NULL,
  `password` varbinary(60) NOT NULL,
  `tipe` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nik`, `username`, `password`, `tipe`) VALUES
('201305200549', 0x31323334, 0x31323334, 'BM'),
('201705024563', 0x35343934, 0x31323334, 'ADMIN');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ahli_waris`
--
ALTER TABLE `ahli_waris`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indeks untuk tabel `bi_checking`
--
ALTER TABLE `bi_checking`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indeks untuk tabel `cekling`
--
ALTER TABLE `cekling`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indeks untuk tabel `jenis_usaha`
--
ALTER TABLE `jenis_usaha`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `kumpulan`
--
ALTER TABLE `kumpulan`
  ADD PRIMARY KEY (`id_kumpulan`,`nama_kumpulan`);

--
-- Indeks untuk tabel `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indeks untuk tabel `penanggung_jawab`
--
ALTER TABLE `penanggung_jawab`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indeks untuk tabel `pendapatan_usaha`
--
ALTER TABLE `pendapatan_usaha`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indeks untuk tabel `pengeluaran_keluarga`
--
ALTER TABLE `pengeluaran_keluarga`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indeks untuk tabel `pengeluaran_usaha`
--
ALTER TABLE `pengeluaran_usaha`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indeks untuk tabel `rincian_usaha`
--
ALTER TABLE `rincian_usaha`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indeks untuk tabel `ukm`
--
ALTER TABLE `ukm`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
