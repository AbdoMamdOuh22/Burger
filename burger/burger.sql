-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 03:36 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `burger`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `decs2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `heading`, `decs`, `img`, `created_at`, `updated_at`, `decs2`) VALUES
(1, 'ABOUT US', 'Delivering best ingredients for our trusty food lovers', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit ullam cupiditate dolorum quisquam, consectetur quos iure asperiores doloremque esse nostrum, voluptatum harum optio sapiente voluptas eligendi fugit voluptate, dolores amet.', 'abouts\\August2021\\6kqZV211Hi83N9K3qcEB.jpg', '2021-08-23 09:20:00', '2021-08-23 09:22:18', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Natus eius nulla soluta corporis exercitationem nostrum! Voluptatibus molestias ipsam libero');

-- --------------------------------------------------------

--
-- Table structure for table `burgers`
--

CREATE TABLE `burgers` (
  `id` int(10) UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headingCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decsCard` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `burgers`
--

INSERT INTO `burgers` (`id`, `heading`, `imgCard`, `headingCard`, `decsCard`, `price`, `add`, `created_at`, `updated_at`) VALUES
(1, NULL, 'burgers\\August2021\\91XKWFSt9OEZOTcUGTF9.png', 'Juicy Burger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', '10 $', '+ Add Card', '2021-08-23 10:55:00', '2021-08-23 11:10:54'),
(2, NULL, 'burgers\\August2021\\1zZSpLZKvdfiyQ32s2cc.png', 'Juicy Burger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', '10 $', '+ Add Card', '2021-08-23 11:07:15', '2021-08-23 11:07:15'),
(3, NULL, 'burgers\\August2021\\LDMWkBkeMHpYEDoIyHqT.png', 'Juicy Burger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', '10 $', '+ Add Card', '2021-08-23 11:07:42', '2021-08-23 11:07:42'),
(4, NULL, 'burgers\\August2021\\OoPQJWk37EwyWzw5rm1i.png', 'Juicy Burger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', '10 $', '+ Add Card', '2021-08-23 11:07:59', '2021-08-23 11:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-08-23 07:59:19', '2021-08-23 07:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'home', 'text', 'Home', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'about', 'text', 'About', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'offers', 'text', 'Offers', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'menu', 'text', 'Menu', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'contact', 'text', 'Contact', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(63, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(64, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 10, 'textStyle1', 'text', 'TextStyle1', 0, 1, 1, 1, 1, 1, '{}', 2),
(66, 10, 'textStyle2', 'text', 'TextStyle2', 0, 1, 1, 1, 1, 1, '{}', 3),
(67, 10, 'heading', 'text', 'Heading', 0, 1, 1, 1, 1, 1, '{}', 4),
(68, 10, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 5),
(69, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(70, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(71, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 11, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(73, 11, 'heading', 'text', 'Heading', 0, 1, 1, 1, 1, 1, '{}', 3),
(74, 11, 'decs', 'text', 'Decs', 0, 1, 1, 1, 1, 1, '{}', 4),
(75, 11, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 6),
(76, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(77, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(78, 11, 'decs2', 'text', 'Decs2', 0, 1, 1, 1, 1, 1, '{}', 5),
(79, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 12, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(83, 12, 'decs', 'text', 'Decs', 0, 1, 1, 1, 1, 1, '{}', 9),
(84, 12, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 10),
(85, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(86, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(87, 12, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(88, 12, 'heading1', 'text', 'Heading1', 0, 1, 1, 1, 1, 1, '{}', 2),
(89, 12, 'option1', 'text', 'Option1', 0, 1, 1, 1, 1, 1, '{}', 6),
(90, 12, 'heading2', 'text', 'Heading2', 0, 1, 1, 1, 1, 1, '{}', 5),
(91, 12, 'option2', 'text', 'Option2', 0, 1, 1, 1, 1, 1, '{}', 7),
(92, 12, 'option3', 'text', 'Option3', 0, 1, 1, 1, 1, 1, '{}', 8),
(93, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(94, 13, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(96, 13, 'decs', 'text', 'Decs', 0, 1, 1, 1, 1, 1, '{}', 4),
(97, 13, 'button', 'text', 'Button', 0, 1, 1, 1, 1, 1, '{}', 5),
(98, 13, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 6),
(99, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(100, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(101, 13, 'heading', 'text', 'Heading', 0, 1, 1, 1, 1, 1, '{}', 3),
(102, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(103, 15, 'heading', 'text', 'Heading', 0, 1, 1, 1, 1, 1, '{}', 2),
(104, 15, 'imgCard', 'image', 'ImgCard', 0, 1, 1, 1, 1, 1, '{}', 3),
(105, 15, 'headingCard', 'text', 'HeadingCard', 0, 1, 1, 1, 1, 1, '{}', 4),
(106, 15, 'decsCard', 'text', 'DecsCard', 0, 1, 1, 1, 1, 1, '{}', 5),
(107, 15, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 6),
(108, 15, 'add', 'text', 'Add', 0, 1, 1, 1, 1, 1, '{}', 7),
(109, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(110, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(111, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 16, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(113, 16, 'heading', 'text', 'Heading', 0, 1, 1, 1, 1, 1, '{}', 3),
(114, 16, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(115, 16, 'decs', 'text', 'Decs', 0, 1, 1, 1, 1, 1, '{}', 5),
(116, 16, 'nameUser', 'text', 'NameUser', 0, 1, 1, 1, 1, 1, '{}', 6),
(117, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(118, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(119, 16, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 7),
(120, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(121, 17, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 2),
(122, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(123, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(7, 'headeernavs', 'headeernavs', 'Headeernav', 'Headeernavs', 'voyager-list', 'App\\Headeernav', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-23 08:05:21', '2021-08-23 08:26:55'),
(10, 'headeers', 'headeers', 'Headeer', 'Headeers', 'voyager-photo', 'App\\Headeer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-08-23 09:03:16', '2021-08-23 09:03:16'),
(11, 'abouts', 'abouts', 'About', 'Abouts', 'voyager-info-circled', 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-23 09:18:13', '2021-08-23 09:22:07'),
(12, 'offers', 'offers', 'Offer', 'Offers', 'voyager-bookmark', 'App\\Offer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-23 10:00:08', '2021-08-23 10:05:54'),
(13, 'menuhomes', 'menuhomes', 'Menuhome', 'Menuhomes', 'voyager-plus', 'App\\Menuhome', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-23 10:35:58', '2021-08-23 10:48:36'),
(15, 'burgers', 'burgers', 'Burger', 'Burgers', 'voyager-move', 'App\\Burger', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-08-23 10:54:25', '2021-08-23 10:54:25'),
(16, 'tests', 'tests', 'Test', 'Tests', 'voyager-check', 'App\\Test', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-08-23 11:20:06', '2021-08-23 11:20:06'),
(17, 'images', 'images', 'Image', 'Images', 'voyager-images', 'App\\Image', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-08-23 11:26:44', '2021-08-23 11:26:44');

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
-- Table structure for table `headeernavs`
--

CREATE TABLE `headeernavs` (
  `id` int(10) UNSIGNED NOT NULL,
  `home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `headeernavs`
--

INSERT INTO `headeernavs` (`id`, `home`, `about`, `offers`, `menu`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'About', 'Offers', 'Menu', 'Contact', '2021-08-23 08:08:00', '2021-08-23 08:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `headeers`
--

CREATE TABLE `headeers` (
  `id` int(10) UNSIGNED NOT NULL,
  `textStyle1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textStyle2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `headeers`
--

INSERT INTO `headeers` (`id`, `textStyle1`, `textStyle2`, `heading`, `img`, `created_at`, `updated_at`) VALUES
(1, 'CRISPY', 'TENDER', 'BURGER', 'headeers\\August2021\\tuRte2dcojPlzkPrSyeg.png', '2021-08-23 09:05:42', '2021-08-23 09:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `img`, `created_at`, `updated_at`) VALUES
(1, 'images\\August2021\\CO9bvgrNuUFxp7DnZ8xZ.jpg', '2021-08-23 11:26:57', '2021-08-23 11:26:57'),
(2, 'images\\August2021\\Wpq9FieyeGtx97VxUOOG.jpg', '2021-08-23 11:27:06', '2021-08-23 11:27:06'),
(3, 'images\\August2021\\f8uCSNiPMiStq0FaH5sP.jpg', '2021-08-23 11:27:13', '2021-08-23 11:27:13'),
(4, 'images\\August2021\\vEitpXurG0YNQ8kKc99S.jpg', '2021-08-23 11:27:20', '2021-08-23 11:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `menuhomes`
--

CREATE TABLE `menuhomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menuhomes`
--

INSERT INTO `menuhomes` (`id`, `title`, `heading`, `decs`, `button`, `img`, `created_at`, `updated_at`) VALUES
(1, '-25% OFF', 'Enjoy our specially prepared burgers for you', 'Dont miss out on our daily special offers', 'SEE MENU', 'menuhomes\\August2021\\6bFTTRzXSqStw0dY54Do.png', '2021-08-23 10:39:05', '2021-08-23 10:39:05'),
(2, '-15% OFF', 'New, amazing sandwich offers every day', 'Just add some of our juicy side dishes', 'SEE MENU', 'menuhomes\\August2021\\V64Geke4lDC3CTD5S4nG.png', '2021-08-23 10:39:32', '2021-08-23 10:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-08-23 07:59:18', '2021-08-23 07:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-08-23 07:59:18', '2021-08-23 07:59:18', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2021-08-23 07:59:18', '2021-08-23 08:51:18', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-08-23 07:59:18', '2021-08-23 07:59:18', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-08-23 07:59:18', '2021-08-23 07:59:18', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2021-08-23 07:59:18', '2021-08-23 08:51:18', NULL, NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-08-23 07:59:18', '2021-08-23 08:51:18', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-08-23 07:59:18', '2021-08-23 08:51:18', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-08-23 07:59:18', '2021-08-23 08:51:18', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2021-08-23 07:59:18', '2021-08-23 08:51:18', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2021-08-23 07:59:19', '2021-08-23 08:51:18', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2021-08-23 07:59:19', '2021-08-23 08:51:18', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2021-08-23 07:59:19', '2021-08-23 08:51:18', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-08-23 07:59:19', '2021-08-23 08:51:18', 'voyager.hooks', NULL),
(15, 1, 'Headeernavs', '', '_self', 'voyager-list', NULL, 16, 1, '2021-08-23 08:05:21', '2021-08-23 08:51:23', 'voyager.headeernavs.index', NULL),
(16, 1, 'Home', '', '_self', 'voyager-sort', '#000000', NULL, 10, '2021-08-23 08:50:49', '2021-08-23 08:51:23', NULL, ''),
(19, 1, 'Headeers', '', '_self', 'voyager-photo', NULL, 16, 2, '2021-08-23 09:03:16', '2021-08-23 09:04:16', 'voyager.headeers.index', NULL),
(20, 1, 'Abouts', '', '_self', 'voyager-warning', NULL, 16, 3, '2021-08-23 09:18:13', '2021-08-23 09:18:25', 'voyager.abouts.index', NULL),
(21, 1, 'Offers', '', '_self', 'voyager-bookmark', NULL, 16, 4, '2021-08-23 10:00:08', '2021-08-23 10:01:13', 'voyager.offers.index', NULL),
(22, 1, 'Menuhomes', '', '_self', 'voyager-plus', NULL, NULL, 11, '2021-08-23 10:35:58', '2021-08-23 10:35:58', 'voyager.menuhomes.index', NULL),
(23, 1, 'Burgers', '', '_self', 'voyager-move', NULL, NULL, 12, '2021-08-23 10:54:25', '2021-08-23 10:54:25', 'voyager.burgers.index', NULL),
(24, 1, 'Tests', '', '_self', 'voyager-check', NULL, NULL, 13, '2021-08-23 11:20:06', '2021-08-23 11:20:06', 'voyager.tests.index', NULL),
(25, 1, 'Images', '', '_self', 'voyager-images', NULL, NULL, 14, '2021-08-23 11:26:44', '2021-08-23 11:26:44', 'voyager.images.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `heading1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `heading1`, `img`, `option1`, `decs`, `price`, `created_at`, `updated_at`, `title`, `heading2`, `option2`, `option3`) VALUES
(1, 'Special offers', 'offers\\August2021\\eqILBdr3qFgSNYDEN9hL.jpg', 'Fat 26G', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.', '17 $', '2021-08-23 10:07:15', '2021-08-23 10:07:15', 'NOW IN TOWN', 'Ham Sandwich', 'Sugars 36G', 'Carbs 26G'),
(2, NULL, 'offers\\August2021\\MSHYMSGaaYBrBfZsnAPM.png', '+ Add To Card', NULL, '15 $', '2021-08-23 10:08:10', '2021-08-23 10:08:10', NULL, 'Juicy Beef Burger Meal', NULL, NULL),
(3, NULL, 'offers\\August2021\\l8mjh11RMQW6ymZUbkv4.png', '+ Add To Card', NULL, '10 $', '2021-08-23 10:08:00', '2021-08-23 10:08:57', NULL, 'Choko Milkshake Heaven', NULL, NULL),
(4, NULL, 'offers\\August2021\\Ki5RLKRXuc1CPh7wbaS8.png', '+ Add To Card', NULL, '7 $', '2021-08-23 10:27:14', '2021-08-23 10:27:14', NULL, 'Medium Portion of Fries', NULL, NULL),
(5, NULL, 'offers\\August2021\\hxHjsZuu6oPCKxdDr6zh.png', '+ Add To Card', NULL, '9 $', '2021-08-23 10:27:50', '2021-08-23 10:27:50', NULL, 'The Blueberry Waffles ...', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-08-23 07:59:19', '2021-08-23 07:59:19');

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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(2, 'browse_bread', NULL, '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(3, 'browse_database', NULL, '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(4, 'browse_media', NULL, '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(5, 'browse_compass', NULL, '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(11, 'browse_roles', 'roles', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(12, 'read_roles', 'roles', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(13, 'edit_roles', 'roles', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(14, 'add_roles', 'roles', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(15, 'delete_roles', 'roles', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(16, 'browse_users', 'users', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(17, 'read_users', 'users', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(18, 'edit_users', 'users', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(19, 'add_users', 'users', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(20, 'delete_users', 'users', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(21, 'browse_settings', 'settings', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(22, 'read_settings', 'settings', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(23, 'edit_settings', 'settings', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(24, 'add_settings', 'settings', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(25, 'delete_settings', 'settings', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(26, 'browse_categories', 'categories', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(27, 'read_categories', 'categories', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(28, 'edit_categories', 'categories', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(29, 'add_categories', 'categories', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(30, 'delete_categories', 'categories', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(31, 'browse_posts', 'posts', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(32, 'read_posts', 'posts', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(33, 'edit_posts', 'posts', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(34, 'add_posts', 'posts', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(35, 'delete_posts', 'posts', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(36, 'browse_pages', 'pages', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(37, 'read_pages', 'pages', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(38, 'edit_pages', 'pages', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(39, 'add_pages', 'pages', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(40, 'delete_pages', 'pages', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(41, 'browse_hooks', NULL, '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(42, 'browse_headeernavs', 'headeernavs', '2021-08-23 08:05:21', '2021-08-23 08:05:21'),
(43, 'read_headeernavs', 'headeernavs', '2021-08-23 08:05:21', '2021-08-23 08:05:21'),
(44, 'edit_headeernavs', 'headeernavs', '2021-08-23 08:05:21', '2021-08-23 08:05:21'),
(45, 'add_headeernavs', 'headeernavs', '2021-08-23 08:05:21', '2021-08-23 08:05:21'),
(46, 'delete_headeernavs', 'headeernavs', '2021-08-23 08:05:21', '2021-08-23 08:05:21'),
(57, 'browse_headeers', 'headeers', '2021-08-23 09:03:16', '2021-08-23 09:03:16'),
(58, 'read_headeers', 'headeers', '2021-08-23 09:03:16', '2021-08-23 09:03:16'),
(59, 'edit_headeers', 'headeers', '2021-08-23 09:03:16', '2021-08-23 09:03:16'),
(60, 'add_headeers', 'headeers', '2021-08-23 09:03:16', '2021-08-23 09:03:16'),
(61, 'delete_headeers', 'headeers', '2021-08-23 09:03:16', '2021-08-23 09:03:16'),
(62, 'browse_abouts', 'abouts', '2021-08-23 09:18:13', '2021-08-23 09:18:13'),
(63, 'read_abouts', 'abouts', '2021-08-23 09:18:13', '2021-08-23 09:18:13'),
(64, 'edit_abouts', 'abouts', '2021-08-23 09:18:13', '2021-08-23 09:18:13'),
(65, 'add_abouts', 'abouts', '2021-08-23 09:18:13', '2021-08-23 09:18:13'),
(66, 'delete_abouts', 'abouts', '2021-08-23 09:18:13', '2021-08-23 09:18:13'),
(67, 'browse_offers', 'offers', '2021-08-23 10:00:08', '2021-08-23 10:00:08'),
(68, 'read_offers', 'offers', '2021-08-23 10:00:08', '2021-08-23 10:00:08'),
(69, 'edit_offers', 'offers', '2021-08-23 10:00:08', '2021-08-23 10:00:08'),
(70, 'add_offers', 'offers', '2021-08-23 10:00:08', '2021-08-23 10:00:08'),
(71, 'delete_offers', 'offers', '2021-08-23 10:00:08', '2021-08-23 10:00:08'),
(72, 'browse_menuhomes', 'menuhomes', '2021-08-23 10:35:58', '2021-08-23 10:35:58'),
(73, 'read_menuhomes', 'menuhomes', '2021-08-23 10:35:58', '2021-08-23 10:35:58'),
(74, 'edit_menuhomes', 'menuhomes', '2021-08-23 10:35:58', '2021-08-23 10:35:58'),
(75, 'add_menuhomes', 'menuhomes', '2021-08-23 10:35:58', '2021-08-23 10:35:58'),
(76, 'delete_menuhomes', 'menuhomes', '2021-08-23 10:35:58', '2021-08-23 10:35:58'),
(77, 'browse_burgers', 'burgers', '2021-08-23 10:54:25', '2021-08-23 10:54:25'),
(78, 'read_burgers', 'burgers', '2021-08-23 10:54:25', '2021-08-23 10:54:25'),
(79, 'edit_burgers', 'burgers', '2021-08-23 10:54:25', '2021-08-23 10:54:25'),
(80, 'add_burgers', 'burgers', '2021-08-23 10:54:25', '2021-08-23 10:54:25'),
(81, 'delete_burgers', 'burgers', '2021-08-23 10:54:25', '2021-08-23 10:54:25'),
(82, 'browse_tests', 'tests', '2021-08-23 11:20:06', '2021-08-23 11:20:06'),
(83, 'read_tests', 'tests', '2021-08-23 11:20:06', '2021-08-23 11:20:06'),
(84, 'edit_tests', 'tests', '2021-08-23 11:20:06', '2021-08-23 11:20:06'),
(85, 'add_tests', 'tests', '2021-08-23 11:20:06', '2021-08-23 11:20:06'),
(86, 'delete_tests', 'tests', '2021-08-23 11:20:06', '2021-08-23 11:20:06'),
(87, 'browse_images', 'images', '2021-08-23 11:26:44', '2021-08-23 11:26:44'),
(88, 'read_images', 'images', '2021-08-23 11:26:44', '2021-08-23 11:26:44'),
(89, 'edit_images', 'images', '2021-08-23 11:26:44', '2021-08-23 11:26:44'),
(90, 'add_images', 'images', '2021-08-23 11:26:44', '2021-08-23 11:26:44'),
(91, 'delete_images', 'images', '2021-08-23 11:26:44', '2021-08-23 11:26:44');

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
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-08-23 07:59:19', '2021-08-23 07:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-08-23 07:59:18', '2021-08-23 07:59:18'),
(2, 'user', 'Normal User', '2021-08-23 07:59:18', '2021-08-23 07:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nameUser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `title`, `heading`, `price`, `decs`, `nameUser`, `created_at`, `updated_at`, `img`) VALUES
(1, 'TESTIMONIALS', 'What our clients have to say', '50 $', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.', 'John Doe', '2021-08-23 11:20:47', '2021-08-23 11:20:47', 'tests\\August2021\\YzXSVJc8Til9Tarr4HF4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-08-23 07:59:19', '2021-08-23 07:59:19'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-08-23 07:59:19', '2021-08-23 07:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$vNrrblOqcIqopcLcSoEsverGDxT6DYJl4/tgfimVYWA5fh1c6ebBy', 'dykYagAf2r6rJOdbQ8T5Zh1oAGRYFJiNTXog0U1rNmybNeJnVionbsA4BObZ', NULL, '2021-08-23 07:59:19', '2021-08-23 07:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `burgers`
--
ALTER TABLE `burgers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `headeernavs`
--
ALTER TABLE `headeernavs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headeers`
--
ALTER TABLE `headeers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menuhomes`
--
ALTER TABLE `menuhomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `burgers`
--
ALTER TABLE `burgers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `headeernavs`
--
ALTER TABLE `headeernavs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `headeers`
--
ALTER TABLE `headeers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menuhomes`
--
ALTER TABLE `menuhomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
