-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Des 2023 pada 11.11
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_modul5`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `built`
--

CREATE TABLE `built` (
  `built_id` int(11) NOT NULL,
  `date_out` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `built`
--

INSERT INTO `built` (`built_id`, `date_out`) VALUES
(1055, 141831);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `engine` varchar(55) NOT NULL,
  `transmission` varchar(55) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `built_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id_product`, `name`, `engine`, `transmission`, `sell_price`, `stock`, `built_id`, `type_id`) VALUES
(2, 'HR-V', '1.5', 'CVT', 400000000, 5, 1055, 15),
(3, 'CR-V', '1.5', 'CVT', 500000000, 7, 1055, 15),
(4, 'BR-V', '1.5', 'CVT', 200000000, 3, 1055, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `types`
--

CREATE TABLE `types` (
  `type_id` int(11) NOT NULL,
  `colour` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `types`
--

INSERT INTO `types` (`type_id`, `colour`) VALUES
(15, 'white');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `built`
--
ALTER TABLE `built`
  ADD PRIMARY KEY (`built_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
