-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Apr 2023 pada 13.48
-- Versi server: 10.9.2-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tugaslaravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `handphone`
--

CREATE TABLE `handphone` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `handphone`
--

INSERT INTO `handphone` (`id`, `nama`, `image`, `deskripsi`, `harga`) VALUES
(1, 'Redmi Note 10 Pro', 'post-image/u69vw6OJpnGmNMxDPbtIWyKPPkXAa0og4X1eHC0K.jpg', 'Ram 8/128', 3999000),
(2, 'Realme C21Y', 'post-image/4K7sl81eHbvBVEWWrqQLPvwZeLH7bLtxhxrBxsiP.jpg', 'Ram 4/64', 1599000),
(3, 'Realme C3', 'post-image/TznujQjqbJ2VChYZ1lNIrRxbGmxyrMDqt8fcEqYu.jpg', 'Ram 4/64', 1499000),
(5, 'Redmi 4a', 'post-image/IzKnrVrV4itKkP2YIkDbIv3JoBA3Ezc7FmpN5Ugd.jpg', 'Ram 2/16', 750000),
(11, 'Poco X3 Pro', 'post-image/UljoaNlzpG8fCHODA0GIROn6sXgqSTqyngaaEXxl.jpg', 'Ram 8/256', 3999000),
(12, 'Poco F3', 'post-image/xNdxVYCULNQzzmvlPYO4AEpK9KFpGeuOFt5iGHnr.jpg', 'Ram 8/256', 5499000),
(13, 'Samsung A32', 'post-image/ccDZ97incEQU6rWMvcrhcaLSvVQeQQIKo9MDyToi.jpg', 'Ram 8/128', 3150000),
(14, 'Realme 8 5G', 'post-image/xswpMWLHzCdTdwK2LK4TE9QhD1wXqeRZSoNuX6dl.jpg', 'Ram 8/128', 3269000),
(15, 'Realme C55', 'post-image/qnH8Q13HmUXn2cthnNwh10EO0onJuGiK1tJTEi3S.jpg', 'Ram 8/128', 2499000),
(16, 'Realme 10', 'post-image/S7Pb9b4rH86oqvtrg8ASMksOYpm8mnH4tvALs03I.jpg', 'Ram 8/128', 3200000),
(17, 'Iphone 6', 'post-image/ukXvAIajyZCwvXubIQ2hXjtBIMgGl8jhLHOMpQjP.jpg', '16 GB', 550000),
(18, 'Iphone 7', 'post-image/PNz58KSz5HaV32QHNuq5skzI39u5lQacERmEu1YT.jpg', '32 GB', 1750000),
(19, 'IPhone 8', 'post-image/eDLMEn3lEieUTuNFwrRqZhWpLE16Bk9AM7NXv0HZ.jpg', '64 GB', 1950000),
(20, 'iPhone X', 'post-image/VIORpBXGtbLOQlUwDQJCCrbW9WRqfh2njm7q3CLJ.jpg', '64 GB', 3950000),
(21, 'iPhone XR', 'post-image/sgpgKKehrWn3JO8NK4Lq5zm9nha8amsKOGkuEGnC.jpg', '64 GB', 3950000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(4, 'khoyrur', 'kurmaini@gmail.com', '$2y$10$LhvSyTe.phejN/98UyYhWe/axloNNFx80276r2jg6fb/spupfx05m', NULL, '2023-04-05 12:09:02', '2023-04-05 04:06:44', 1),
(7, 'Khoyrur Roykhan', 'tes@gmail.com', '$2y$10$ZHdwtEia1Y3KkQmWUvX9Y..0ueQyFb4tauyVhk.SCrApjzF7VShIS', NULL, '2023-04-06 10:26:59', '2023-04-06 10:26:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `handphone`
--
ALTER TABLE `handphone`
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
-- AUTO_INCREMENT untuk tabel `handphone`
--
ALTER TABLE `handphone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
