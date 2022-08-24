-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 05:20 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `al4sagia`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_tokens`
--

CREATE TABLE `access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `access_tokenable_id` int(11) DEFAULT NULL,
  `access_tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `actives`
--

CREATE TABLE `actives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) DEFAULT 1,
  `activeable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activeable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actives`
--

INSERT INTO `actives` (`id`, `active`, `activeable_type`, `activeable_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Models\\User', 1, '2022-02-12 14:47:17', '2022-02-12 14:47:17'),
(2, 1, 'App\\Models\\Trainer\\Trainer', 1, '2022-02-26 13:29:38', '2022-03-09 18:14:46'),
(3, 1, 'App\\Models\\Trainer\\Trainer', 2, '2022-02-26 13:31:41', '2022-02-26 13:31:41'),
(4, 1, 'App\\Models\\Course\\Course', 1, '2022-02-26 14:21:06', '2022-02-26 14:21:06'),
(5, 1, 'App\\Models\\Course\\Course', 1, '2022-02-26 14:21:42', '2022-02-26 14:21:42'),
(6, 1, 'App\\Models\\Event\\Event', 1, '2022-02-26 14:57:57', '2022-02-26 14:57:57'),
(7, 1, 'App\\Models\\Faq\\Faq', 1, '2022-02-27 15:22:16', '2022-02-27 15:22:16'),
(8, 1, 'App\\Models\\Partner', 1, '2022-02-27 16:05:09', '2022-02-27 16:05:09'),
(9, 1, 'App\\Models\\Testimonial', 1, '2022-02-27 16:19:17', '2022-02-27 16:19:17'),
(10, 1, 'App\\Models\\Work', 1, '2022-02-27 17:02:58', '2022-02-27 17:02:58'),
(11, 1, 'App\\Models\\Course\\Course', 2, '2022-03-01 16:15:10', '2022-03-01 16:15:10'),
(12, 1, 'App\\Models\\Event\\Event', 1, '2022-03-09 16:30:41', '2022-03-09 16:30:41'),
(13, 1, 'App\\Models\\Event\\Event', 2, '2022-03-09 16:30:58', '2022-03-09 16:30:58'),
(14, 1, 'App\\Models\\Trainer\\Trainer', 3, '2022-03-11 09:51:27', '2022-03-11 09:51:27'),
(15, 1, 'App\\Models\\Course\\Course', 3, '2022-03-13 16:11:06', '2022-03-13 16:11:06'),
(16, 1, 'App\\Models\\Course\\Course', 4, '2022-03-13 16:11:29', '2022-03-13 16:11:29'),
(17, 1, 'App\\Models\\Course\\Course', 5, '2022-03-13 16:11:48', '2022-03-13 16:11:48'),
(18, 0, 'App\\Models\\Comment', 1, '2022-03-14 17:01:36', '2022-03-18 09:16:13'),
(19, 0, 'App\\Models\\Comment', 4, '2022-03-14 17:05:18', '2022-03-14 17:05:18'),
(20, 0, 'App\\Models\\Comment', 7, '2022-03-14 17:09:25', '2022-03-14 17:09:25'),
(21, 0, 'App\\Models\\Comment', 8, '2022-03-14 17:09:40', '2022-03-14 17:09:40'),
(23, 0, 'App\\Models\\Comment', 10, '2022-03-14 17:13:12', '2022-03-14 17:13:12'),
(24, 1, 'App\\Models\\Comment', 1, '2022-03-18 09:08:12', '2022-03-18 09:08:12'),
(25, 1, 'App\\Models\\Comment', 1, '2022-03-18 09:08:17', '2022-03-18 09:08:17'),
(26, 1, 'App\\Models\\Comment', 1, '2022-03-18 09:08:56', '2022-03-18 09:08:56'),
(27, 1, 'App\\Models\\Comment', 1, '2022-03-18 09:09:19', '2022-03-18 09:09:19'),
(28, 1, 'App\\Models\\Comment', 1, '2022-03-18 09:12:55', '2022-03-18 09:12:55'),
(29, 1, 'App\\Models\\Comment', 2, '2022-03-18 09:16:18', '2022-03-18 09:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `governorate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `governorate`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Duncan', 'Webb', 'Red Sea', 'bedery@mailinator.com', '+1 (978) 211-2647', NULL, 'Pa$$w0rd!', NULL, '2022-03-03 16:54:41', '2022-03-03 16:54:41'),
(2, 'Dakota', 'Chapman', 'Monofia', 'mevywyno@mailinator.com', '+1 (483) 174-7788', NULL, 'Pa$$w0rd!', NULL, '2022-03-03 16:57:52', '2022-03-03 16:57:52'),
(3, 'Quincy', 'Jefferson', 'Assiut', 'maxowutuju@mailinator.com', '+1 (564) 641-9636', NULL, '$2y$10$gnir0mGu0q.GBD9pTcclTeACy.Uu.UIJBAneElAJNybP.Y9W/sY4i', NULL, '2022-03-03 17:03:11', '2022-03-03 17:03:11'),
(4, 'Aileen', 'Kelley', 'Damietta', 'gacogyhawo@mailinator.com', '+1 (204) 535-7803', NULL, '$2y$10$NcVZBH2pn.dsLyhaA/TmreFzNNOZwomQyAHgwwzsqUbU4ABGmNFpy', NULL, '2022-03-04 19:29:51', '2022-03-04 19:29:51'),
(5, 'Mohammad', 'Mayo', 'Red Sea', 'vadezowa@mailinator.com', '+1 (102) 434-3513', NULL, '$2y$10$X9uHxKZr3SAWY4pMnUmhUeT90/IveiU86kj.OH77gD1COagL4Z3eq', NULL, '2022-03-04 19:53:18', '2022-03-04 19:53:18'),
(6, 'Inga', 'French', 'Beheira', 'qiqocivy@mailinator.com', '+1 (162) 813-7278', NULL, '$2y$10$9OEsLjcu5OXX2mmjwuULU.d71sIiMgR0MFNx1Iz3X95eb40VnIEGy', NULL, '2022-03-05 18:39:32', '2022-03-05 18:39:32'),
(7, 'Mohamed', 'Eid', 'Beni Suef', 'test@test.com', '01275262482', NULL, '$2y$10$pKsVbMymuTDzUpTjGM9yeexRT8OPql2HhSJ.r/dcbpwm3Rpja7lIa', NULL, '2022-03-06 16:02:52', '2022-03-06 16:02:52'),
(8, 'Clark', 'Boyeraa', 'Cairo', 'cowi@mailinator.com', '+1 (497) 873-3812', NULL, 'Pa$$w0rd!', NULL, '2022-03-06 17:22:29', '2022-03-06 17:25:31'),
(9, 'Tate', 'Valdez', 'Port Said', 'boragys@mailinator.com', '+1 (604) 882-4369', NULL, '$2y$10$9JT8miVa4hTMKa0BnPgVEupRJHNsKyPqNPdV36O.npatepa5D52hS', NULL, '2022-03-11 09:37:56', '2022-03-11 09:37:56'),
(10, 'Geoffrey', 'Norris', 'Aswan', 'xovovu@mailinator.com', '+1 (972) 522-3276', NULL, '$2y$10$wRq/697/i8aeqZ5qeMQ3TOV5UF85rPs20MjbkFGXOPo9uwYzjlQcy', NULL, '2022-03-14 17:00:51', '2022-03-14 17:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codeable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `client_id`, `course_id`, `comment`, `image_path`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 10, 3, 'This is a comment', NULL, NULL, NULL, '2022-03-14 17:01:36', '2022-03-14 17:01:36'),
(2, 10, 3, 'Nisi proident tenet', NULL, NULL, NULL, '2022-03-14 17:04:43', '2022-03-14 17:04:43'),
(3, 10, 3, 'Nisi proident tenet', NULL, NULL, NULL, '2022-03-14 17:05:06', '2022-03-14 17:05:06'),
(4, 10, 3, 'Nisi proident tenet', NULL, NULL, NULL, '2022-03-14 17:05:18', '2022-03-14 17:05:18'),
(5, 10, 3, 'Quia repellendus Au Quia repellendus AuQuia repellendus AuQuia repellendus AuQuia repellendus AuQuia repellendus Au', NULL, NULL, NULL, '2022-03-14 17:06:10', '2022-03-14 17:06:10'),
(6, 10, 3, 'Quia repellendus Au Quia repellendus AuQuia repellendus AuQuia repellendus AuQuia repellendus AuQuia repellendus Au', NULL, NULL, NULL, '2022-03-14 17:06:29', '2022-03-14 17:06:29'),
(7, 10, 3, 'Quia repellendus Au Quia repellendus AuQuia repellendus AuQuia repellendus AuQuia repellendus AuQuia repellendus Au', NULL, NULL, NULL, '2022-03-14 17:09:25', '2022-03-14 17:09:25'),
(8, 10, 3, 'Quia repellendus Au Quia repellendus AuQuia repellendus AuQuia repellendus AuQuia repellendus AuQuia repellendus Au', NULL, NULL, NULL, '2022-03-14 17:09:40', '2022-03-14 17:09:40'),
(10, 10, 3, 'asdasdasdasdasdasdasdasd', NULL, NULL, NULL, '2022-03-14 17:13:12', '2022-03-14 17:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Nomlanga Henry', 'lada@mailinator.com', 'Ad est reprehenderi', 'Odit exercitation al', '2022-03-09 16:52:14', '2022-03-09 16:52:14');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` bigint(20) UNSIGNED NOT NULL,
  `price` double DEFAULT 0,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `trainer_id`, `price`, `level`, `schedule`, `image`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 200, 'Advanced', 'Ut blanditiis ut occ', 'YVzSpxbJbQiW2Ecoo4xy1DyQQTREwAaHBL0FFuBu.jpg', '2', '2022-02-26 14:21:42', '2022-02-26 14:40:31'),
(2, 1, 654, 'Entry', 'Sed perferendis cons', 'SUsIhYPscHX3NHZOL9Pzchmy1lLfzM0oic7MlXsK.gif', '1', '2022-03-01 16:15:10', '2022-03-01 16:15:10'),
(3, 1, 565, 'Entry', 'Perferendis quod exc', 'r85jQOXoDjoc8cWaYWckrI0sgsWUsi8RCF1DZFWu.png', '3', '2022-03-13 16:11:06', '2022-03-13 16:11:06'),
(4, 1, 16, 'Entry', 'Minim velit ipsam ad', 'CPxEBS7OG2pT0WyQnGAG17dIofJLximYozRBQPaz.png', '1', '2022-03-13 16:11:29', '2022-03-13 16:11:29'),
(5, 1, 720, 'Entry', 'Consequuntur maxime', 'AFU9glqqCn2lMEbq6Bup1zkFgumHMK9dqYuAJq4J.png', '3', '2022-03-13 16:11:48', '2022-03-13 16:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `course_translations`
--

CREATE TABLE `course_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `benefits` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_translations`
--

INSERT INTO `course_translations` (`id`, `name`, `description`, `benefits`, `locale`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'Madeline Ashley', 'Repellendus Ut cons', 'Aliqua Ex non qui c', 'en', 1, '2022-02-26 14:21:42', '2022-02-26 14:21:42'),
(2, 'Quentin Mayo', 'Dolore commodi qui e', 'Alias facere aut ut', 'ar', 1, '2022-02-26 14:21:42', '2022-02-26 14:21:42'),
(3, 'Walter Vaughn', 'Aut molestiae dolor', 'Illum quaerat culpa', 'en', 2, '2022-03-01 16:15:10', '2022-03-01 16:15:10'),
(4, 'Patrick Gould', 'Corporis tempore pl', 'Id deserunt minima c', 'ar', 2, '2022-03-01 16:15:10', '2022-03-01 16:15:10'),
(5, 'Maxwell Diaz', 'Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non Dolor accusamus non', 'Magni repudiandae ne', 'en', 3, '2022-03-13 16:11:06', '2022-03-13 16:47:31'),
(6, 'Risa Turner', 'Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n  Incididunt commodo n', 'Non aut vero volupta', 'ar', 3, '2022-03-13 16:11:06', '2022-03-13 16:47:31'),
(7, 'Jelani Bailey', 'Omnis sapiente error', 'Nemo alias voluptate', 'en', 4, '2022-03-13 16:11:29', '2022-03-13 16:11:29'),
(8, 'Macey Hughes', 'Error quas sed volup', 'Recusandae Laborum', 'ar', 4, '2022-03-13 16:11:29', '2022-03-13 16:11:29'),
(9, 'Sybil Gentry', 'Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo Non iusto fugiat mo', 'Esse facere sapient', 'en', 5, '2022-03-13 16:11:48', '2022-03-13 16:47:49'),
(10, 'Ingrid Beasley', 'Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis Est reiciendis quis', 'Quam perferendis dol', 'ar', 5, '2022-03-13 16:11:48', '2022-03-13 16:47:49');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `price` double DEFAULT 0,
  `experience` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `client_id`, `course_id`, `status`, `price`, `experience`, `full_name`, `whatsapp`, `email`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 3, 0, 'aaa', 'Inga French', '+1 (162) 813-7278', 'qiqocivy@mailinator.com', '2022-03-05 19:10:16', '2022-03-06 16:59:56'),
(2, 7, 2, 1, 0, NULL, 'Mohamed Eid', '01275262482', 'test@test.com', '2022-03-06 16:03:16', '2022-03-06 16:03:16'),
(3, 9, 2, 1, 0, 'Enim voluptates elig', 'Alea Chase', '+1 (403) 548-5934', 'maqypoqaf@mailinator.com', '2022-03-11 09:38:47', '2022-03-11 09:38:47'),
(4, 9, 2, 1, 0, NULL, 'Tate Valdez', '+1 (604) 882-4369', 'boragys@mailinator.com', '2022-03-11 09:43:02', '2022-03-11 09:43:02'),
(5, 9, 2, 1, 0, NULL, 'Tate Valdez', '+1 (604) 882-4369', 'boragys@mailinator.com', '2022-03-11 09:44:08', '2022-03-11 09:44:08'),
(6, 9, 2, 1, 0, NULL, 'Tate Valdez', '+1 (604) 882-4369', 'boragys@mailinator.com', '2022-03-11 09:45:38', '2022-03-11 09:45:38'),
(7, 9, 2, 1, 0, NULL, 'Tate Valdez', '+1 (604) 882-4369', 'boragys@mailinator.com', '2022-03-11 09:46:25', '2022-03-11 09:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schedule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `schedule`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Quibusdam alias pari', 'MBbE467gwSmMy9pnZifEjU4WJzYdwAQARXjQFK2S.gif', '2022-03-09 16:30:41', '2022-03-09 16:30:41'),
(2, 'Mollit autem veritat', 'xMZBuWl304oEdX7auksnO0LLcBgIyC6WxsuiGL28.gif', '2022-03-09 16:30:58', '2022-03-09 16:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `event_translations`
--

CREATE TABLE `event_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_translations`
--

INSERT INTO `event_translations` (`id`, `name`, `description`, `locale`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 'Odysseus Glenn', 'Qui fugiat est qui', 'en', 1, '2022-03-09 16:30:41', '2022-03-09 16:30:41'),
(2, 'Tamara Adkins', 'Et in nihil assumend', 'ar', 1, '2022-03-09 16:30:41', '2022-03-09 16:30:41'),
(3, 'Leroy Middleton', 'Eos eligendi odio co', 'en', 2, '2022-03-09 16:30:58', '2022-03-09 16:30:58'),
(4, 'Garrison Russo', 'Libero laboris liber', 'ar', 2, '2022-03-09 16:30:58', '2022-03-09 16:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `created_at`, `updated_at`) VALUES
(1, '2022-02-27 15:22:16', '2022-02-27 15:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `faq_translations`
--

CREATE TABLE `faq_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_translations`
--

INSERT INTO `faq_translations` (`id`, `question`, `answer`, `locale`, `faq_id`, `created_at`, `updated_at`) VALUES
(1, 'Quo consequatur Velaaaaaaaaaaa', 'Asperiores optio pr', 'en', 1, '2022-02-27 15:22:16', '2022-02-27 15:22:31'),
(2, 'Aperiam assumenda quaaaaaaaaaaaaaaaaaaaaaa', 'Est error earum simiشششششششششش', 'ar', 1, '2022-02-27 15:22:16', '2022-02-27 15:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_07_12_092532_laratrust_setup_tables', 1),
(6, '2021_08_18_092910_create_codes_table', 1),
(7, '2021_08_18_093554_create_access_tokens_table', 1),
(8, '2021_09_05_084831_create_notifications_table', 1),
(9, '2021_10_26_110622_create_jobs_table', 1),
(10, '2021_10_28_084142_create_settings_table', 1),
(11, '2021_10_28_084253_create_setting_translations_table', 1),
(12, '2021_12_16_172318_create_actives_table', 1),
(15, '2022_02_12_172218_create_trainers_table', 2),
(16, '2022_02_12_172231_create_trainer_translations_table', 2),
(19, '2022_02_26_155103_create_courses_table', 3),
(20, '2022_02_26_155224_create_course_translations_table', 3),
(26, '2022_02_26_164456_create_events_table', 4),
(27, '2022_02_26_164516_create_event_translations_table', 4),
(28, '2022_02_27_170808_create_faqs_table', 4),
(29, '2022_02_27_170950_create_faq_translations_table', 4),
(30, '2022_02_27_175525_create_partners_table', 5),
(31, '2022_02_27_181030_create_testimonials_table', 6),
(32, '2022_02_27_185209_create_works_table', 7),
(33, '2022_03_01_191055_create_clients_table', 8),
(35, '2022_03_04_220423_create_enrolls_table', 9),
(36, '2022_03_09_184150_create_contacts_table', 10),
(37, '2022_03_11_110228_add_fcm_token_to_users_table', 11),
(38, '2022_03_13_190238_create_comments_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `offer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `offer_id`, `created_at`, `updated_at`) VALUES
('0021c85e-5180-4efb-85b0-ab50ee1699a7', 'App\\Notifications\\Admin\\NewEnroll', 'App\\Models\\User', 1, '{\"enroll\":{\"full_name\":\"Mohamed Eid\",\"email\":\"test@test.com\",\"whatsapp\":\"01275262482\",\"experience\":null,\"course_id\":2,\"client_id\":7,\"updated_at\":\"2022-03-06T18:03:16.000000Z\",\"created_at\":\"2022-03-06T18:03:16.000000Z\",\"id\":2}}', NULL, NULL, '2022-03-06 16:03:17', '2022-03-06 16:03:17'),
('060a8a25-4db3-4854-874b-6d7a303a7ccd', 'App\\Notifications\\Admin\\NewEnroll', 'App\\Models\\User', 1, '{\"enroll\":{\"full_name\":\"Tate Valdez\",\"email\":\"boragys@mailinator.com\",\"whatsapp\":\"+1 (604) 882-4369\",\"experience\":null,\"course_id\":2,\"client_id\":9,\"updated_at\":\"2022-03-11T11:44:08.000000Z\",\"created_at\":\"2022-03-11T11:44:08.000000Z\",\"id\":5}}', NULL, NULL, '2022-03-11 09:44:08', '2022-03-11 09:44:08'),
('0fd70a66-f952-476c-8abf-29608e5dec9b', 'App\\Notifications\\Admin\\NewEnroll', 'App\\Models\\User', 1, '{\"enroll\":{\"full_name\":\"Alea Chase\",\"email\":\"maqypoqaf@mailinator.com\",\"whatsapp\":\"+1 (403) 548-5934\",\"experience\":\"Enim voluptates elig\",\"course_id\":2,\"client_id\":9,\"updated_at\":\"2022-03-11T11:38:47.000000Z\",\"created_at\":\"2022-03-11T11:38:47.000000Z\",\"id\":3}}', NULL, NULL, '2022-03-11 09:38:48', '2022-03-11 09:38:48'),
('2a671d12-02a3-43c3-ba62-9727d7af777b', 'App\\Notifications\\NewComment', 'App\\Models\\User', 1, '{\"comment\":{\"comment\":\"Quia repellendus Au Quia repellendus AuQuia repellendus AuQuia repellendus AuQuia repellendus AuQuia repellendus Au\",\"client_id\":10,\"course_id\":3,\"updated_at\":\"2022-03-14T19:09:40.000000Z\",\"created_at\":\"2022-03-14T19:09:40.000000Z\",\"id\":8}}', NULL, NULL, '2022-03-14 17:09:40', '2022-03-14 17:09:40'),
('61a41df9-db44-4bea-8150-c315f0eb820f', 'App\\Notifications\\Admin\\NewEnroll', 'App\\Models\\User', 1, '{\"enroll\":{\"full_name\":\"Tate Valdez\",\"email\":\"boragys@mailinator.com\",\"whatsapp\":\"+1 (604) 882-4369\",\"experience\":null,\"course_id\":2,\"client_id\":9,\"updated_at\":\"2022-03-11T11:46:25.000000Z\",\"created_at\":\"2022-03-11T11:46:25.000000Z\",\"id\":7}}', NULL, NULL, '2022-03-11 09:46:25', '2022-03-11 09:46:25'),
('ac2fae90-74ce-44b9-8671-aa98d5fe5bcc', 'App\\Notifications\\Admin\\NewEnroll', 'App\\Models\\User', 1, '{\"enroll\":{\"full_name\":\"Tate Valdez\",\"email\":\"boragys@mailinator.com\",\"whatsapp\":\"+1 (604) 882-4369\",\"experience\":null,\"course_id\":2,\"client_id\":9,\"updated_at\":\"2022-03-11T11:43:02.000000Z\",\"created_at\":\"2022-03-11T11:43:02.000000Z\",\"id\":4}}', NULL, NULL, '2022-03-11 09:43:03', '2022-03-11 09:43:03'),
('c9d2ee03-c2c5-4fe2-b8b4-b986df48d4bc', 'App\\Notifications\\NewComment', 'App\\Models\\User', 1, '{\"comment\":{\"comment\":\"asdasdasdasdasdasdasdasd\",\"client_id\":10,\"course_id\":3,\"updated_at\":\"2022-03-14T19:13:12.000000Z\",\"created_at\":\"2022-03-14T19:13:12.000000Z\",\"id\":10}}', NULL, NULL, '2022-03-14 17:13:12', '2022-03-14 17:13:12'),
('da983668-02ad-4556-978e-088de4793fcf', 'App\\Notifications\\Admin\\NewEnroll', 'App\\Models\\User', 1, '{\"enroll\":{\"full_name\":\"Tate Valdez\",\"email\":\"boragys@mailinator.com\",\"whatsapp\":\"+1 (604) 882-4369\",\"experience\":null,\"course_id\":2,\"client_id\":9,\"updated_at\":\"2022-03-11T11:45:38.000000Z\",\"created_at\":\"2022-03-11T11:45:38.000000Z\",\"id\":6}}', NULL, NULL, '2022-03-11 09:45:38', '2022-03-11 09:45:38'),
('f639955e-401b-40e8-96c9-5bd8953e2dda', 'App\\Notifications\\NewComment', 'App\\Models\\User', 1, '{\"comment\":{\"comment\":\"Ex consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspeEx consequatur aspe Ex consequatur aspeEx consequatur aspe\",\"client_id\":10,\"course_id\":3,\"updated_at\":\"2022-03-14T19:10:03.000000Z\",\"created_at\":\"2022-03-14T19:10:03.000000Z\",\"id\":9}}', NULL, NULL, '2022-03-14 17:10:03', '2022-03-14 17:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, '1YpL2nB3UTIKLl6eyM7uc8dIVA12eKIOmAUdcMO1.png', 'Irene Hollandaa', 'Tempor quis et minusaa', '2022-02-27 16:05:09', '2022-02-27 16:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(60, 'create_roles', 'إضافة أدوار', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(61, 'read_roles', 'قراءة أدوار', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(62, 'update_roles', 'تعديل أدوار', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(63, 'delete_roles', 'حذف أدوار', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(64, 'create_users', 'إضافة مديرين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(65, 'read_users', 'قراءة مديرين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(66, 'delete_users', 'حذف مديرين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(67, 'update_users', 'تعديل مديرين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(68, 'activate_users', 'تعطيل وتفعيل مديرين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(69, 'create_clients', 'إضافة مستخدمين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(70, 'read_clients', 'قراءة مستخدمين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(71, 'delete_clients', 'حذف مستخدمين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(72, 'update_clients', 'تعديل مستخدمين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(73, 'activate_clients', 'تعطيل وتفعيل مستخدمين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(74, 'create_courses', 'إضافة كورسات', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(75, 'read_courses', 'قراءة كورسات', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(76, 'delete_courses', 'حذف كورسات', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(77, 'update_courses', 'تعديل كورسات', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(78, 'activate_courses', 'تعطيل وتفعيل كورسات', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(79, 'create_faqs', 'إضافة الأسئله الشائعه', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(80, 'read_faqs', 'قراءة الأسئله الشائعه', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(81, 'delete_faqs', 'حذف الأسئله الشائعه', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(82, 'update_faqs', 'تعديل الأسئله الشائعه', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(83, 'activate_faqs', 'تعطيل وتفعيل الأسئله الشائعه', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(84, 'create_partners', 'إضافة الشركاء', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(85, 'read_partners', 'قراءة الشركاء', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(86, 'delete_partners', 'حذف الشركاء', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(87, 'update_partners', 'تعديل الشركاء', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(88, 'activate_partners', 'تعطيل وتفعيل الشركاء', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(89, 'create_testimonials', 'إضافة اراء العملاء', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(90, 'read_testimonials', 'قراءة اراء العملاء', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(91, 'delete_testimonials', 'حذف اراء العملاء', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(92, 'update_testimonials', 'تعديل اراء العملاء', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(93, 'activate_testimonials', 'تعطيل وتفعيل اراء العملاء', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(94, 'create_trainers', 'إضافة المدربين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(95, 'read_trainers', 'قراءة المدربين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(96, 'delete_trainers', 'حذف المدربين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(97, 'update_trainers', 'تعديل المدربين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(98, 'activate_trainers', 'تعطيل وتفعيل المدربين', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(99, 'create_works', 'إضافة الاعمال السابقه', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(100, 'read_works', 'قراءة الاعمال السابقه', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(101, 'delete_works', 'حذف الاعمال السابقه', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(102, 'update_works', 'تعديل الاعمال السابقه', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(103, 'activate_works', 'تعطيل وتفعيل الاعمال السابقه', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(104, 'read_settings', 'قراءة الإعدادات', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(105, 'update_settings', 'تعديل الإعدادات', '', '2022-03-09 18:14:22', '2022-03-09 18:14:22'),
(106, 'read_enrolls', 'قراءة طلبات الإشتراكات', '', '2022-03-09 18:28:03', '2022-03-09 18:28:03'),
(107, 'update_enrolls', 'تعديل طلبات الإشتراكات', '', '2022-03-09 18:28:03', '2022-03-09 18:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(74, 3),
(75, 2),
(75, 3),
(76, 2),
(76, 3),
(77, 2),
(77, 3),
(78, 2),
(78, 3),
(79, 2),
(79, 3),
(80, 2),
(80, 3),
(81, 2),
(81, 3),
(82, 2),
(82, 3),
(83, 2),
(83, 3),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(89, 3),
(90, 2),
(90, 3),
(91, 2),
(91, 3),
(92, 2),
(92, 3),
(93, 2),
(93, 3),
(94, 2),
(94, 3),
(95, 2),
(95, 3),
(96, 2),
(96, 3),
(97, 2),
(97, 3),
(98, 2),
(98, 3),
(99, 2),
(99, 3),
(100, 2),
(100, 3),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`permission_id`, `user_id`, `user_type`) VALUES
(60, 1, 'App\\Models\\User'),
(61, 1, 'App\\Models\\User'),
(62, 1, 'App\\Models\\User'),
(63, 1, 'App\\Models\\User'),
(64, 1, 'App\\Models\\User'),
(65, 1, 'App\\Models\\User'),
(66, 1, 'App\\Models\\User'),
(67, 1, 'App\\Models\\User'),
(68, 1, 'App\\Models\\User'),
(69, 1, 'App\\Models\\User'),
(70, 1, 'App\\Models\\User'),
(71, 1, 'App\\Models\\User'),
(72, 1, 'App\\Models\\User'),
(73, 1, 'App\\Models\\User'),
(74, 1, 'App\\Models\\User'),
(75, 1, 'App\\Models\\User'),
(76, 1, 'App\\Models\\User'),
(77, 1, 'App\\Models\\User'),
(78, 1, 'App\\Models\\User'),
(79, 1, 'App\\Models\\User'),
(80, 1, 'App\\Models\\User'),
(81, 1, 'App\\Models\\User'),
(82, 1, 'App\\Models\\User'),
(83, 1, 'App\\Models\\User'),
(84, 1, 'App\\Models\\User'),
(85, 1, 'App\\Models\\User'),
(86, 1, 'App\\Models\\User'),
(87, 1, 'App\\Models\\User'),
(88, 1, 'App\\Models\\User'),
(89, 1, 'App\\Models\\User'),
(90, 1, 'App\\Models\\User'),
(91, 1, 'App\\Models\\User'),
(92, 1, 'App\\Models\\User'),
(93, 1, 'App\\Models\\User'),
(94, 1, 'App\\Models\\User'),
(95, 1, 'App\\Models\\User'),
(96, 1, 'App\\Models\\User'),
(97, 1, 'App\\Models\\User'),
(98, 1, 'App\\Models\\User'),
(99, 1, 'App\\Models\\User'),
(100, 1, 'App\\Models\\User'),
(101, 1, 'App\\Models\\User'),
(102, 1, 'App\\Models\\User'),
(103, 1, 'App\\Models\\User'),
(104, 1, 'App\\Models\\User'),
(105, 1, 'App\\Models\\User'),
(106, 1, 'App\\Models\\User'),
(107, 1, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Super_Admin', 'Super Admin', '', '2022-03-09 18:14:22', '2022-03-09 18:28:23'),
(3, 'Content_creator', 'Content creator', '', '2022-03-11 09:55:48', '2022-03-11 09:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(2, 1, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `one_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `class`, `one_value`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'social', 'https://www.facebook.com/Al4SAGIA', 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:56:29'),
(2, 'linkedIn', 'social', 'https://www.linkedin.com/company/%D8%A7%D9%84%D9%81%D8%B1%D8%B5%D8%AC%D9%8A%D8%A9-al4sagia', 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:56:29'),
(3, 'instagram', 'social', 'https://instagram.com/al4sagia', 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:56:29'),
(4, 'twitter', 'social', 'https://twitter.com/Al4Sagia', 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:56:29'),
(5, 'logo', 'general', NULL, 'image', NULL, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(6, 'footer-text', 'footer', NULL, 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(7, 'site-title', 'navbar', NULL, 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(8, 'email', 'general', 'AL4SAGIA@gmail.com', 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:39:47'),
(9, 'phone1', 'general', '+2 1156322356', 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:39:47'),
(10, 'phone2', 'general', '+2 1272568991', 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:39:47'),
(11, 'address', 'general', 'Aswan', 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:39:47'),
(12, 'happyClients', 'general', '365', 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:24:02'),
(13, 'applications', 'general', '200', 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:24:02'),
(14, 'hoursOfTraining', 'general', '30000', 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:24:02'),
(15, 'partners', 'general', '65', 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:24:02'),
(16, 'whoWeAre1', 'general', NULL, 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(17, 'whoWeAre2', 'general', NULL, 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(18, 'internships', 'general', NULL, 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(19, 'careerGuide', 'general', NULL, 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(20, 'consultingServices', 'general', NULL, 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(21, 'courses', 'general', NULL, 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(22, 'workshops', 'general', NULL, 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(23, 'events', 'general', NULL, 'text', NULL, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(25, 'whatsapp', 'general', '01015960452', 'text', NULL, '2022-03-09 17:58:22', '2022-03-09 17:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `value`, `locale`, `setting_id`, `created_at`, `updated_at`) VALUES
(1, '', 'ar', 1, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(2, '', 'en', 1, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(3, '', 'ar', 2, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(4, '', 'en', 2, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(5, '', 'ar', 3, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(6, '', 'en', 3, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(7, '', 'ar', 4, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(8, '', 'en', 4, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(9, '', 'ar', 5, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(10, '', 'en', 5, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(11, 'AL4SAGIA is a career consulting platform for Upper Egypt Youth, providing professional programs in Career\r\n            and Personal Development to connect them with Startups to get internships.', 'ar', 6, '2022-03-09 17:15:32', '2022-03-09 17:49:49'),
(12, 'AL4SAGIA is a career consulting platform for Upper Egypt Youth, providing professional programs in Career\r\n            and Personal Development to connect them with Startups to get internships.', 'en', 6, '2022-03-09 17:15:32', '2022-03-09 17:49:49'),
(13, 'Qui molestias nostru', 'ar', 7, '2022-03-09 17:15:32', '2022-03-09 17:20:23'),
(14, 'Et qui aut excepteur', 'en', 7, '2022-03-09 17:15:32', '2022-03-09 17:20:23'),
(15, '', 'ar', 8, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(16, '', 'en', 8, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(17, '', 'ar', 9, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(18, '', 'en', 9, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(19, '', 'ar', 10, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(20, '', 'en', 10, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(21, '', 'ar', 11, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(22, '', 'en', 11, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(23, '', 'ar', 12, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(24, '', 'en', 12, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(25, '', 'ar', 13, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(26, '', 'en', 13, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(27, '', 'ar', 14, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(28, '', 'en', 14, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(29, '', 'ar', 15, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(30, '', 'en', 15, '2022-03-09 17:15:32', '2022-03-09 17:15:32'),
(31, 'AL4SAGIA is a career consulting platform for Upper Egypt Youth, providing professional programs in Career and Personal Development to connect them with Startups to get internships.', 'ar', 16, '2022-03-09 17:15:32', '2022-03-09 17:48:43'),
(32, 'AL4SAGIA is a career consulting platform for Upper Egypt Youth, providing professional programs in Career and Personal Development to connect them with Startups to get internships.', 'en', 16, '2022-03-09 17:15:32', '2022-03-09 17:48:43'),
(33, 'Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ar', 17, '2022-03-09 17:15:32', '2022-03-09 17:48:43'),
(34, 'Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'en', 17, '2022-03-09 17:15:32', '2022-03-09 17:48:43'),
(35, 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'ar', 18, '2022-03-09 17:15:32', '2022-03-09 17:44:45'),
(36, 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'en', 18, '2022-03-09 17:15:32', '2022-03-09 17:44:45'),
(37, 'Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata', 'ar', 19, '2022-03-09 17:15:32', '2022-03-09 17:44:45'),
(38, 'Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata', 'en', 19, '2022-03-09 17:15:32', '2022-03-09 17:44:45'),
(39, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur', 'ar', 20, '2022-03-09 17:15:32', '2022-03-09 17:44:45'),
(40, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur', 'en', 20, '2022-03-09 17:15:32', '2022-03-09 17:44:45'),
(41, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'ar', 21, '2022-03-09 17:15:32', '2022-03-09 17:44:45'),
(42, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'en', 21, '2022-03-09 17:15:32', '2022-03-09 17:44:45'),
(43, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque', 'ar', 22, '2022-03-09 17:15:32', '2022-03-09 17:44:45'),
(44, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque', 'en', 22, '2022-03-09 17:15:32', '2022-03-09 17:44:45'),
(45, 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi', 'ar', 23, '2022-03-09 17:15:32', '2022-03-09 17:44:45'),
(46, 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi', 'en', 23, '2022-03-09 17:15:32', '2022-03-09 17:44:45'),
(49, '', 'ar', 25, '2022-03-09 17:58:22', '2022-03-09 17:58:22'),
(50, '', 'en', 25, '2022-03-09 17:58:22', '2022-03-09 17:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `body`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fagtYzaCpZsyu8qZGH5S6hnFrkCRzjxpc6gMetqZ.png', 'Facere accusamus minaa', 'Isabelle Garneraaa', '2022-02-27 16:19:17', '2022-02-27 16:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `image`, `facebook`, `twitter`, `instagram`, `linkedIn`, `team`, `created_at`, `updated_at`) VALUES
(1, 'f59BZORqx9MjN5meKyTMmyyHrh5alt5day3wQ3rX.png', 'Provident et tempor', 'Inventore lorem ut n', 'Explicabo Nihil cum', 'Sit nulla voluptate', 0, '2022-02-26 13:29:38', '2022-02-26 13:29:38'),
(2, 'jpyZWzFJYJvd5XPnlH8935QKOkFTEJ9CUgu8S6wi.png', 'Molestias rerum cons', 'Soluta debitis recus', 'Temporibus atque rec', 'Laudantium incidunt', 1, '2022-02-26 13:31:41', '2022-02-26 13:31:41'),
(3, 'Xn1JQ9r1YTYNWrwadR1uitqeFwUrQRiI8Mu8cdXV.png', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 0, '2022-03-11 09:51:27', '2022-03-11 09:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `trainer_translations`
--

CREATE TABLE `trainer_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trainer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainer_translations`
--

INSERT INTO `trainer_translations` (`id`, `name`, `job`, `bio`, `locale`, `trainer_id`, `created_at`, `updated_at`) VALUES
(1, 'Colin Keller', 'Similique sunt aliqu', 'Voluptatem cum est l', 'en', 1, '2022-02-26 13:29:38', '2022-02-26 13:29:38'),
(2, 'Xena Conner', 'Dolor exercitationem', 'Sed velit proident', 'ar', 1, '2022-02-26 13:29:38', '2022-02-26 13:29:38'),
(3, 'Calvin Fisher', 'Maxime aliquip atque', 'Vel dolorem autem vo', 'en', 2, '2022-02-26 13:31:41', '2022-02-26 13:31:41'),
(4, 'Paloma Leach', 'Sed quia nihil cumqu', 'Eos dolor irure off', 'ar', 2, '2022-02-26 13:31:41', '2022-02-26 13:31:41'),
(5, 'Ebony Roberson', 'Quis ut commodo eu o', 'Ratione nihil aspern', 'en', 3, '2022-03-11 09:51:27', '2022-03-11 09:51:27'),
(6, 'Hedy Jacobs', 'Non non reprehenderi', 'Itaque sit eligendi', 'ar', 3, '2022-03-11 09:51:27', '2022-03-11 09:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `fcm_token`) VALUES
(1, 'admin', 'test@test.com', NULL, '$2y$10$Wdwj/0O0bK1f5duMmqXDk.9uPKu8DRYN.CaDOEyHbIXbFP9REDeJ2', NULL, '2022-02-12 14:47:17', '2022-03-11 09:27:02', 'dKxdUZ8UT75H1yKuaAS_uc:APA91bFLl_FzNc1r3xH4mlXRAQlompyFOl8kByqYnJaKfsCDTJQkaxM4OFCV-wRyVYcmt11FNK1p113h9rXnwgfRblkR1DlO90-NMj3PFvPjGyaj163C9xYQgDro3GfvDZXg1P6pqbG8');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `image`, `name`, `category`, `url`, `created_at`, `updated_at`) VALUES
(1, 'sMKj2rigbDPI21L2TJ7iBkYoG0xKyWOe3tqXs9Sc.jpg', 'Iona Collinssss', 'Cupidatat molestiassss', 'Culpa et sed rem estss', '2022-02-27 17:02:58', '2022-02-27 17:03:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_tokens`
--
ALTER TABLE `access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actives`
--
ALTER TABLE `actives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actives_activeable_type_activeable_id_index` (`activeable_type`,`activeable_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD UNIQUE KEY `clients_phone_unique` (`phone`);

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codes_codeable_type_codeable_id_index` (`codeable_type`,`codeable_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_client_id_foreign` (`client_id`),
  ADD KEY `comments_course_id_foreign` (`course_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_trainer_id_foreign` (`trainer_id`);

--
-- Indexes for table `course_translations`
--
ALTER TABLE `course_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_translations_course_id_foreign` (`course_id`),
  ADD KEY `course_translations_locale_index` (`locale`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrolls_client_id_foreign` (`client_id`),
  ADD KEY `enrolls_course_id_foreign` (`course_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_translations`
--
ALTER TABLE `event_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_translations_event_id_foreign` (`event_id`),
  ADD KEY `event_translations_locale_index` (`locale`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_translations`
--
ALTER TABLE `faq_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faq_translations_faq_id_foreign` (`faq_id`),
  ADD KEY `faq_translations_locale_index` (`locale`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_translations_setting_id_foreign` (`setting_id`),
  ADD KEY `setting_translations_locale_index` (`locale`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer_translations`
--
ALTER TABLE `trainer_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainer_translations_trainer_id_foreign` (`trainer_id`),
  ADD KEY `trainer_translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_tokens`
--
ALTER TABLE `access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `actives`
--
ALTER TABLE `actives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_translations`
--
ALTER TABLE `course_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_translations`
--
ALTER TABLE `event_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq_translations`
--
ALTER TABLE `faq_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainer_translations`
--
ALTER TABLE `trainer_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_trainer_id_foreign` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_translations`
--
ALTER TABLE `course_translations`
  ADD CONSTRAINT `course_translations_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD CONSTRAINT `enrolls_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrolls_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_translations`
--
ALTER TABLE `event_translations`
  ADD CONSTRAINT `event_translations_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faq_translations`
--
ALTER TABLE `faq_translations`
  ADD CONSTRAINT `faq_translations_faq_id_foreign` FOREIGN KEY (`faq_id`) REFERENCES `faqs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trainer_translations`
--
ALTER TABLE `trainer_translations`
  ADD CONSTRAINT `trainer_translations_trainer_id_foreign` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
