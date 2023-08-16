-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 16, 2023 at 09:55 AM
-- Server version: 10.2.3-MariaDB-log
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(150) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_pokok` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `diskon` varchar(10) NOT NULL DEFAULT '0',
  `keuntungan` varchar(20) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `stok`, `harga_pokok`, `harga_jual`, `diskon`, `keuntungan`, `created_at`, `updated_at`) VALUES
(3, 'Verile Acne Gel 10 g', 99, 20000, 30000, '0', '10000', '2023-03-18 03:30:27', '2023-03-18 03:30:27'),
(4, 'Erha Acneact BHA & Allantoin Acne Back Spray 100 ml', 82, 75000, 85000, '5', '5750', '2023-03-18 03:30:56', '2023-03-18 03:30:56'),
(5, 'Labore Sensitive Skin Care Essential Kit', 56, 120000, 155000, '5', '27250', '2023-03-18 03:31:56', '2023-03-18 03:31:56'),
(6, 'Cefixime 200 mg 10 Kapsul', 55, 15000, 25000, '0', '10000', '2023-03-18 03:32:49', '2023-03-18 03:32:49'),
(7, 'Sumagesic 600 mg 4 Tablet', 95, 3500, 5000, '0', '1500', '2023-03-18 03:33:16', '2023-03-18 03:33:16'),
(8, 'Mefinal 500 mg 10 Kaplet', 70, 10000, 15000, '0', '5000', '2023-03-18 03:33:44', '2023-03-18 03:33:44'),
(9, 'Sanmol Forte 4 Tablet', 148, 2500, 5000, '0', '2500', '2023-03-18 03:34:08', '2023-03-18 03:34:08'),
(10, 'CDR Effervescent 10 Tablet', 250, 26000, 35000, '0', '9000', '2023-03-18 03:34:41', '2023-03-18 03:34:41'),
(11, 'Tolak Angin Cair Plus Madu 15 ml 5 Sachet', 120, 15000, 25000, '0', '10000', '2023-03-18 03:35:15', '2023-03-18 03:35:15'),
(12, 'Sangobion 10 Kapsul', 139, 14000, 20000, '0', '6000', '2023-03-18 03:35:44', '2023-03-18 03:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang_dalam`
--

CREATE TABLE `tbl_barang_dalam` (
  `id_barang_dalam` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `stok` varchar(10) NOT NULL,
  `harga_pokok` varchar(20) NOT NULL,
  `harga_jual` varchar(20) NOT NULL,
  `diskon` varchar(10) NOT NULL,
  `keuntungan` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_barang_dalam`
--

INSERT INTO `tbl_barang_dalam` (`id_barang_dalam`, `nama_barang`, `stok`, `harga_pokok`, `harga_jual`, `diskon`, `keuntungan`, `created_at`, `updated_at`) VALUES
(1, 'Verile Acne Gel 10 g	', '90', '20000', '30000', '0', '10000', '2023-03-17 13:38:01', '2023-03-17 13:38:01'),
(2, 'Erha Acneact BHA & Allantoin Acne Back Spray 100 ml', '159', '75000', '85000', '0', '10000', '2023-03-17 13:39:32', '2023-03-17 13:39:32'),
(3, 'Labore Sensitive Skin Care Essential Kit', '45', '120000', '155000', '0', '35000', '2023-03-17 13:40:34', '2023-03-17 13:40:34'),
(4, 'Sanadryl DMP Sirup 120 ml', '19', '15000', '23500', '0', '8500', '2023-03-17 13:41:31', '2023-03-17 13:41:31'),
(5, 'Actifed Plus Cough Supressant Sirup 60 ml (Merah)', '40', '45000', '56000', '0', '11000', '2023-03-17 13:51:56', '2023-03-17 13:51:56'),
(6, 'Cessa Baby Happy Nose / Cough And Flu 8 ml', '20', '30000', '35000', '0', '5000', '2023-03-17 13:52:32', '2023-03-17 13:52:32'),
(7, 'Ventolin Nebules 2.5 mg 2 Strip (5 Ampul/Strip) - Obat Rutin', '35', '78000', '95000', '0', '17000', '2023-03-17 13:53:12', '2023-03-17 13:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dokter`
--

CREATE TABLE `tbl_dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `tempat_tanggal_lahir` varchar(150) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(150) NOT NULL,
  `spesialis` varchar(150) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dokter`
--

INSERT INTO `tbl_dokter` (`id_dokter`, `nama`, `tempat_tanggal_lahir`, `alamat`, `no_telepon`, `spesialis`, `created_at`) VALUES
(3, 'Saridi', 'Garut, 20 November 1990', 'Rancaekek No. 33, Kab. Bandung, Jawabarat', '08534273467', 'Dokter umum', '2023-03-18 03:57:43'),
(4, 'Fita Airi', 'Bandung, 03 Oktober 1994', 'Margahayu No. 10, Bandung, Jawabarat', '08823746527', 'Dokter Wajah', '2023-03-18 03:58:55'),
(5, 'Indah Nurfitri', 'Jakarta, 14 Februari 1996', 'Jl. Cipagalo No. 76, Bandung, Jawabarat', '08134623576', 'Dokter Kulit', '2023-03-18 04:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_transaksi`
--

CREATE TABLE `tbl_master_transaksi` (
  `id_master_transaksi` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_perawatan` int(11) DEFAULT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `hutang` int(11) NOT NULL DEFAULT 0,
  `biaya` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0,
  `total_bayar` int(11) NOT NULL DEFAULT 0,
  `status_pembayaran` varchar(20) NOT NULL DEFAULT 'Belum Lunas'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master_transaksi`
--

INSERT INTO `tbl_master_transaksi` (`id_master_transaksi`, `id_pasien`, `id_perawatan`, `created_at`, `updated_at`, `keterangan`, `hutang`, `biaya`, `total`, `total_bayar`, `status_pembayaran`) VALUES
(9, 3, NULL, '2023-03-18 04:14:35', '2023-03-18 04:14:35', NULL, 0, 0, 87350, 100000, 'Lunas'),
(10, 3, NULL, '2023-03-18 04:18:00', '2023-03-18 04:18:00', NULL, 0, 0, 87350, 100000, 'Lunas'),
(11, 6, NULL, '2023-03-18 04:19:31', '2023-03-18 04:19:31', NULL, 0, 0, 555750, 600000, 'Lunas'),
(12, 4, NULL, '2023-03-18 04:21:12', '2023-03-18 04:21:12', NULL, 0, 0, 20000, 20000, 'Lunas'),
(13, 3, NULL, '2023-08-16 16:13:14', '2023-08-16 16:13:14', NULL, 5000, 0, 5000, 500000, 'Belum Lunas'),
(14, 3, NULL, '2023-08-16 16:14:57', '2023-08-16 16:14:57', NULL, 5000, 0, 5000, 500000, 'Belum Lunas'),
(15, 3, NULL, '2023-08-16 16:17:48', '2023-08-16 16:17:48', NULL, 5000, 0, 5000, 500000, 'Belum Lunas'),
(16, 3, NULL, '2023-08-16 16:20:10', '2023-08-16 16:20:10', NULL, 5000, 0, 5000, 500000, 'Belum Lunas'),
(17, 3, NULL, '2023-08-16 16:20:42', '2023-08-16 16:20:42', NULL, 5000, 0, 5000, 500000, 'Belum Lunas'),
(18, 3, NULL, '2023-08-16 16:22:06', '2023-08-16 16:22:06', NULL, 0, 0, 80750, 90000, 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_obat_perawatan`
--

CREATE TABLE `tbl_obat_perawatan` (
  `id_obat_perawatan` int(11) NOT NULL,
  `id_perawatan` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_obat_perawatan`
--

INSERT INTO `tbl_obat_perawatan` (`id_obat_perawatan`, `id_perawatan`, `id_obat`, `jumlah`, `created_at`) VALUES
(5, 1, 1, '1', '2023-03-17 13:55:05'),
(6, 1, 2, '2', '2023-03-17 13:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pasien`
--

CREATE TABLE `tbl_pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_tanggal_lahir` varchar(100) NOT NULL,
  `no_telepon` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `member` varchar(5) NOT NULL DEFAULT 'Tidak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pasien`
--

INSERT INTO `tbl_pasien` (`id_pasien`, `nama`, `alamat`, `tempat_tanggal_lahir`, `no_telepon`, `created_at`, `member`) VALUES
(3, 'Maya Arjusianti', 'Cicendo No.44, Kota Bandung, Jawabarat', 'Bandung', '089282734663', '2023-03-18 03:18:30', 'Tidak'),
(4, 'Fiki Nugroho Setiawan', 'Jl. Jakarta No. 33, Kota Bandung, Jawabarat', 'Sumedang', '082347678126', '2023-03-18 03:19:22', 'Tidak'),
(5, 'Anindya Putri', 'Komplek Ciganitri blok A1 No. 12, Kab. Bandung, Jawabarat', 'Bandung', '08562837463', '2023-03-18 03:21:15', 'Tidak'),
(6, 'Septi Nuri', 'Kiaracondong, Bandung, Jawabarat', 'Bandung, 28 April 2000', '08362374625', '2023-03-18 04:05:26', 'Ya'),
(7, 'Mori Simarmana', 'Pejaten Barat, Jakarta', 'Jakarta, 11 Januari 1997', '08123623475', '2023-03-18 04:06:32', 'Tidak'),
(8, 'Safitri Dian', 'Jl. Gedebage No. 44, Bandung, Jawabarat', 'Bandung, 30 Juli 1998', '088273645722', '2023-03-18 05:43:56', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengaturan`
--

CREATE TABLE `tbl_pengaturan` (
  `id_pengaturan` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengaturan`
--

INSERT INTO `tbl_pengaturan` (`id_pengaturan`, `type`, `title`, `content`) VALUES
(1, 'site_name', 'Sistem Informasi Klinik', 'Aplikasi Sistem Informasi Klinik by Dedi Irawan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengeluaran`
--

CREATE TABLE `tbl_pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `pengeluaran` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengeluaran`
--

INSERT INTO `tbl_pengeluaran` (`id_pengeluaran`, `pengeluaran`, `jumlah`, `total`, `created_at`) VALUES
(1, 'Belanja Obat Bulanan', '500', '3500000', '2023-03-17 14:22:48'),
(2, 'Biaya Operasional Transportasi', '1', '1500000', '2023-03-17 14:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perawat`
--

CREATE TABLE `tbl_perawat` (
  `id_perawat` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `tempat_tanggal_lahir` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_perawat`
--

INSERT INTO `tbl_perawat` (`id_perawat`, `nama`, `tempat_tanggal_lahir`, `alamat`, `no_telepon`, `created_at`) VALUES
(2, 'Sintia Dwi Putri', 'Karawang, 06 Maret 1999', 'Komplek Alam Hegar G-10, Bandung, Jawabarat', '08923846723', '2023-03-18 04:02:30'),
(3, 'Anggi Septian', 'Kebumen, 19 September 1995', 'Jl. Terusan Buahbatu No. 99, Kab. Bandung, Jawabarat', '08333485734', '2023-03-18 04:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perawatan`
--

CREATE TABLE `tbl_perawatan` (
  `id_perawatan` int(11) NOT NULL,
  `nama_perawatan` varchar(150) NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon_member` varchar(5) NOT NULL,
  `diskon_umum` varchar(5) NOT NULL,
  `komisi_dokter` int(11) NOT NULL,
  `komisi_perawat` int(11) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_perawatan`
--

INSERT INTO `tbl_perawatan` (`id_perawatan`, `nama_perawatan`, `harga`, `diskon_member`, `diskon_umum`, `komisi_dokter`, `komisi_perawat`, `created_at`, `updated_at`) VALUES
(1, 'Pijat Wajah', 500000, '5', '4', 75000, 35000, '2014-11-29 05:11:02', '2023-03-18 03:55:05'),
(2, 'Pengobatan', 85000, '7', '9', 25000, 10000, '2014-11-30 16:37:12', '2023-03-18 03:50:51'),
(3, 'Pemeriksaan Kesehatan', 50000, '0', '0', 20000, 10000, '2023-03-18 03:54:45', '2023-03-18 03:54:45'),
(4, 'Laser Wajah', 2500000, '5%', '0', 1000000, 350000, '2023-03-18 03:56:19', '2023-03-18 03:56:19'),
(5, 'Kulit', 1500000, '0', '0', 650000, 250000, '2023-03-18 05:40:21', '2023-03-18 05:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_dokter`
--

CREATE TABLE `tbl_transaksi_dokter` (
  `id_transaksi_dokter` int(11) NOT NULL,
  `id_master_transaksi` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi_dokter`
--

INSERT INTO `tbl_transaksi_dokter` (`id_transaksi_dokter`, `id_master_transaksi`, `id_dokter`, `created_at`) VALUES
(39, 2, 1, '22/11/2014 04:49:30'),
(40, 2, 2, '22/11/2014 04:49:30'),
(55, 4, 2, '2014-11-24 00:13:19'),
(61, 5, 2, '2014-11-24 00:15:07'),
(62, 6, 1, '2014-11-27 00:19:09'),
(78, 8, 1, '2014-12-01 22:19:53'),
(105, 3, 1, '2014-12-03 00:11:16'),
(106, 3, 2, '2014-12-03 00:11:16'),
(107, 9, 3, '2023-03-18 04:14:35'),
(108, 10, 3, '2023-03-18 04:18:00'),
(109, 11, 5, '2023-03-18 04:19:31'),
(110, 12, 3, '2023-03-18 04:21:12'),
(111, 14, 3, '2023-08-16 16:14:57'),
(112, 15, 3, '2023-08-16 16:17:48'),
(113, 16, 3, '2023-08-16 16:20:10'),
(114, 17, 3, '2023-08-16 16:20:42'),
(115, 18, 3, '2023-08-16 16:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_obat`
--

CREATE TABLE `tbl_transaksi_obat` (
  `id_transaksi_obat` int(11) NOT NULL,
  `id_master_transaksi` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL DEFAULT 0,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi_obat`
--

INSERT INTO `tbl_transaksi_obat` (`id_transaksi_obat`, `id_master_transaksi`, `id_obat`, `jumlah`, `created_at`) VALUES
(37, 2, 1, 1, '22/11/2014 04:49:30'),
(52, 4, 1, 20, '2014-11-24 00:13:19'),
(58, 5, 2, 5, '2014-11-24 00:15:07'),
(59, 6, 2, 10, '2014-11-27 00:19:09'),
(60, 6, 1, 1, '2014-11-27 00:19:09'),
(62, 7, 2, 1, '2014-11-30 10:42:54'),
(87, 8, 1, 10, '2014-12-01 22:19:53'),
(88, 8, 1, 5, '2014-12-01 22:19:53'),
(115, 3, 1, 10, '2014-12-03 00:11:16'),
(116, 3, 1, 10, '2014-12-03 00:11:16'),
(117, 9, 7, 1, '2023-03-18 04:14:35'),
(118, 9, 9, 1, '2023-03-18 04:14:35'),
(119, 10, 7, 1, '2023-03-18 04:18:00'),
(120, 10, 9, 1, '2023-03-18 04:18:00'),
(121, 11, 4, 1, '2023-03-18 04:19:31'),
(122, 12, 12, 1, '2023-03-18 04:21:12'),
(123, 14, 7, 1, '2023-08-16 16:14:57'),
(124, 16, 7, 1, '2023-08-16 16:20:10'),
(125, 17, 7, 1, '2023-08-16 16:20:42'),
(126, 18, 4, 1, '2023-08-16 16:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_perawat`
--

CREATE TABLE `tbl_transaksi_perawat` (
  `id_transaksi_perawat` int(11) NOT NULL,
  `id_master_transaksi` int(11) NOT NULL,
  `id_perawat` int(11) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi_perawat`
--

INSERT INTO `tbl_transaksi_perawat` (`id_transaksi_perawat`, `id_master_transaksi`, `id_perawat`, `created_at`) VALUES
(40, 2, 1, '22/11/2014 04:49:30'),
(59, 4, 1, '2014-11-24 00:13:19'),
(65, 5, 1, '2014-11-24 00:15:07'),
(66, 6, 1, '2014-11-27 00:19:09'),
(84, 8, 1, '2014-12-01 22:19:53'),
(124, 3, 1, '2014-12-03 00:11:16'),
(125, 3, 1, '2014-12-03 00:11:16'),
(126, 3, 1, '2014-12-03 00:11:16'),
(127, 9, 2, '2023-03-18 04:14:35'),
(128, 10, 2, '2023-03-18 04:18:00'),
(129, 11, 3, '2023-03-18 04:19:31'),
(130, 12, 2, '2023-03-18 04:21:12'),
(131, 14, 2, '2023-08-16 16:14:57'),
(132, 16, 2, '2023-08-16 16:20:10'),
(133, 17, 2, '2023-08-16 16:20:42'),
(134, 18, 3, '2023-08-16 16:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_perawatan`
--

CREATE TABLE `tbl_transaksi_perawatan` (
  `id_transaksi_perawatan` int(11) NOT NULL,
  `id_master_transaksi` int(11) NOT NULL,
  `id_perawatan` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksi_perawatan`
--

INSERT INTO `tbl_transaksi_perawatan` (`id_transaksi_perawatan`, `id_master_transaksi`, `id_perawatan`, `created_at`) VALUES
(1, 10, 2, '2023-03-17 14:18:00'),
(2, 11, 1, '2023-03-17 14:19:31'),
(3, 17, 1, '2023-08-16 09:20:42'),
(4, 18, 1, '2023-08-16 09:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_cms`
--

CREATE TABLE `tbl_user_cms` (
  `id` int(11) NOT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'kasir',
  `telepon` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user_cms`
--

INSERT INTO `tbl_user_cms` (`id`, `username`, `password`, `nama`, `email`, `status`, `telepon`) VALUES
(2, 'kasir', '$2a$10$cOpaB56xpeRhdlNAfKslKOyHUqhuHTiQ9HWQRJIathbxLf5Q02j2q', 'Kasir - Dita Sari', 'ditasari@gmail.com', 'kasir', '1234567890'),
(3, 'ceo', '$2a$10$llN6djgcPtNr.00CyrSjRezaShvwJXwUWwtt.wMzlbT6Ezn6mopym', 'CEO - Dedi Irawan', 'dedi123@gmail.com', 'owner', '081312025217'),
(4, 'admin', '$2a$10$tJvuT/1LpoX.Scpft1PBAu9cm2GFOXmADrOYVttdNfBC3PqiRDgTS', 'Dedi Irawan', 'dedi123@gmail.com', 'admin', '0813578323');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `tbl_master_transaksi`
--
ALTER TABLE `tbl_master_transaksi`
  ADD PRIMARY KEY (`id_master_transaksi`);

--
-- Indexes for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tbl_pengaturan`
--
ALTER TABLE `tbl_pengaturan`
  ADD PRIMARY KEY (`id_pengaturan`);

--
-- Indexes for table `tbl_perawat`
--
ALTER TABLE `tbl_perawat`
  ADD PRIMARY KEY (`id_perawat`);

--
-- Indexes for table `tbl_perawatan`
--
ALTER TABLE `tbl_perawatan`
  ADD PRIMARY KEY (`id_perawatan`);

--
-- Indexes for table `tbl_transaksi_dokter`
--
ALTER TABLE `tbl_transaksi_dokter`
  ADD PRIMARY KEY (`id_transaksi_dokter`);

--
-- Indexes for table `tbl_transaksi_obat`
--
ALTER TABLE `tbl_transaksi_obat`
  ADD PRIMARY KEY (`id_transaksi_obat`);

--
-- Indexes for table `tbl_transaksi_perawat`
--
ALTER TABLE `tbl_transaksi_perawat`
  ADD PRIMARY KEY (`id_transaksi_perawat`);

--
-- Indexes for table `tbl_transaksi_perawatan`
--
ALTER TABLE `tbl_transaksi_perawatan`
  ADD PRIMARY KEY (`id_transaksi_perawatan`);

--
-- Indexes for table `tbl_user_cms`
--
ALTER TABLE `tbl_user_cms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_master_transaksi`
--
ALTER TABLE `tbl_master_transaksi`
  MODIFY `id_master_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_transaksi_dokter`
--
ALTER TABLE `tbl_transaksi_dokter`
  MODIFY `id_transaksi_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `tbl_transaksi_obat`
--
ALTER TABLE `tbl_transaksi_obat`
  MODIFY `id_transaksi_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `tbl_transaksi_perawat`
--
ALTER TABLE `tbl_transaksi_perawat`
  MODIFY `id_transaksi_perawat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `tbl_transaksi_perawatan`
--
ALTER TABLE `tbl_transaksi_perawatan`
  MODIFY `id_transaksi_perawatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user_cms`
--
ALTER TABLE `tbl_user_cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
