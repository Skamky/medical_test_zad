-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 15 2023 г., 22:03
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `medical`
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
-- Структура таблицы `medics`
--

CREATE TABLE `medics` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `medics`
--

INSERT INTO `medics` (`id`, `name`, `surname`, `patronymic`, `profession_id`, `created_at`, `updated_at`) VALUES
(1, 'Иван', 'Иванов', 'Иванович', 2, NULL, NULL),
(2, 'Петр', 'Петров', 'Петрович', 4, NULL, NULL),
(3, 'Сидор', 'Сидоров', 'Сидорович', 3, NULL, NULL),
(4, 'Екатерина', 'Кузнецова', 'Владимировна', 9, NULL, NULL),
(5, 'Александр', 'Успенский', 'Михайлович', 6, NULL, NULL),
(6, 'Наталья', 'Ковальчук', 'Александровна', 8, NULL, NULL),
(7, 'Артём', 'Морозов', 'Викторович', 1, NULL, NULL),
(8, 'Ольга', 'Смирнова', 'Алексеевна', 7, NULL, NULL),
(9, 'Максим', 'Григорьев', 'Сергеевич', 5, NULL, NULL),
(10, 'Елена', 'Козлова', 'Игоревна', 10, NULL, NULL),
(11, 'Ирина', 'Назарова', 'Павловна', 2, NULL, NULL),
(12, 'Дмитрий', 'Шишкин', 'Викторович', 4, NULL, NULL),
(13, 'Марина', 'Прокофьева', 'Владимировна', 3, NULL, NULL),
(14, 'Сергей', 'Максимов', 'Александрович', 9, NULL, NULL),
(15, 'Наталья', 'Федорова', 'Андреевна', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `medic_users`
--

CREATE TABLE `medic_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `medic_id` bigint UNSIGNED NOT NULL,
  `date` datetime NOT NULL COMMENT 'Дата Визита',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `medic_users`
--

INSERT INTO `medic_users` (`id`, `user_id`, `medic_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 8, '2023-06-15 15:30:00', '2023-06-15 14:23:25', '2023-06-15 14:23:25'),
(2, 2, 3, '2023-06-05 16:30:00', '2023-06-15 15:51:54', '2023-06-15 15:51:54');

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_06_13_130612_create_professions_table', 1),
(13, '2023_06_13_145024_create_medics_table', 1),
(14, '2023_06_13_151557_create_medic-_users_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
-- Структура таблицы `professions`
--

CREATE TABLE `professions` (
  `id` bigint UNSIGNED NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `professions`
--

INSERT INTO `professions` (`id`, `profession`, `created_at`, `updated_at`) VALUES
(1, 'Кардиолог', NULL, NULL),
(2, 'Невролог', NULL, NULL),
(3, 'Гастроэнтеролог', NULL, NULL),
(4, 'Онколог', NULL, NULL),
(5, 'Офтальмолог', NULL, NULL),
(6, 'Хирург', NULL, NULL),
(7, 'Терапевт', NULL, NULL),
(8, 'Педиатр', NULL, NULL),
(9, 'Дерматолог', NULL, NULL),
(10, 'Уролог', NULL, NULL);

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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Максим', 'test@mail.ru', NULL, '$2y$10$2YIZirSHPuYvclmzfKTIsu4h8nSAyDCDoW8Df8I4EWP9YkUT255aG', NULL, '2023-06-13 13:59:19', '2023-06-13 13:59:19'),
(2, 'User', 'user@mail.ru', NULL, '$2y$10$vqNld/CKhQmzczmniga51Oa/YFr90hdaQOhiQKOQorCJslmjFXCaa', NULL, '2023-06-15 03:37:40', '2023-06-15 03:37:40');

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
-- Индексы таблицы `medics`
--
ALTER TABLE `medics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medics_profession_id_foreign` (`profession_id`);

--
-- Индексы таблицы `medic_users`
--
ALTER TABLE `medic_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medic__users_user_id_foreign` (`user_id`),
  ADD KEY `medic__users_medic_id_foreign` (`medic_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблицы `medics`
--
ALTER TABLE `medics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `medic_users`
--
ALTER TABLE `medic_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `professions`
--
ALTER TABLE `professions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `medics`
--
ALTER TABLE `medics`
  ADD CONSTRAINT `medics_profession_id_foreign` FOREIGN KEY (`profession_id`) REFERENCES `professions` (`id`);

--
-- Ограничения внешнего ключа таблицы `medic_users`
--
ALTER TABLE `medic_users`
  ADD CONSTRAINT `medic__users_medic_id_foreign` FOREIGN KEY (`medic_id`) REFERENCES `medics` (`id`),
  ADD CONSTRAINT `medic__users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
