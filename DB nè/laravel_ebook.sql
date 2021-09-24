-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 24, 2021 lúc 12:43 PM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_ebook`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_birth` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `name`, `avatar`, `description`, `date_birth`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Eliane Cummerata I', 'https://via.placeholder.com/70x70.png/00ff55?text=people+iusto', 'Alice. \'I don\'t know what sort it might like.', '2005-03-09', NULL, NULL, NULL),
(2, 'Mr. Juvenal Will', 'https://via.placeholder.com/70x70.png/0011ee?text=people+sit', 'Duchess by her. \'I could hardly knew she shook.', '1986-07-29', NULL, NULL, NULL),
(3, 'Mrs. Joyce Bechtelar III', 'https://via.placeholder.com/70x70.png/0066ee?text=people+nulla', 'I\'m talking!\' Just as it was going off all my.', '1995-11-30', NULL, NULL, NULL),
(4, 'Brenna Deckow', 'https://via.placeholder.com/70x70.png/0022ff?text=people+vero', 'IS a remarkable in dancing.\' Alice felt that.', '1995-04-12', NULL, NULL, NULL),
(5, 'Dion Nicolas PhD', 'https://via.placeholder.com/70x70.png/000055?text=people+sit', 'The Mouse looked at the opportunity for a growl.', '1993-03-02', NULL, NULL, NULL),
(6, 'Dashawn Tillman', 'https://via.placeholder.com/70x70.png/00aacc?text=people+vero', 'I should be two sobs choked with the fact is, if.', '1972-10-19', NULL, NULL, NULL),
(7, 'Luna McGlynn', 'https://via.placeholder.com/70x70.png/00ffdd?text=people+perferendis', 'The Duchess replied, not attending!\' said the.', '2019-10-10', NULL, NULL, NULL),
(8, 'Ms. Breanna Olson Jr.', 'https://via.placeholder.com/70x70.png/005599?text=people+quam', 'Alice in time,\' said the Queen, tossing his.', '2002-04-10', NULL, NULL, NULL),
(9, 'Miss Janet Bednar Jr.', 'https://via.placeholder.com/70x70.png/00bbaa?text=people+et', 'Alice!\' she went up again.) \'Please come wrong.', '2004-09-20', NULL, NULL, NULL),
(10, 'Mrs. Lolita Beer', 'https://via.placeholder.com/70x70.png/003355?text=people+illo', 'Alice. \'Of course you like,\' said to herself.', '2010-04-22', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author_books`
--

CREATE TABLE `author_books` (
  `book_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `author_books`
--

INSERT INTO `author_books` (`book_id`, `author_id`) VALUES
(1, 9),
(2, 6),
(3, 5),
(4, 8),
(5, 7),
(6, 5),
(7, 3),
(8, 10),
(9, 8),
(10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/default.jpg',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date_from` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `title`, `slug`, `status`, `image`, `description`, `publish_date_from`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Brando Emmerich DDS', 'brando-emmerich-dds-1', 1, 'images/default.jpg', 'Therefore I\'m mad?\' \'To begin with.\' \'A nice.', '2021-09-12', NULL, '2021-09-12 15:53:35', NULL),
(2, 'Dr. Bradly Bartell', 'dr-bradly-bartell-2', 1, 'images/default.jpg', 'But the King; \'and then Alice thought to be.', '2021-09-12', NULL, NULL, NULL),
(3, 'Craig Schoen', 'craig-schoen-3', 1, 'images/default.jpg', 'March Hare said the arch I\'ve said Alice; \'only.', '2021-09-12', NULL, NULL, NULL),
(4, 'Shirley Hilpert DDS', 'shirley-hilpert-dds-4', 1, 'images/default.jpg', 'Gryphon. \'Well, I\'ve got up towards it up into.', '2021-09-12', NULL, NULL, NULL),
(5, 'Christelle Dibbert', 'christelle-dibbert-5', 1, 'images/default.jpg', 'I have no mice you what was out \'The Queen! The.', '2021-09-12', NULL, NULL, NULL),
(6, 'Prof. Constantin Johns', 'prof-constantin-johns-6', 1, 'images/default.jpg', 'The adventures first,\' said the King sharply.', '2021-09-12', NULL, NULL, NULL),
(7, 'Ubaldo Batz DVM', 'ubaldo-batz-dvm-7', 1, 'images/default.jpg', 'I\'m not the Queen. \'Never!\' said Alice, that.', '2021-09-12', NULL, NULL, NULL),
(8, 'Carlie Muller', 'carlie-muller-8', 1, 'images/default.jpg', 'Dormouse again, to find that very politely, \'for.', '2021-09-12', NULL, NULL, NULL),
(9, 'Dock Waters', 'dock-waters-9', 1, 'images/default.jpg', 'Fury: \"I\'ll be going on, \'What a water-well,\'.', '2021-09-12', NULL, NULL, NULL),
(10, 'Dr. Elbert Bode', 'dr-elbert-bode-10', 1, 'images/default.jpg', 'I\'d only ten soldiers had happened.) So she.', '2021-09-12', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_audio`
--

CREATE TABLE `book_audio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_galleries`
--

CREATE TABLE `book_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/missing-book-cover.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/default.jpg',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `parent_id`, `image`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jailyn Hahn', 'jailyn-hahn', 1, 0, 'images/default.jpg', 'Rabbit\'s voice; and she made Alice replied very.', NULL, NULL, NULL),
(2, 'Dr. Wendell Wolff', 'dr-wendell-wolff', 1, 0, 'images/default.jpg', 'Canterbury, found herself up and grinning from.', NULL, NULL, NULL),
(3, 'Conrad Terry', 'conrad-terry', 1, 0, 'images/default.jpg', 'Rabbit started to herself. \'Shy, they both sat.', NULL, NULL, NULL),
(4, 'Prof. Karlee Swaniawski III', 'prof-karlee-swaniawski-iii', 1, 0, 'images/default.jpg', 'Alice quite forgetting that all locked; and.', NULL, NULL, NULL),
(5, 'Amos Waters', 'amos-waters', 1, 0, 'images/default.jpg', 'Alice, as I am, sir,\' said the Rabbit put on the.', NULL, NULL, NULL),
(6, 'Bruce Ratke MD', 'bruce-ratke-md', 1, 0, 'images/default.jpg', 'Alice had never executes nobody, you now, only.', NULL, NULL, NULL),
(7, 'Icie Ruecker', 'icie-ruecker', 1, 0, 'images/default.jpg', 'Alice was in the King, looking for the first saw.', NULL, NULL, NULL),
(8, 'Joaquin Breitenberg', 'joaquin-breitenberg', 1, 0, 'images/default.jpg', 'I shan\'t! YOU with such a minute, trying to.', NULL, NULL, NULL),
(9, 'Miss Celine Kozey', 'miss-celine-kozey', 1, 0, 'images/default.jpg', 'King. \'Nearly two she did the Caterpillar.', NULL, NULL, NULL),
(10, 'Dr. Oran Okuneva', 'dr-oran-okuneva', 1, 0, 'images/default.jpg', 'Don\'t let the Duchess was dreadfully ugly child.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_books`
--

CREATE TABLE `category_books` (
  `book_id` bigint(20) NOT NULL,
  `cate_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_books`
--

INSERT INTO `category_books` (`book_id`, `cate_id`) VALUES
(1, 7),
(2, 9),
(3, 1),
(4, 6),
(5, 3),
(6, 5),
(7, 3),
(8, 8),
(9, 5),
(10, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_09_192439_create_comments_table', 1),
(4, '2019_04_09_192440_create_ratings_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_07_28_162245_create_wishlist_table', 1),
(7, '2021_06_28_105155_create_categories_table', 1),
(8, '2021_06_29_144723_create_authors_table', 1),
(9, '2021_06_29_154907_create_books_table', 1),
(10, '2021_07_01_162830_create_category_books_table', 1),
(11, '2021_07_01_163001_create_author_books_table', 1),
(12, '2021_07_01_172759_create_book_galleries_table', 1),
(13, '2021_07_02_020642_create_book_audio_table', 1),
(14, '2021_07_05_141655_create_roles_table', 1),
(15, '2021_07_13_134957_create_sessions_table', 1),
(16, '2021_07_13_165104_add_soft_delete_to_authors_table', 1),
(17, '2021_07_15_084402_add_soft_delete_to_categories_table', 1),
(18, '2021_07_15_084510_add_soft_delete_to_books_table', 1),
(19, '2021_07_17_160719_create_orders_table', 1),
(20, '2021_07_17_161405_create_jobs_table', 1),
(21, '2021_07_29_193910_create_notifications_table', 1),
(22, '2021_08_15_150548_create_post_share_categories_table', 1),
(23, '2021_08_15_153626_create_post_shares_table', 1),
(24, '2021_08_15_172637_create_post_share_category_details_table', 1),
(25, '2021_08_16_113924_create_post_file_data_table', 1),
(26, '2021_08_16_193742_create_post_views_table', 1),
(27, '2021_08_27_172937_create_wishlists_table', 1),
(28, '2021_08_30_100433_create_post_comments_table', 1),
(29, '2021_09_02_022419_create_bookmarks_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('09657f6f-bd9d-41de-b337-20dce9f1edd1', 'App\\Notifications\\CommentNotification', 'App\\Models\\User', 1, '{\"avatar\":\"https:\\/\\/lh3.googleusercontent.com\\/a-\\/AOh14GiFNShD-BJOnKkPXHX4KLGs7xs8vAzNFpsl8ydSxw=s96-c\",\"title\":\"M\\u01b0\\u1ee3n s\\u00e1ch th\\u00e0nh c\\u00f4ng\",\"content\":\"Shirley Hilpert DDS \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c th\\u00eam v\\u00e0o kho s\\u00e1ch c\\u1ee7a b\\u1ea1n\",\"book_id\":4}', NULL, '2021-09-13 09:57:30', '2021-09-13 09:57:30'),
('4595ebff-318e-4f13-9be5-54864a21d91a', 'App\\Notifications\\CommentNotification', 'App\\Models\\User', 1, '{\"avatar\":\"https:\\/\\/lh3.googleusercontent.com\\/a-\\/AOh14GiFNShD-BJOnKkPXHX4KLGs7xs8vAzNFpsl8ydSxw=s96-c\",\"title\":\"M\\u01b0\\u1ee3n s\\u00e1ch th\\u00e0nh c\\u00f4ng\",\"content\":\"Brando Emmerich DDS \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c th\\u00eam v\\u00e0o kho s\\u00e1ch c\\u1ee7a b\\u1ea1n\",\"book_id\":1}', NULL, '2021-09-13 09:56:56', '2021-09-13 09:56:56'),
('5b239dbe-4957-4898-ba51-0b442eaeedd7', 'App\\Notifications\\CommentNotification', 'App\\Models\\User', 1, '{\"avatar\":\"https:\\/\\/lh3.googleusercontent.com\\/a-\\/AOh14GiFNShD-BJOnKkPXHX4KLGs7xs8vAzNFpsl8ydSxw=s96-c\",\"title\":\"M\\u01b0\\u1ee3n s\\u00e1ch th\\u00e0nh c\\u00f4ng\",\"content\":\"Carlie Muller \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c th\\u00eam v\\u00e0o kho s\\u00e1ch c\\u1ee7a b\\u1ea1n\",\"book_id\":8}', NULL, '2021-09-13 09:57:25', '2021-09-13 09:57:25'),
('c930f3f0-4cd9-4573-9560-c38d0f3ee5ee', 'App\\Notifications\\CommentNotification', 'App\\Models\\User', 1, '{\"avatar\":\"https:\\/\\/lh3.googleusercontent.com\\/a-\\/AOh14GiFNShD-BJOnKkPXHX4KLGs7xs8vAzNFpsl8ydSxw=s96-c\",\"title\":\"M\\u01b0\\u1ee3n s\\u00e1ch th\\u00e0nh c\\u00f4ng\",\"content\":\"Dr. Elbert Bode \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c th\\u00eam v\\u00e0o kho s\\u00e1ch c\\u1ee7a b\\u1ea1n\",\"book_id\":10}', NULL, '2021-09-13 09:57:12', '2021-09-13 09:57:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `book_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'Đang mượn', NULL, '2021-09-13 09:56:54', '2021-09-13 09:56:54'),
(2, '1', 10, 'Đang mượn', NULL, '2021-09-13 09:57:12', '2021-09-13 09:57:12'),
(3, '1', 8, 'Đang mượn', NULL, '2021-09-13 09:57:25', '2021-09-13 09:57:25'),
(4, '1', 4, 'Đang mượn', NULL, '2021-09-13 09:57:30', '2021-09-13 09:57:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_file_data`
--

CREATE TABLE `post_file_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_shares`
--

CREATE TABLE `post_shares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/default.jpg',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_shares`
--

INSERT INTO `post_shares` (`id`, `title`, `slug`, `status`, `user_id`, `thumbnail`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Paolo Gibson', 'paolo-gibson-1', 1, 1, 'images/default.jpg', 'You gave a tea-tray in at the only knew it was.', NULL, NULL, NULL),
(2, 'Dr. Samir Weimann', 'dr-samir-weimann-2', 1, 1, 'images/default.jpg', 'Soup,\" will you, it\'s pleased. Now you know?\'.', NULL, NULL, NULL),
(3, 'Ottis Keeling', 'ottis-keeling-3', 1, 1, 'images/default.jpg', 'When the Mock Turtle, \'Drive on, \'that they.', NULL, NULL, NULL),
(4, 'Gerhard Schumm', 'gerhard-schumm-4', 1, 1, 'images/default.jpg', 'Rabbit was a race-course, in large eyes to dull.', NULL, NULL, NULL),
(5, 'Miss Juana Torp IV', 'miss-juana-torp-iv-5', 1, 1, 'images/default.jpg', 'So she would become very uncomfortable. The poor.', NULL, NULL, NULL),
(6, 'Omer Kohler', 'omer-kohler-6', 1, 1, 'images/default.jpg', 'For instance, suppose That he could say if it.', NULL, NULL, NULL),
(7, 'Adelbert Zboncak', 'adelbert-zboncak-7', 1, 1, 'images/default.jpg', 'Gryphon, \'you had a Cheshire Cat,\' said Alice.', NULL, NULL, NULL),
(8, 'Vilma Bergstrom II', 'vilma-bergstrom-ii-8', 1, 1, 'images/default.jpg', 'The rabbit-hole under which Seven flung down.', NULL, NULL, NULL),
(9, 'Manuela Zulauf III', 'manuela-zulauf-iii-9', 1, 1, 'images/default.jpg', 'I\'LL soon fetch it was an explanation. \'Oh.', NULL, NULL, NULL),
(10, 'Yvette Hettinger', 'yvette-hettinger-10', 1, 1, 'images/default.jpg', 'There was in questions of Mercia and those.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_share_categories`
--

CREATE TABLE `post_share_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/default.jpg',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_share_categories`
--

INSERT INTO `post_share_categories` (`id`, `name`, `slug`, `status`, `image`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Flavie Ratke', 'flavie-ratke', 1, 'images/default.jpg', 'III. A MILE HIGH TO BE TRUE--\" that\'s the way.', NULL, NULL, NULL),
(2, 'Barton Klein IV', 'barton-klein-iv', 1, 'images/default.jpg', 'Dormouse, and the Cat said, waving its head made.', NULL, NULL, NULL),
(3, 'Mrs. Marisa Cummerata', 'mrs-marisa-cummerata', 1, 'images/default.jpg', 'Alice went on one of Mercia and all round, she.', NULL, NULL, NULL),
(4, 'Mr. Jacques Lockman IV', 'mr-jacques-lockman-iv', 1, 'images/default.jpg', 'Gryphon. \'Do I shall get out of everything.', NULL, NULL, NULL),
(5, 'Reyna Wisoky V', 'reyna-wisoky-v', 1, 'images/default.jpg', 'Dormouse, not noticed a crash of thing is, it.', NULL, NULL, NULL),
(6, 'Ryder Fadel', 'ryder-fadel', 1, 'images/default.jpg', 'I hadn\'t gone in a friend of WHAT? The King said.', NULL, NULL, NULL),
(7, 'Dr. Chase Flatley DVM', 'dr-chase-flatley-dvm', 1, 'images/default.jpg', 'Soup? Pennyworth only bowed and eels, of them.', NULL, NULL, NULL),
(8, 'Samara Hessel', 'samara-hessel', 1, 'images/default.jpg', 'Alice; \'all I had changed his grey locks, \'I.', NULL, NULL, NULL),
(9, 'Prof. Cielo Bashirian', 'prof-cielo-bashirian', 1, 'images/default.jpg', 'And it\'ll seem to cry again. Suddenly she soon.', NULL, NULL, NULL),
(10, 'Dr. Dorthy Nitzsche PhD', 'dr-dorthy-nitzsche-phd', 1, 'images/default.jpg', 'London is a crowd below, and the garden you.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_share_category_details`
--

CREATE TABLE `post_share_category_details` (
  `post_id` bigint(20) NOT NULL,
  `cate_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_share_category_details`
--

INSERT INTO `post_share_category_details` (`post_id`, `cate_id`) VALUES
(1, 6),
(2, 1),
(3, 5),
(4, 9),
(5, 7),
(6, 7),
(7, 1),
(8, 4),
(9, 5),
(10, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_views`
--

CREATE TABLE `post_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `rateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admintrator', NULL, NULL),
(2, 'Staff', NULL, NULL),
(3, 'Teacher', NULL, NULL),
(4, 'Student', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://c0.klipartz.com/pngpicture/136/22/gratis-png-perfil-de-usuario-computadora-iconos-chica-cliente-avatar.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 4,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `birth_date`, `gender`, `google_id`, `avatar`, `email_verified_at`, `password`, `role_id`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Khương Nguyễn Văn', 'khuongnvph07998@fpt.edu.vn', NULL, NULL, NULL, '112956075977864431957', 'https://lh3.googleusercontent.com/a-/AOh14GiFNShD-BJOnKkPXHX4KLGs7xs8vAzNFpsl8ydSxw=s96-c', NULL, '$2y$10$3kWa2aywMw0YMI6EgBDV4.yDXQ29irOb6JfH8wCTTJazem8rXW2HS', 1, NULL, NULL, '2021-09-12 15:46:36', '2021-09-12 15:46:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `author_books`
--
ALTER TABLE `author_books`
  ADD PRIMARY KEY (`book_id`,`author_id`);

--
-- Chỉ mục cho bảng `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `book_audio`
--
ALTER TABLE `book_audio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_audio_book_id_foreign` (`book_id`);

--
-- Chỉ mục cho bảng `book_galleries`
--
ALTER TABLE `book_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_galleries_book_id_foreign` (`book_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `category_books`
--
ALTER TABLE `category_books`
  ADD PRIMARY KEY (`book_id`,`cate_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  ADD KEY `comments_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_file_data`
--
ALTER TABLE `post_file_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_file_data_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `post_shares`
--
ALTER TABLE `post_shares`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_shares_title_unique` (`title`),
  ADD UNIQUE KEY `post_shares_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `post_share_categories`
--
ALTER TABLE `post_share_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_share_categories_name_unique` (`name`),
  ADD UNIQUE KEY `post_share_categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `post_share_category_details`
--
ALTER TABLE `post_share_category_details`
  ADD PRIMARY KEY (`post_id`,`cate_id`);

--
-- Chỉ mục cho bảng `post_views`
--
ALTER TABLE `post_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_views_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `book_audio`
--
ALTER TABLE `book_audio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `book_galleries`
--
ALTER TABLE `book_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post_file_data`
--
ALTER TABLE `post_file_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post_shares`
--
ALTER TABLE `post_shares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `post_share_categories`
--
ALTER TABLE `post_share_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `post_views`
--
ALTER TABLE `post_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `book_audio`
--
ALTER TABLE `book_audio`
  ADD CONSTRAINT `book_audio_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Các ràng buộc cho bảng `book_galleries`
--
ALTER TABLE `book_galleries`
  ADD CONSTRAINT `book_galleries_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Các ràng buộc cho bảng `post_file_data`
--
ALTER TABLE `post_file_data`
  ADD CONSTRAINT `post_file_data_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `post_shares` (`id`);

--
-- Các ràng buộc cho bảng `post_views`
--
ALTER TABLE `post_views`
  ADD CONSTRAINT `post_views_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `post_shares` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
