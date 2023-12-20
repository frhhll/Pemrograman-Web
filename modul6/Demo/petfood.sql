-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2023 pada 04.36
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
-- Database: `petfood`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', '6c88eba5c00d2e5e71f9a805f3ad71aae5fb9ccdf8442eb2cf1b66a08b7b3420', '[\"*\"]', NULL, NULL, '2023-12-19 19:24:25', '2023-12-19 19:24:25'),
(2, 'App\\Models\\User', 1, 'API TOKEN', 'd4b19c0d71aa681dae00114e0f321f257e25d78193fcd313cfcae19e8309db5e', '[\"*\"]', NULL, NULL, '2023-12-19 19:26:01', '2023-12-19 19:26:01'),
(3, 'App\\Models\\User', 2, 'API TOKEN', '849bf4fc9ff25a47ac9e6b42151139254f362517fcd62e57d0fa184eedf3cbd3', '[\"*\"]', NULL, NULL, '2023-12-19 19:28:47', '2023-12-19 19:28:47'),
(4, 'App\\Models\\User', 3, 'API TOKEN', 'd24bf3e80e997aa0bd230b35e6e336af3754da24451a765404de78390fb926df', '[\"*\"]', NULL, NULL, '2023-12-19 19:31:44', '2023-12-19 19:31:44'),
(5, 'App\\Models\\User', 3, 'API TOKEN', '99942a9880286c8e30a817ad7193b80f873e27abff9d0a1b026e17d5738de757', '[\"*\"]', NULL, NULL, '2023-12-19 19:33:17', '2023-12-19 19:33:17'),
(6, 'App\\Models\\User', 3, 'API TOKEN', 'dc41a430b2f64d0b538299b3202bb881087721a93b3cd5358fc3f7c3da78270c', '[\"*\"]', NULL, NULL, '2023-12-19 20:31:25', '2023-12-19 20:31:25'),
(7, 'App\\Models\\User', 4, 'API TOKEN', '91b21b404c5c6ae0f15b8e9be53af469fae1026749cd6f65e17ac41231b73b69', '[\"*\"]', NULL, NULL, '2023-12-19 20:34:13', '2023-12-19 20:34:13'),
(8, 'App\\Models\\User', 4, 'API TOKEN', '7747c3f314802ff221145a922da13d2b60e497f9bc07646156f7fa7b0637e45a', '[\"*\"]', NULL, NULL, '2023-12-19 20:34:27', '2023-12-19 20:34:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petfoods`
--

CREATE TABLE `petfoods` (
  `tittle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petfoods`
--

INSERT INTO `petfoods` (`tittle`, `price`, `stok`, `updated_at`, `created_at`, `id`) VALUES
('Royal Canin', 45000, 11, '2023-12-19 19:38:55', '2023-12-19 19:38:55', 7),
('Bolt', 20000, 6, '2023-12-19 19:41:31', '2023-12-19 19:39:48', 8),
('Whiskas', 27000, 8, '2023-12-19 19:40:13', '2023-12-19 19:40:13', 9),
('Friskies', 55000, 14, '2023-12-19 19:40:35', '2023-12-19 19:40:35', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'farhanhilal', 'farhanhilal@gmail.com', NULL, '$2y$12$gBQei/vwqQgY5kZ7YoqB1eGen.YR4Ie7zyLBs7P6hodJxnNfOTTEW', NULL, '2023-12-19 19:31:44', '2023-12-19 19:31:44'),
(4, 'alkindi', 'alkindi@gmail.com', NULL, '$2y$12$KobXbTENwRsC7L9l8KR68eSw8YEBF/w6AQ4dkCtQCV9lFk1PqzwMG', NULL, '2023-12-19 20:34:13', '2023-12-19 20:34:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `petfoods`
--
ALTER TABLE `petfoods`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `petfoods`
--
ALTER TABLE `petfoods`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
