-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Agu 2021 pada 19.00
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-logapi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `trans_log_api`
--

CREATE TABLE `trans_log_api` (
  `id` int(11) NOT NULL,
  `url` varchar(250) DEFAULT NULL,
  `api_name` varchar(100) DEFAULT NULL,
  `endpoint` varchar(191) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `user` int(10) DEFAULT NULL,
  `request` text,
  `response` text,
  `api_response_id` int(10) DEFAULT NULL,
  `response_code` int(11) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `request_time` datetime DEFAULT NULL,
  `response_time` datetime DEFAULT NULL,
  `http_coderesponse` int(5) DEFAULT NULL,
  `http_msgresponse` varchar(100) DEFAULT NULL,
  `keterangan` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `updated_at`, `created_at`) VALUES
(26, 'Zein', 1, '2021-08-06 16:48:22', '2021-08-06 16:48:22'),
(27, 'Zein', 1, '2021-08-06 16:49:56', '2021-08-06 16:49:56'),
(28, 'Zein', 1, '2021-08-06 16:53:20', '2021-08-06 16:53:20'),
(29, 'Zein', 1, '2021-08-06 16:53:43', '2021-08-06 16:53:43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `trans_log_api`
--
ALTER TABLE `trans_log_api`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `trans_log_api`
--
ALTER TABLE `trans_log_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
