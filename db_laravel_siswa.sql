-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06 Feb 2019 pada 06.02
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel_siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_01_30_153625_create_table_kelas', 1),
(2, '2019_01_31_132336_create_table_siswa', 2),
(3, '2019_02_01_012632_create_table_user', 3),
(4, '2019_02_01_025059_add_foto_table_siswa', 4),
(5, '2019_02_01_103813_create_table_user', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_kelas`
--

CREATE TABLE `table_kelas` (
  `id_kelas` int(10) UNSIGNED NOT NULL,
  `nama_kelas` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_kelas`
--

INSERT INTO `table_kelas` (`id_kelas`, `nama_kelas`, `jurusan`, `created_at`, `updated_at`) VALUES
(1, 'MPSI', 'Manajemen Proyek Sistem Informasi', NULL, '2019-01-31 05:03:14'),
(4, 'IPS', 'Ilmu Pengetahuan Sosial', '2019-01-31 03:17:18', '2019-01-31 03:17:18'),
(5, 'IPA', 'Ilmu Pengetahuan Alam', '2019-01-31 03:19:17', '2019-01-31 03:19:17'),
(6, 'KWU', 'Kewirausahaan', '2019-01-31 03:30:56', '2019-01-31 03:30:56'),
(9, 'E Commers', 'Manajemen Informatika', '2019-02-04 10:06:50', '2019-02-04 10:06:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_siswa`
--

CREATE TABLE `table_siswa` (
  `nis` int(11) NOT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_siswa`
--

INSERT INTO `table_siswa` (`nis`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `no_telp`, `id_kelas`, `created_at`, `updated_at`, `foto`) VALUES
(10916020, 'shobrun jamil', 'L', 'Sekeloa', '085230062523', 9, '2019-01-31 18:10:30', '2019-02-04 10:08:51', '10916020.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_user`
--

CREATE TABLE `table_user` (
  `id_login` int(10) UNSIGNED NOT NULL,
  `nama_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_user`
--

INSERT INTO `table_user` (`id_login`, `nama_user`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '$2y$10$UdL1waeY9R6T.cWMR.aF1uXCDDyZwsxP.6oBEK/mERnX8Ai04iXVq', 'LED9vEggC0P5DZuaEQWsYSYJ3DCmUFmZ7dA7dpLzT9pzeRHDlcV6BeCrnfja', '2019-02-01 03:50:06', '2019-02-01 03:50:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_kelas`
--
ALTER TABLE `table_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `table_siswa`
--
ALTER TABLE `table_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `table_kelas`
--
ALTER TABLE `table_kelas`
  MODIFY `id_kelas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `id_login` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
