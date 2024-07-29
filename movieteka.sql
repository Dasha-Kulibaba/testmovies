-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 29 2024 г., 16:28
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `movieteka`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Doug Ryan', NULL, '2024-07-29 10:17:32', '2024-07-29 10:17:32'),
(2, 'Freida Goodwin', NULL, '2024-07-29 10:17:32', '2024-07-29 10:17:32'),
(3, 'Friedrich Abbott', NULL, '2024-07-29 10:17:32', '2024-07-29 10:17:32'),
(4, 'Laron Lesch', NULL, '2024-07-29 10:17:32', '2024-07-29 10:17:32'),
(5, 'Dr. Marques Terry', NULL, '2024-07-29 10:17:32', '2024-07-29 10:17:32'),
(6, 'Breanne Shanahan', NULL, '2024-07-29 10:17:32', '2024-07-29 10:17:32'),
(7, 'Freeda Graham', NULL, '2024-07-29 10:17:32', '2024-07-29 10:17:32'),
(8, 'Korey Hettinger', NULL, '2024-07-29 10:17:32', '2024-07-29 10:17:32'),
(9, 'Frederick Murazik', NULL, '2024-07-29 10:17:32', '2024-07-29 10:17:32'),
(10, 'Urban Schamberger', NULL, '2024-07-29 10:17:32', '2024-07-29 10:17:32');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_28_200932_create_genres_table', 1),
(6, '2024_07_28_201008_create_movies_table', 1),
(7, '2024_07_28_201044_create_movie_genres_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `movies`
--

CREATE TABLE `movies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'storage/app/public/posters/default.jpg',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `movies`
--

INSERT INTO `movies` (`id`, `name`, `is_published`, `poster`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Veniam rerum omnis et.', 0, 'storage/app/public/posters\\76481ccc9620ed883981a52c3d27200d.png', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(2, 'Alias neque placeat at.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(3, 'Debitis autem eum quo.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(4, 'Отредактированое название', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:26:15'),
(5, 'Vitae sint est ut autem.', 0, 'storage/app/public/posters\\720986c44feb1fc4c5aa2844dd5ea056.png', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(6, 'Отредактировано', 0, 'storage/app/public/posters\\cb6e83a91992ce0f800fd833a2bc0f5c.png', NULL, '2024-07-29 10:23:53', '2024-07-29 10:27:23'),
(7, 'Quae provident qui ut.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(8, 'Sed omnis sunt nam.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(9, 'Odio a recusandae et.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(10, 'Ea sapiente ea at hic.', 0, 'storage/app/public/posters\\6b075e8a5b1e01a61980bf83fae7bbc7.png', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(11, 'Quo a iusto qui ea.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(12, 'Sit id unde animi odit.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(13, 'Qui quis magni qui et.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(14, 'Et ea eius est aut.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(15, 'Porro quasi sed aut.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(16, 'Quis ab dolorem libero.', 0, 'storage/app/public/posters\\8485f093f06a5e9a8e56b3c5edba1d5c.png', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(17, 'Cum aut modi modi.', 0, 'storage/app/public/posters\\49baa48a98cfa5c8cc3c0770c2288e68.png', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(18, 'Facere alias porro non.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(19, 'Ut quia et quas sunt.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(20, 'Aut non eius magnam.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(21, 'Ad rerum nam numquam.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(22, 'Culpa quasi earum nulla.', 0, 'storage/app/public/posters\\6ce728f44f7c6572c3da7c8cf2449a4a.png', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(23, 'Enim sunt nihil ut.', 0, 'storage/app/public/posters\\7827afb24d9de1263c802fa0ab6e3809.png', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(24, 'Ut tempore assumenda ut.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(25, 'Ex eum ipsa enim a.', 0, 'storage/app/public/posters\\9ebae987b18546e2530768b66eee08db.png', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(26, 'Non sunt quia omnis ut.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(27, 'Blanditiis eos vitae et.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(28, 'Quia eum ut ea quisquam.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(29, 'Sit cum error ex.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(30, 'Sit aspernatur sit aut.', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(31, 'Новый фильм', 0, 'storage/app/public/posters/1TTRfaYQgonNaobREEcjJELwhbpzx15sl9UtDnHn.jpg', NULL, '2024-07-29 10:25:17', '2024-07-29 10:25:17'),
(32, 'Новый фильм без постера', 0, 'storage/app/public/posters/default.jpg', NULL, '2024-07-29 10:25:39', '2024-07-29 10:25:39');

-- --------------------------------------------------------

--
-- Структура таблицы `movie_genres`
--

CREATE TABLE `movie_genres` (
  `id` bigint UNSIGNED NOT NULL,
  `movie_id` bigint UNSIGNED NOT NULL,
  `genre_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `movie_genres`
--

INSERT INTO `movie_genres` (`id`, `movie_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 7, 5, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(2, 17, 3, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(3, 7, 6, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(4, 12, 9, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(5, 6, 10, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(6, 24, 8, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(7, 5, 4, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(8, 23, 8, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(9, 11, 8, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(10, 18, 3, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(11, 11, 10, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(12, 27, 5, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(13, 22, 9, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(14, 1, 9, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(15, 8, 6, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(16, 8, 7, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(17, 10, 1, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(18, 8, 3, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(19, 23, 4, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(20, 12, 9, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(21, 8, 4, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(22, 3, 9, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(23, 2, 6, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(24, 21, 5, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(25, 22, 3, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(26, 5, 1, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(27, 29, 10, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(28, 4, 8, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(29, 29, 4, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(30, 8, 10, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(31, 28, 4, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(32, 3, 6, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(33, 3, 10, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(34, 21, 4, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(35, 8, 10, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(36, 9, 10, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(37, 6, 9, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(38, 1, 2, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(39, 22, 3, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(40, 19, 4, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(41, 29, 6, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(42, 6, 3, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(43, 18, 8, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(44, 12, 3, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(45, 29, 1, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(46, 3, 3, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(47, 23, 6, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(48, 7, 7, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(49, 22, 5, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(50, 8, 4, '2024-07-29 10:23:53', '2024-07-29 10:23:53'),
(51, 31, 2, NULL, NULL),
(52, 31, 7, NULL, NULL),
(53, 32, 2, NULL, NULL),
(54, 32, 6, NULL, NULL),
(55, 32, 7, NULL, NULL),
(56, 32, 9, NULL, NULL),
(57, 6, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_genre_idx` (`movie_id`),
  ADD KEY `genre_movie_idx` (`genre_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `movie_genres`
--
ALTER TABLE `movie_genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD CONSTRAINT `genre_movie_fk` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_genre_fk` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
