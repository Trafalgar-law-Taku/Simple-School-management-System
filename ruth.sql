-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2022 at 07:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 7, 'Admin', 'fa-tasks', '', NULL, NULL, '2022-10-23 06:01:08'),
(3, 2, 8, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2022-10-23 06:01:08'),
(4, 2, 9, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2022-10-23 06:01:08'),
(5, 2, 10, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2022-10-23 06:01:08'),
(6, 2, 11, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2022-10-23 06:01:08'),
(7, 2, 12, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2022-10-23 06:01:08'),
(8, 0, 2, 'Students', 'fa-users', '/students', '*', '2022-10-22 22:00:32', '2022-10-23 06:01:08'),
(9, 0, 3, 'Degrees', 'fa-book', '/degrees', '*', '2022-10-23 05:11:36', '2022-10-23 06:01:08'),
(10, 0, 4, 'Staff', 'fa-blind', '/staff', '*', '2022-10-23 05:12:24', '2022-10-23 06:01:08'),
(11, 0, 5, 'Updates', 'fa-calendar-check-o', '/updates', '*', '2022-10-23 05:13:00', '2022-10-23 06:01:08'),
(12, 0, 6, 'Categories', 'fa-bullhorn', '/categories', '*', '2022-10-23 05:42:49', '2022-10-23 06:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:31:12', '2022-10-22 20:31:12'),
(2, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:35:18', '2022-10-22 20:35:18'),
(3, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:36:12', '2022-10-22 20:36:12'),
(4, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:37:00', '2022-10-22 20:37:00'),
(5, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:38:00', '2022-10-22 20:38:00'),
(6, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:42:04', '2022-10-22 20:42:04'),
(7, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:42:45', '2022-10-22 20:42:45'),
(8, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:47:21', '2022-10-22 20:47:21'),
(9, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:48:13', '2022-10-22 20:48:13'),
(10, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:48:40', '2022-10-22 20:48:40'),
(11, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:52:16', '2022-10-22 20:52:16'),
(12, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:52:26', '2022-10-22 20:52:26'),
(13, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:52:40', '2022-10-22 20:52:40'),
(14, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:53:28', '2022-10-22 20:53:28'),
(15, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:53:48', '2022-10-22 20:53:48'),
(16, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:54:11', '2022-10-22 20:54:11'),
(17, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:56:27', '2022-10-22 20:56:27'),
(18, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 20:58:18', '2022-10-22 20:58:18'),
(19, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 21:23:38', '2022-10-22 21:23:38'),
(20, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-22 21:25:00', '2022-10-22 21:25:00'),
(21, 1, 'admin', 'GET', '::1', '[]', '2022-10-22 21:59:58', '2022-10-22 21:59:58'),
(22, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-22 22:00:02', '2022-10-22 22:00:02'),
(23, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"Students\",\"icon\":\"fa-users\",\"uri\":\"\\/students\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"EAnPgdcBW8WDEskNjRjhFy1mSm8LJyQdMm2zt9La\"}', '2022-10-22 22:00:32', '2022-10-22 22:00:32'),
(24, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-22 22:00:32', '2022-10-22 22:00:32'),
(25, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-22 22:00:44', '2022-10-22 22:00:44'),
(26, 1, 'admin/students', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-22 22:00:46', '2022-10-22 22:00:46'),
(27, 1, 'admin/students/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-22 22:01:07', '2022-10-22 22:01:07'),
(28, 1, 'admin/students/create', 'GET', '::1', '[]', '2022-10-22 22:01:22', '2022-10-22 22:01:22'),
(29, 1, 'admin/students/create', 'GET', '::1', '[]', '2022-10-22 22:01:53', '2022-10-22 22:01:53'),
(30, 1, 'admin/students/create', 'GET', '::1', '[]', '2022-10-22 22:02:02', '2022-10-22 22:02:02'),
(31, 1, 'admin', 'GET', '::1', '[]', '2022-10-22 22:02:11', '2022-10-22 22:02:11'),
(32, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 04:55:01', '2022-10-23 04:55:01'),
(33, 1, 'admin/students', 'GET', '::1', '[]', '2022-10-23 04:56:01', '2022-10-23 04:56:01'),
(34, 1, 'admin', 'GET', '192.168.151.92', '[]', '2022-10-23 04:56:23', '2022-10-23 04:56:23'),
(35, 1, 'admin/students/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 04:57:21', '2022-10-23 04:57:21'),
(36, 1, 'admin/students/create', 'GET', '::1', '[]', '2022-10-23 05:00:38', '2022-10-23 05:00:38'),
(37, 1, 'admin/students/create', 'GET', '::1', '[]', '2022-10-23 05:01:17', '2022-10-23 05:01:17'),
(38, 1, 'admin/students', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:09:04', '2022-10-23 05:09:04'),
(39, 1, 'admin/students', 'GET', '::1', '[]', '2022-10-23 05:10:10', '2022-10-23 05:10:10'),
(40, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:10:19', '2022-10-23 05:10:19'),
(41, 1, 'admin/auth/users/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:10:56', '2022-10-23 05:10:56'),
(42, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:10:59', '2022-10-23 05:10:59'),
(43, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:11:02', '2022-10-23 05:11:02'),
(44, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"Degrees\",\"icon\":\"fa-book\",\"uri\":\"\\/degree\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\"}', '2022-10-23 05:11:36', '2022-10-23 05:11:36'),
(45, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-23 05:11:37', '2022-10-23 05:11:37'),
(46, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"Staff\",\"icon\":\"fa-blind\",\"uri\":\"\\/staff\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\"}', '2022-10-23 05:12:24', '2022-10-23 05:12:24'),
(47, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-23 05:12:24', '2022-10-23 05:12:24'),
(48, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"Updates\",\"icon\":\"fa-calendar-check-o\",\"uri\":\"\\/updates\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\"}', '2022-10-23 05:13:00', '2022-10-23 05:13:00'),
(49, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-23 05:13:01', '2022-10-23 05:13:01'),
(50, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-23 05:13:46', '2022-10-23 05:13:46'),
(51, 1, 'admin/staff', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:13:55', '2022-10-23 05:13:55'),
(52, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:13:57', '2022-10-23 05:13:57'),
(53, 1, 'admin/auth/menu/9/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:17:59', '2022-10-23 05:17:59'),
(54, 1, 'admin/auth/menu/9', 'PUT', '::1', '{\"parent_id\":\"0\",\"title\":\"Degree\",\"icon\":\"fa-book\",\"uri\":\"\\/degree\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/ruth\\/public\\/admin\\/auth\\/menu\"}', '2022-10-23 05:18:12', '2022-10-23 05:18:12'),
(55, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-23 05:18:12', '2022-10-23 05:18:12'),
(56, 1, 'admin/auth/menu/9/edit', 'GET', '::1', '[]', '2022-10-23 05:18:20', '2022-10-23 05:18:20'),
(57, 1, 'admin/staff', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:18:50', '2022-10-23 05:18:50'),
(58, 1, 'admin/staff/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:21:59', '2022-10-23 05:21:59'),
(59, 1, 'admin/staff', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:23:03', '2022-10-23 05:23:03'),
(60, 1, 'admin/staff', 'GET', '::1', '[]', '2022-10-23 05:25:16', '2022-10-23 05:25:16'),
(61, 1, 'admin/staff/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:33:49', '2022-10-23 05:33:49'),
(62, 1, 'admin/staff', 'GET', '::1', '[]', '2022-10-23 05:33:50', '2022-10-23 05:33:50'),
(63, 1, 'admin/staff', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:33:55', '2022-10-23 05:33:55'),
(64, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-23 05:34:29', '2022-10-23 05:34:29'),
(65, 1, 'admin/auth/menu/9/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:34:34', '2022-10-23 05:34:34'),
(66, 1, 'admin/auth/menu/9', 'PUT', '::1', '{\"parent_id\":\"0\",\"title\":\"Degrees\",\"icon\":\"fa-book\",\"uri\":\"\\/degrees\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/ruth\\/public\\/admin\\/auth\\/menu\"}', '2022-10-23 05:34:41', '2022-10-23 05:34:41'),
(67, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-23 05:34:42', '2022-10-23 05:34:42'),
(68, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-23 05:34:44', '2022-10-23 05:34:44'),
(69, 1, 'admin/degrees', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:34:46', '2022-10-23 05:34:46'),
(70, 1, 'admin/degrees', 'GET', '::1', '[]', '2022-10-23 05:35:08', '2022-10-23 05:35:08'),
(71, 1, 'admin/degrees', 'GET', '::1', '[]', '2022-10-23 05:39:11', '2022-10-23 05:39:11'),
(72, 1, 'admin/degrees/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:39:13', '2022-10-23 05:39:13'),
(73, 1, 'admin/degrees/create', 'GET', '::1', '[]', '2022-10-23 05:39:43', '2022-10-23 05:39:43'),
(74, 1, 'admin/staff', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:39:59', '2022-10-23 05:39:59'),
(75, 1, 'admin/staff/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:40:02', '2022-10-23 05:40:02'),
(76, 1, 'admin/staff', 'GET', '::1', '[]', '2022-10-23 05:40:02', '2022-10-23 05:40:02'),
(77, 1, 'admin/staff', 'GET', '::1', '[]', '2022-10-23 05:40:45', '2022-10-23 05:40:45'),
(78, 1, 'admin/staff/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:40:49', '2022-10-23 05:40:49'),
(79, 1, 'admin/staff', 'GET', '::1', '[]', '2022-10-23 05:40:50', '2022-10-23 05:40:50'),
(80, 1, 'admin/staff', 'GET', '::1', '[]', '2022-10-23 05:42:01', '2022-10-23 05:42:01'),
(81, 1, 'admin/staff/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:42:03', '2022-10-23 05:42:03'),
(82, 1, 'admin/staff', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:42:15', '2022-10-23 05:42:15'),
(83, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:42:22', '2022-10-23 05:42:22'),
(84, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"Categories\",\"icon\":\"fa-bullhorn\",\"uri\":\"\\/categories\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\"}', '2022-10-23 05:42:48', '2022-10-23 05:42:48'),
(85, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-23 05:42:49', '2022-10-23 05:42:49'),
(86, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-23 05:42:58', '2022-10-23 05:42:58'),
(87, 1, 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:43:06', '2022-10-23 05:43:06'),
(88, 1, 'admin/categories', 'GET', '::1', '[]', '2022-10-23 05:43:52', '2022-10-23 05:43:52'),
(89, 1, 'admin/categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:43:57', '2022-10-23 05:43:57'),
(90, 1, 'admin/categories', 'POST', '::1', '{\"title\":\"Lecturer\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\",\"_previous_\":\"http:\\/\\/localhost\\/ruth\\/public\\/admin\\/categories\"}', '2022-10-23 05:44:07', '2022-10-23 05:44:07'),
(91, 1, 'admin/categories/create', 'GET', '::1', '[]', '2022-10-23 05:44:07', '2022-10-23 05:44:07'),
(92, 1, 'admin/categories/create', 'GET', '::1', '[]', '2022-10-23 05:44:20', '2022-10-23 05:44:20'),
(93, 1, 'admin/categories', 'POST', '::1', '{\"name\":\"Lecturer\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\"}', '2022-10-23 05:44:28', '2022-10-23 05:44:28'),
(94, 1, 'admin/categories', 'GET', '::1', '[]', '2022-10-23 05:44:28', '2022-10-23 05:44:28'),
(95, 1, 'admin/staff', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:44:35', '2022-10-23 05:44:35'),
(96, 1, 'admin/staff/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:44:36', '2022-10-23 05:44:36'),
(97, 1, 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:45:15', '2022-10-23 05:45:15'),
(98, 1, 'admin/degrees', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:45:18', '2022-10-23 05:45:18'),
(99, 1, 'admin/degrees/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:45:19', '2022-10-23 05:45:19'),
(100, 1, 'admin/degrees/create', 'GET', '::1', '[]', '2022-10-23 05:46:33', '2022-10-23 05:46:33'),
(101, 1, 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:46:37', '2022-10-23 05:46:37'),
(102, 1, 'admin/degrees', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:46:41', '2022-10-23 05:46:41'),
(103, 1, 'admin/staff', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:46:56', '2022-10-23 05:46:56'),
(104, 1, 'admin/staff/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:46:59', '2022-10-23 05:46:59'),
(105, 1, 'admin/staff/create', 'GET', '::1', '[]', '2022-10-23 05:47:53', '2022-10-23 05:47:53'),
(106, 1, 'admin/staff/create', 'GET', '::1', '[]', '2022-10-23 05:47:56', '2022-10-23 05:47:56'),
(107, 1, 'admin/staff', 'POST', '::1', '{\"name\":\"Takudzwa\",\"surname\":\"Chirume\",\"email\":\"vaughnnick04@gmail.com\",\"phone\":\"26377715187\",\"sex\":\"Male\",\"occupation\":\"Lecturer\",\"dob\":\"1997-06-17\",\"residence\":\"12,bubagawara,ruwa\",\"qualification\":\"Masters\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\"}', '2022-10-23 05:49:28', '2022-10-23 05:49:28'),
(108, 1, 'admin/staff/create', 'GET', '::1', '[]', '2022-10-23 05:49:29', '2022-10-23 05:49:29'),
(109, 1, 'admin/staff', 'POST', '::1', '{\"name\":\"Takudzwa\",\"surname\":\"Chirume\",\"email\":\"vaughnnick04@gmail.com\",\"phone\":\"26377715187\",\"sex\":\"Male\",\"occupation\":\"Lecturer\",\"dob\":\"1997-06-17\",\"residence\":\"12,bubagawara,ruwa\",\"qualification\":\"Masters\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\"}', '2022-10-23 05:50:29', '2022-10-23 05:50:29'),
(110, 1, 'admin/staff', 'GET', '::1', '[]', '2022-10-23 05:50:30', '2022-10-23 05:50:30'),
(111, 1, 'admin/degrees', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:50:38', '2022-10-23 05:50:38'),
(112, 1, 'admin/degrees/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:50:41', '2022-10-23 05:50:41'),
(113, 1, 'admin/degrees/create', 'GET', '::1', '[]', '2022-10-23 05:52:04', '2022-10-23 05:52:04'),
(114, 1, 'admin/degrees/create', 'GET', '::1', '[]', '2022-10-23 05:52:32', '2022-10-23 05:52:32'),
(115, 1, 'admin/degrees/create', 'GET', '::1', '[]', '2022-10-23 05:52:58', '2022-10-23 05:52:58'),
(116, 1, 'admin/degrees', 'POST', '::1', '{\"title\":\"BBM And IT\",\"description\":\"Bachelor of Business Management, sometimes known as a Bachelor of Management Studies, is an undergraduate program of four years. The BBM degree is designed to teach students the skills necessary to perform leadership roles in the business and corporate world\",\"period\":\"4\",\"lecturer\":\"Chirume\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\"}', '2022-10-23 05:55:20', '2022-10-23 05:55:20'),
(117, 1, 'admin/degrees', 'GET', '::1', '[]', '2022-10-23 05:55:20', '2022-10-23 05:55:20'),
(118, 1, 'admin/students', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:55:29', '2022-10-23 05:55:29'),
(119, 1, 'admin/students/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 05:55:31', '2022-10-23 05:55:31'),
(120, 1, 'admin/students/create', 'GET', '::1', '[]', '2022-10-23 05:56:49', '2022-10-23 05:56:49'),
(121, 1, 'admin/students/create', 'GET', '::1', '[]', '2022-10-23 05:57:17', '2022-10-23 05:57:17'),
(122, 1, 'admin/students/create', 'GET', '::1', '[]', '2022-10-23 05:59:59', '2022-10-23 05:59:59'),
(123, 1, 'admin/students', 'POST', '::1', '{\"name\":\"Matha\",\"surname\":\"Chirume\",\"dob\":\"2000-03-08\",\"sex\":\"Male\",\"email\":\"vaughnnick04@gmail.com\",\"phone\":\"26377715187\",\"reg\":\"R182666B\",\"faculty\":\"Commerce\",\"degree\":\"BBM And IT\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\"}', '2022-10-23 06:00:34', '2022-10-23 06:00:34'),
(124, 1, 'admin/students', 'GET', '::1', '[]', '2022-10-23 06:00:35', '2022-10-23 06:00:35'),
(125, 1, 'admin/degrees', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:00:41', '2022-10-23 06:00:41'),
(126, 1, 'admin/staff', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:00:44', '2022-10-23 06:00:44'),
(127, 1, 'admin/categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:00:49', '2022-10-23 06:00:49'),
(128, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:00:58', '2022-10-23 06:00:58'),
(129, 1, 'admin/auth/menu', 'POST', '::1', '{\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2022-10-23 06:01:08', '2022-10-23 06:01:08'),
(130, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:01:08', '2022-10-23 06:01:08'),
(131, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-23 06:01:10', '2022-10-23 06:01:10'),
(132, 1, 'admin/auth/setting', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:01:17', '2022-10-23 06:01:17'),
(133, 1, 'admin/auth/setting', 'PUT', '::1', '{\"name\":\"Ruth Huwa\",\"password\":\"$2y$10$3FMJy3UC.DFTlx6VtCw1we1FBOSmVcZ.3UnCNsJSMjJ6qdF4CLjpm\",\"password_confirmation\":\"$2y$10$3FMJy3UC.DFTlx6VtCw1we1FBOSmVcZ.3UnCNsJSMjJ6qdF4CLjpm\",\"_token\":\"egVgZZ9GGIZmqnVoM8vZ0YJQ75mpGjlOH1IsIwAL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/ruth\\/public\\/admin\\/auth\\/menu\"}', '2022-10-23 06:01:45', '2022-10-23 06:01:45'),
(134, 1, 'admin/auth/setting', 'GET', '::1', '[]', '2022-10-23 06:01:45', '2022-10-23 06:01:45'),
(135, 1, 'admin/updates', 'GET', '::1', '[]', '2022-10-23 06:02:38', '2022-10-23 06:02:38'),
(136, 1, 'admin/updates/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:02:42', '2022-10-23 06:02:42'),
(137, 1, 'admin/updates', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:02:45', '2022-10-23 06:02:45'),
(138, 1, 'admin/updates/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:03:13', '2022-10-23 06:03:13'),
(139, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:03:39', '2022-10-23 06:03:39'),
(140, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:05:39', '2022-10-23 06:05:39'),
(141, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:10:59', '2022-10-23 06:10:59'),
(142, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:12:08', '2022-10-23 06:12:08'),
(143, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:12:31', '2022-10-23 06:12:31'),
(144, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-10-23 06:12:45', '2022-10-23 06:12:45'),
(145, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:13:07', '2022-10-23 06:13:07'),
(146, 1, 'admin/auth/menu/8/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:13:18', '2022-10-23 06:13:18'),
(147, 1, 'admin/staff', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:13:29', '2022-10-23 06:13:29'),
(148, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:13:35', '2022-10-23 06:13:35'),
(149, 1, 'admin/auth/menu/10/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:13:38', '2022-10-23 06:13:38'),
(150, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:14:11', '2022-10-23 06:14:11'),
(151, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:15:48', '2022-10-23 06:15:48'),
(152, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:21:37', '2022-10-23 06:21:37'),
(153, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:21:51', '2022-10-23 06:21:51'),
(154, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:21:54', '2022-10-23 06:21:54'),
(155, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:25:34', '2022-10-23 06:25:34'),
(156, 1, 'admin/updates/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:34:54', '2022-10-23 06:34:54'),
(157, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:34:55', '2022-10-23 06:34:55'),
(158, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:34:59', '2022-10-23 06:34:59'),
(159, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:56:08', '2022-10-23 06:56:08'),
(160, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:56:15', '2022-10-23 06:56:15'),
(161, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 06:57:40', '2022-10-23 06:57:40'),
(162, 1, 'admin/students', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:57:52', '2022-10-23 06:57:52'),
(163, 1, 'admin/students/1', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:57:57', '2022-10-23 06:57:57'),
(164, 1, 'admin/students', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:58:01', '2022-10-23 06:58:01'),
(165, 1, 'admin/students/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:58:07', '2022-10-23 06:58:07'),
(166, 1, 'admin/students/1', 'PUT', '::1', '{\"name\":\"Matha\",\"surname\":\"Chirume\",\"dob\":\"2000-03-08\",\"sex\":\"Male\",\"email\":\"vaughnnick04@gmail.com\",\"phone\":\"26377715187\",\"reg\":\"R182666B\",\"faculty\":\"Commerce\",\"degree\":\"BBM And IT\",\"_token\":\"0DKtzLclGajHt7C7gyhL3FGe3lubzNW4Q7zkSyHL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/ruth\\/public\\/admin\\/students\"}', '2022-10-23 06:58:17', '2022-10-23 06:58:17'),
(167, 1, 'admin/students', 'GET', '::1', '[]', '2022-10-23 06:58:17', '2022-10-23 06:58:17'),
(168, 1, 'admin/degrees', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:58:22', '2022-10-23 06:58:22'),
(169, 1, 'admin/staff', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:58:27', '2022-10-23 06:58:27'),
(170, 1, 'admin/staff/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:58:30', '2022-10-23 06:58:30'),
(171, 1, 'admin/staff', 'POST', '::1', '{\"name\":\"farai\",\"surname\":\"farbright\",\"email\":\"tutorconnectzw@gmail.com\",\"phone\":\"0779263156_\",\"sex\":\"Male\",\"occupation\":\"Lecturer\",\"dob\":\"1994-06-15\",\"residence\":\"zimre park\",\"qualification\":\"PHD\",\"_token\":\"0DKtzLclGajHt7C7gyhL3FGe3lubzNW4Q7zkSyHL\",\"_previous_\":\"http:\\/\\/localhost\\/ruth\\/public\\/admin\\/staff\"}', '2022-10-23 06:59:09', '2022-10-23 06:59:09'),
(172, 1, 'admin/staff', 'GET', '::1', '[]', '2022-10-23 06:59:10', '2022-10-23 06:59:10'),
(173, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:59:16', '2022-10-23 06:59:16'),
(174, 1, 'admin/auth/users/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 06:59:19', '2022-10-23 06:59:19'),
(175, 1, 'admin/auth/users/create', 'GET', '::1', '[]', '2022-10-23 07:18:44', '2022-10-23 07:18:44'),
(176, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 07:18:51', '2022-10-23 07:18:51'),
(177, 1, 'admin', 'GET', '::1', '[]', '2022-10-23 07:19:09', '2022-10-23 07:19:09'),
(178, 1, 'admin/updates', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 07:20:30', '2022-10-23 07:20:30'),
(179, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 07:20:32', '2022-10-23 07:20:32'),
(180, 1, 'admin/students', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 07:20:41', '2022-10-23 07:20:41'),
(181, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-23 07:20:44', '2022-10-23 07:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2022-10-22 20:22:34', '2022-10-22 20:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$3FMJy3UC.DFTlx6VtCw1we1FBOSmVcZ.3UnCNsJSMjJ6qdF4CLjpm', 'Ruth Huwa', 'images/146e1ff7f37a123da264579f70641f4e.jpeg', 'Iegcjn6kJ4JAUxEfNQrtSgA9RcjASutZIrv5sGE5Otu4jverozePQcA4bA5A', '2022-10-22 20:22:34', '2022-10-23 06:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `created_at` text NOT NULL DEFAULT current_timestamp(),
  `updated_at` text NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Lecturer', '2022-10-22 22:44:28', '2022-10-22 22:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `period` text DEFAULT NULL,
  `lecturer` text DEFAULT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `title`, `description`, `period`, `lecturer`, `created_at`, `updated_at`) VALUES
(1, 'BBM And IT', 'Bachelor of Business Management, sometimes known as a Bachelor of Management Studies, is an undergraduate program of four years. The BBM degree is designed to teach students the skills necessary to perform leadership roles in the business and corporate world', '4', 'Chirume', '2022-10-22 22:55:20', '2022-10-22 22:55:20');

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
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `surname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `image` text NOT NULL,
  `sex` text DEFAULT NULL,
  `occupation` text DEFAULT NULL,
  `dob` text DEFAULT NULL,
  `residence` text DEFAULT NULL,
  `qualification` text DEFAULT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `surname`, `email`, `phone`, `image`, `sex`, `occupation`, `dob`, `residence`, `qualification`, `created_at`, `updated_at`) VALUES
(1, 'Takudzwa', 'Chirume', 'vaughnnick04@gmail.com', '26377715187', 'images/35f5570459997e53055a61aec8ae8743.jpeg', 'Male', 'Lecturer', '1997-06-17', '12,bubagawara,ruwa', 'Masters', '2022-10-22 22:50:29', '2022-10-22 22:50:29'),
(2, 'farai', 'farbright', 'tutorconnectzw@gmail.com', '0779263156_', 'images/z3Xby1aZSnybB0YZtLdF.jpg', 'Male', 'Lecturer', '1994-06-15', 'zimre park', 'PHD', '2022-10-22 23:59:09', '2022-10-22 23:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `surname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `reg` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `dob` text DEFAULT NULL,
  `sex` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `faculty` text DEFAULT NULL,
  `degree` text DEFAULT NULL,
  `created_at` text DEFAULT current_timestamp(),
  `updated_at` text NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `surname`, `email`, `reg`, `phone`, `dob`, `sex`, `image`, `faculty`, `degree`, `created_at`, `updated_at`) VALUES
(1, 'Matha', 'Chirume', 'vaughnnick04@gmail.com', 'R182666B', '26377715187', '2000-03-08', 'Male', 'images/XyIg6yqC4aK0eZ4NmaHC.jpeg', 'Commerce', 'BBM And IT', '2022-10-22 23:00:35', '2022-10-22 23:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `time` text DEFAULT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
