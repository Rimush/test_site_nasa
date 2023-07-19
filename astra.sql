-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 20 2023 г., 02:57
-- Версия сервера: 5.7.39
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `astra`
--

-- --------------------------------------------------------

--
-- Структура таблицы `astra_config`
--

CREATE TABLE `astra_config` (
  `id` bigint(20) NOT NULL,
  `header` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `astra_config`
--

INSERT INTO `astra_config` (`id`, `header`, `description`) VALUES
(1, 'Космическое агентство', 'Национальное управление по аэронавтике и исследованию космического пространства — ведомство, относящееся к федеральному правительству США и подчиняющееся непосредственно президенту США.');

-- --------------------------------------------------------

--
-- Структура таблицы `astra_menu`
--

CREATE TABLE `astra_menu` (
  `id` bigint(20) NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `astra_menu`
--

INSERT INTO `astra_menu` (`id`, `title`, `link`, `order`) VALUES
(1, 'Преимущества', '#plus', 1),
(2, 'Фотографии', '#photo', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `astra_plus`
--

CREATE TABLE `astra_plus` (
  `id` bigint(20) NOT NULL,
  `text` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `astra_plus`
--

INSERT INTO `astra_plus` (`id`, `text`, `order`, `image_id`) VALUES
(1, 'Спейс шаттлы — пилотируемые корабли', 1, 4),
(2, 'Целимся на Луну и Марс', 3, 3),
(3, 'Лучшее телескопическое оборудование', 2, 5),
(4, 'Золотая медаль по научным исследованиям', 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `astra_slider`
--

CREATE TABLE `astra_slider` (
  `id` bigint(20) NOT NULL,
  `alt` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `astra_slider`
--

INSERT INTO `astra_slider` (`id`, `alt`, `order`, `image_id`) VALUES
(1, 'Planet9_Wallpaper_5000x2813.jpg', 1, 11),
(2, 'Acer_Wallpaper_01_5000x2814.jpg', 2, 9),
(3, 'Acer_Wallpaper_03_5000x2814.jpg', 3, 10),
(4, 'Acer_Wallpaper_02_5000x2813.jpg', 4, 8),
(5, 'img3.png', 5, 7),
(6, 'img2.png', 6, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add source', 7, 'add_source'),
(26, 'Can change source', 7, 'change_source'),
(27, 'Can delete source', 7, 'delete_source'),
(28, 'Can view source', 7, 'view_source'),
(29, 'Can add thumbnail', 8, 'add_thumbnail'),
(30, 'Can change thumbnail', 8, 'change_thumbnail'),
(31, 'Can delete thumbnail', 8, 'delete_thumbnail'),
(32, 'Can view thumbnail', 8, 'view_thumbnail'),
(33, 'Can add thumbnail dimensions', 9, 'add_thumbnaildimensions'),
(34, 'Can change thumbnail dimensions', 9, 'change_thumbnaildimensions'),
(35, 'Can delete thumbnail dimensions', 9, 'delete_thumbnaildimensions'),
(36, 'Can view thumbnail dimensions', 9, 'view_thumbnaildimensions'),
(37, 'Can add clipboard', 10, 'add_clipboard'),
(38, 'Can change clipboard', 10, 'change_clipboard'),
(39, 'Can delete clipboard', 10, 'delete_clipboard'),
(40, 'Can view clipboard', 10, 'view_clipboard'),
(41, 'Can add clipboard item', 11, 'add_clipboarditem'),
(42, 'Can change clipboard item', 11, 'change_clipboarditem'),
(43, 'Can delete clipboard item', 11, 'delete_clipboarditem'),
(44, 'Can view clipboard item', 11, 'view_clipboarditem'),
(45, 'Can add file', 12, 'add_file'),
(46, 'Can change file', 12, 'change_file'),
(47, 'Can delete file', 12, 'delete_file'),
(48, 'Can view file', 12, 'view_file'),
(49, 'Can add Folder', 13, 'add_folder'),
(50, 'Can change Folder', 13, 'change_folder'),
(51, 'Can delete Folder', 13, 'delete_folder'),
(52, 'Can view Folder', 13, 'view_folder'),
(53, 'Can use directory listing', 13, 'can_use_directory_listing'),
(54, 'Can add folder permission', 14, 'add_folderpermission'),
(55, 'Can change folder permission', 14, 'change_folderpermission'),
(56, 'Can delete folder permission', 14, 'delete_folderpermission'),
(57, 'Can view folder permission', 14, 'view_folderpermission'),
(58, 'Can add image', 15, 'add_image'),
(59, 'Can change image', 15, 'change_image'),
(60, 'Can delete image', 15, 'delete_image'),
(61, 'Can view image', 15, 'view_image'),
(62, 'Can add thumbnail option', 16, 'add_thumbnailoption'),
(63, 'Can change thumbnail option', 16, 'change_thumbnailoption'),
(64, 'Can delete thumbnail option', 16, 'delete_thumbnailoption'),
(65, 'Can view thumbnail option', 16, 'view_thumbnailoption'),
(66, 'Can add меню', 17, 'add_menu'),
(67, 'Can change меню', 17, 'change_menu'),
(68, 'Can delete меню', 17, 'delete_menu'),
(69, 'Can view меню', 17, 'view_menu'),
(70, 'Can add изображение', 18, 'add_slider'),
(71, 'Can change изображение', 18, 'change_slider'),
(72, 'Can delete изображение', 18, 'delete_slider'),
(73, 'Can view изображение', 18, 'view_slider'),
(74, 'Can add приемущество', 19, 'add_plus'),
(75, 'Can change приемущество', 19, 'change_plus'),
(76, 'Can delete приемущество', 19, 'delete_plus'),
(77, 'Can view приемущество', 19, 'view_plus'),
(78, 'Can add Параметры сайта', 20, 'add_config'),
(79, 'Can change Параметры сайта', 20, 'change_config'),
(80, 'Can delete Параметры сайта', 20, 'delete_config'),
(81, 'Can view Параметры сайта', 20, 'view_config');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$WYOaaglWFO10Bpe9Teh30t$BZnJxSsYuLNrNZ8E1gLlzcpDqiid9qGc5JyZC1Mo7fI=', '2023-07-19 17:31:48.953484', 1, 'admin', '', '', 'miv-mail@bk.ru', 1, 1, '2023-07-19 17:31:42.019674');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-07-19 17:32:16.403075', '1', '/images', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 13, 1),
(2, '2023-07-19 17:32:26.540106', '1', 'Настроить', 2, '[{\"changed\": {\"fields\": [\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a\", \"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\", \"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435\"]}}]', 20, 1),
(3, '2023-07-19 17:34:56.167140', '2', '/images/icons', 3, '', 13, 1),
(4, '2023-07-19 17:35:57.086929', '1', 'Plus object (1)', 1, '[{\"added\": {}}]', 19, 1),
(5, '2023-07-19 17:36:34.279810', '2', 'Plus object (2)', 1, '[{\"added\": {}}]', 19, 1),
(6, '2023-07-19 17:36:47.201341', '3', 'Plus object (3)', 1, '[{\"added\": {}}]', 19, 1),
(7, '2023-07-19 17:37:00.021085', '4', 'Plus object (4)', 1, '[{\"added\": {}}]', 19, 1),
(8, '2023-07-19 17:38:09.986969', '1', 'Преимущества', 1, '[{\"added\": {}}]', 17, 1),
(9, '2023-07-19 17:38:15.830246', '2', 'Фотографии', 1, '[{\"added\": {}}]', 17, 1),
(10, '2023-07-19 17:39:21.549703', '1', 'Slider object (1)', 1, '[{\"added\": {}}]', 18, 1),
(11, '2023-07-19 17:39:31.468921', '2', 'Slider object (2)', 1, '[{\"added\": {}}]', 18, 1),
(12, '2023-07-19 17:39:44.007264', '3', 'Slider object (3)', 1, '[{\"added\": {}}]', 18, 1),
(13, '2023-07-19 17:39:54.253756', '4', 'Slider object (4)', 1, '[{\"added\": {}}]', 18, 1),
(14, '2023-07-19 17:40:02.742147', '5', 'Slider object (5)', 1, '[{\"added\": {}}]', 18, 1),
(15, '2023-07-19 17:40:10.338159', '6', 'Slider object (6)', 1, '[{\"added\": {}}]', 18, 1),
(16, '2023-07-19 23:37:45.245604', '11', 'Картинка 1', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Default alt text\", \"Default caption\", \"\\u0420\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430\"]}}]', 15, 1),
(17, '2023-07-19 23:50:54.445440', '1', 'Plus object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435\"]}}]', 19, 1),
(18, '2023-07-19 23:51:01.774410', '3', 'Plus object (3)', 2, '[{\"changed\": {\"fields\": [\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435\"]}}]', 19, 1),
(19, '2023-07-19 23:51:09.115757', '2', 'Plus object (2)', 2, '[{\"changed\": {\"fields\": [\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435\"]}}]', 19, 1),
(20, '2023-07-19 23:51:14.550866', '4', 'Plus object (4)', 2, '[{\"changed\": {\"fields\": [\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435\"]}}]', 19, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(20, 'astra', 'config'),
(17, 'astra', 'menu'),
(19, 'astra', 'plus'),
(18, 'astra', 'slider'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'easy_thumbnails', 'source'),
(8, 'easy_thumbnails', 'thumbnail'),
(9, 'easy_thumbnails', 'thumbnaildimensions'),
(10, 'filer', 'clipboard'),
(11, 'filer', 'clipboarditem'),
(12, 'filer', 'file'),
(13, 'filer', 'folder'),
(14, 'filer', 'folderpermission'),
(15, 'filer', 'image'),
(16, 'filer', 'thumbnailoption'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-19 17:28:22.284202'),
(2, 'auth', '0001_initial', '2023-07-19 17:28:22.488409'),
(3, 'admin', '0001_initial', '2023-07-19 17:28:22.538954'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-19 17:28:22.546303'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-19 17:28:22.553184'),
(6, 'filer', '0001_initial', '2023-07-19 17:28:22.901332'),
(7, 'astra', '0001_initial', '2023-07-19 17:28:22.911629'),
(8, 'astra', '0002_alter_menu_options_menu_order_alter_menu_link_and_more', '2023-07-19 17:28:23.056630'),
(9, 'contenttypes', '0002_remove_content_type_name', '2023-07-19 17:28:23.103830'),
(10, 'auth', '0002_alter_permission_name_max_length', '2023-07-19 17:28:23.132490'),
(11, 'auth', '0003_alter_user_email_max_length', '2023-07-19 17:28:23.148501'),
(12, 'auth', '0004_alter_user_username_opts', '2023-07-19 17:28:23.160404'),
(13, 'auth', '0005_alter_user_last_login_null', '2023-07-19 17:28:23.183395'),
(14, 'auth', '0006_require_contenttypes_0002', '2023-07-19 17:28:23.187016'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2023-07-19 17:28:23.196950'),
(16, 'auth', '0008_alter_user_username_max_length', '2023-07-19 17:28:23.223867'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2023-07-19 17:28:23.249920'),
(18, 'auth', '0010_alter_group_name_max_length', '2023-07-19 17:28:23.296988'),
(19, 'auth', '0011_update_proxy_permissions', '2023-07-19 17:28:23.311144'),
(20, 'auth', '0012_alter_user_first_name_max_length', '2023-07-19 17:28:23.337375'),
(21, 'easy_thumbnails', '0001_initial', '2023-07-19 17:28:23.418516'),
(22, 'easy_thumbnails', '0002_thumbnaildimensions', '2023-07-19 17:28:23.449583'),
(23, 'filer', '0002_auto_20150606_2003', '2023-07-19 17:28:23.461627'),
(24, 'filer', '0003_thumbnailoption', '2023-07-19 17:28:23.474879'),
(25, 'filer', '0004_auto_20160328_1434', '2023-07-19 17:28:23.505212'),
(26, 'filer', '0005_auto_20160623_1425', '2023-07-19 17:28:23.533855'),
(27, 'filer', '0006_auto_20160623_1627', '2023-07-19 17:28:23.597858'),
(28, 'filer', '0007_auto_20161016_1055', '2023-07-19 17:28:23.608165'),
(29, 'filer', '0008_auto_20171117_1313', '2023-07-19 17:28:23.621172'),
(30, 'filer', '0009_auto_20171220_1635', '2023-07-19 17:28:23.654529'),
(31, 'filer', '0010_auto_20180414_2058', '2023-07-19 17:28:23.665297'),
(32, 'filer', '0011_auto_20190418_0137', '2023-07-19 17:28:23.744103'),
(33, 'filer', '0012_file_mime_type', '2023-07-19 17:28:23.784326'),
(34, 'filer', '0013_image_width_height_to_float', '2023-07-19 17:28:23.832803'),
(35, 'filer', '0014_folder_permission_choices', '2023-07-19 17:28:23.856184'),
(36, 'filer', '0015_alter_file_owner_alter_file_polymorphic_ctype_and_more', '2023-07-19 17:28:23.885814'),
(37, 'filer', '0016_alter_folder_index_together_remove_folder_level_and_more', '2023-07-19 17:28:23.992136'),
(38, 'filer', '0017_image__transparent', '2023-07-19 17:28:24.021981'),
(39, 'sessions', '0001_initial', '2023-07-19 17:28:24.040302'),
(40, 'astra', '0003_remove_plus_image', '2023-07-19 23:48:36.667736'),
(41, 'astra', '0004_remove_config_image_plus_image', '2023-07-19 23:50:15.743191');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gyrvotgaqme0p4rqxcdquaq0nvo71ox9', '.eJxVjjsOwyAQRO9CHSE-NoiU6XMGtCy7sRNkJIOrKHePLblI2nkzT_MWEbY-xa3RGucsrkKLy2-WAF-0HCA_YXlUiXXp65zkUZEnbfJeM5Xb2f0TTNCmfQ0eh2HklKx2CoMhg8aQAqes8WNgsuyVyzAGx0F7cM7apAEVIg6JeJfyXHZfgdYj15LPw_bzBcwZQSk:1qMGwp:D3KGxk-4hFNww1t2N1UWW6jZLPOtsz9tBOIpM102DVg', '2023-08-02 23:51:11.936208');

-- --------------------------------------------------------

--
-- Структура таблицы `easy_thumbnails_source`
--

CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL,
  `storage_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `easy_thumbnails_source`
--

INSERT INTO `easy_thumbnails_source` (`id`, `storage_hash`, `name`, `modified`) VALUES
(1, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/2a/ac/2aac9599-d233-4e3f-a12d-de5b9cccfb41/photo.png', '2023-07-19 17:32:45.190016'),
(2, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/51/c1/51c1f0f7-26b8-4aac-af57-f9bc01e30b2a/medal.png', '2023-07-19 23:14:21.975153'),
(3, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/93/f4/93f4f305-0ecd-46ee-b358-6d08ae97a8d2/moon.png', '2023-07-19 23:14:21.963337'),
(4, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/dc/2e/dc2ec637-9860-4a7b-9a9f-e3b652071ea0/shuttle.png', '2023-07-19 23:14:21.930210'),
(5, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/0c/c1/0cc10081-ac87-41fe-9a1f-063d559e4c17/telescope.png', '2023-07-19 23:14:21.948409'),
(6, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/cf/09/cf09926c-661b-41c5-9780-6f0d3f498ef1/img2.png', '2023-07-19 23:17:34.447359'),
(7, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/ca/8f/ca8fa6ce-f24e-4fee-9312-0e79090182a0/img3.png', '2023-07-19 23:17:34.426926'),
(8, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/df/39/df390f6d-db42-4a0a-bc4d-2ea8747d8e4a/acer_wallpaper_02_5000x2813.jpg', '2023-07-19 23:17:34.374260'),
(9, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/a1/29/a1292fd4-da5a-4ebf-9b65-1802180437d1/acer_wallpaper_01_5000x2814.jpg', '2023-07-19 23:17:33.815685'),
(10, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/f0/52/f052cfb7-32b7-47f6-87c7-5f3e1dde1487/acer_wallpaper_03_5000x2814.jpg', '2023-07-19 23:17:34.178171'),
(11, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public/19/8a/198a189c-9f4f-4f00-96c5-03d3a34d2647/planet9_wallpaper_5000x2813.jpg', '2023-07-19 23:37:09.556154');

-- --------------------------------------------------------

--
-- Структура таблицы `easy_thumbnails_thumbnail`
--

CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL,
  `storage_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `easy_thumbnails_thumbnail`
--

INSERT INTO `easy_thumbnails_thumbnail` (`id`, `storage_hash`, `name`, `modified`, `source_id`) VALUES
(1, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/2a/ac/2aac9599-d233-4e3f-a12d-de5b9cccfb41\\photo.png__180x180_crop_subsampling-2_upscale.png', '2023-07-19 17:32:22.113362', 1),
(2, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/2a/ac/2aac9599-d233-4e3f-a12d-de5b9cccfb41\\photo.png__40x40_crop_subsampling-2.png', '2023-07-19 17:32:22.345800', 1),
(3, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/2a/ac/2aac9599-d233-4e3f-a12d-de5b9cccfb41\\photo.png__80x80_crop_subsampling-2.png', '2023-07-19 17:32:24.236354', 1),
(4, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/2a/ac/2aac9599-d233-4e3f-a12d-de5b9cccfb41\\photo.png__160x160_crop_subsampling-2.png', '2023-07-19 17:32:45.195028', 1),
(5, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/51/c1/51c1f0f7-26b8-4aac-af57-f9bc01e30b2a\\medal.png__180x180_crop_subsampling-2_upscale.png', '2023-07-19 17:35:10.432116', 2),
(6, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/dc/2e/dc2ec637-9860-4a7b-9a9f-e3b652071ea0\\shuttle.png__180x180_crop_subsampling-2_upscale.png', '2023-07-19 17:35:10.429086', 4),
(7, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/93/f4/93f4f305-0ecd-46ee-b358-6d08ae97a8d2\\moon.png__180x180_crop_subsampling-2_upscale.png', '2023-07-19 17:35:10.435104', 3),
(8, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/0c/c1/0cc10081-ac87-41fe-9a1f-063d559e4c17\\telescope.png__180x180_crop_subsampling-2_upscale.png', '2023-07-19 17:35:10.487459', 5),
(9, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/93/f4/93f4f305-0ecd-46ee-b358-6d08ae97a8d2\\moon.png__40x40_crop_subsampling-2.png', '2023-07-19 17:35:10.670316', 3),
(10, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/0c/c1/0cc10081-ac87-41fe-9a1f-063d559e4c17\\telescope.png__40x40_crop_subsampling-2.png', '2023-07-19 17:35:10.671470', 5),
(11, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/dc/2e/dc2ec637-9860-4a7b-9a9f-e3b652071ea0\\shuttle.png__40x40_crop_subsampling-2.png', '2023-07-19 17:35:10.678435', 4),
(12, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/51/c1/51c1f0f7-26b8-4aac-af57-f9bc01e30b2a\\medal.png__40x40_crop_subsampling-2.png', '2023-07-19 17:35:10.684452', 2),
(13, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/0c/c1/0cc10081-ac87-41fe-9a1f-063d559e4c17\\telescope.png__80x80_crop_subsampling-2.png', '2023-07-19 17:35:14.277854', 5),
(14, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/0c/c1/0cc10081-ac87-41fe-9a1f-063d559e4c17\\telescope.png__210x210_subsampling-2_upscale.png', '2023-07-19 17:35:50.351397', 5),
(15, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/0c/c1/0cc10081-ac87-41fe-9a1f-063d559e4c17\\telescope.png__420x420_subsampling-2_upscale.png', '2023-07-19 17:35:50.385208', 5),
(16, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/dc/2e/dc2ec637-9860-4a7b-9a9f-e3b652071ea0\\shuttle.png__80x80_crop_subsampling-2.png', '2023-07-19 17:35:55.836340', 4),
(17, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/93/f4/93f4f305-0ecd-46ee-b358-6d08ae97a8d2\\moon.png__80x80_crop_subsampling-2.png', '2023-07-19 17:36:10.348990', 3),
(18, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/51/c1/51c1f0f7-26b8-4aac-af57-f9bc01e30b2a\\medal.png__80x80_crop_subsampling-2.png', '2023-07-19 17:36:52.230877', 2),
(19, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/cf/09/cf09926c-661b-41c5-9780-6f0d3f498ef1\\img2.png__180x180_q85_crop_subsampling-2_upscale.jpg', '2023-07-19 17:38:58.777810', 6),
(20, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/ca/8f/ca8fa6ce-f24e-4fee-9312-0e79090182a0\\img3.png__180x180_crop_subsampling-2_upscale.png', '2023-07-19 17:38:58.832509', 7),
(21, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/cf/09/cf09926c-661b-41c5-9780-6f0d3f498ef1\\img2.png__40x40_q85_crop_subsampling-2.jpg', '2023-07-19 17:38:58.998597', 6),
(22, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/ca/8f/ca8fa6ce-f24e-4fee-9312-0e79090182a0\\img3.png__40x40_crop_subsampling-2.png', '2023-07-19 17:38:59.020312', 7),
(23, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/df/39/df390f6d-db42-4a0a-bc4d-2ea8747d8e4a\\acer_wallpaper_02_5000x2813.jpg__180x180_q85_crop_subsampling-2_upscale.jpg', '2023-07-19 17:39:08.286666', 8),
(24, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/a1/29/a1292fd4-da5a-4ebf-9b65-1802180437d1\\acer_wallpaper_01_5000x2814.jpg__180x180_q85_crop_subsampling-2_upscale.jpg', '2023-07-19 17:39:08.313585', 9),
(25, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/f0/52/f052cfb7-32b7-47f6-87c7-5f3e1dde1487\\acer_wallpaper_03_5000x2814.jpg__180x180_q85_crop_subsampling-2_upscale.jpg', '2023-07-19 17:39:08.413870', 10),
(26, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/8a/198a189c-9f4f-4f00-96c5-03d3a34d2647\\planet9_wallpaper_5000x2813.jpg__180x180_q85_crop_subsampling-2_upscale.jpg', '2023-07-19 17:39:08.645428', 11),
(27, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/df/39/df390f6d-db42-4a0a-bc4d-2ea8747d8e4a\\acer_wallpaper_02_5000x2813.jpg__40x40_q85_crop_subsampling-2.jpg', '2023-07-19 17:39:09.084439', 8),
(28, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/8a/198a189c-9f4f-4f00-96c5-03d3a34d2647\\planet9_wallpaper_5000x2813.jpg__40x40_q85_crop_subsampling-2.jpg', '2023-07-19 17:39:09.116983', 11),
(29, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/a1/29/a1292fd4-da5a-4ebf-9b65-1802180437d1\\acer_wallpaper_01_5000x2814.jpg__40x40_q85_crop_subsampling-2.jpg', '2023-07-19 17:39:09.120019', 9),
(30, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/f0/52/f052cfb7-32b7-47f6-87c7-5f3e1dde1487\\acer_wallpaper_03_5000x2814.jpg__40x40_q85_crop_subsampling-2.jpg', '2023-07-19 17:39:09.179729', 10),
(31, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/8a/198a189c-9f4f-4f00-96c5-03d3a34d2647\\planet9_wallpaper_5000x2813.jpg__80x80_q85_crop_subsampling-2.jpg', '2023-07-19 17:39:12.497037', 11),
(32, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/a1/29/a1292fd4-da5a-4ebf-9b65-1802180437d1\\acer_wallpaper_01_5000x2814.jpg__80x80_q85_crop_subsampling-2.jpg', '2023-07-19 17:39:28.120455', 9),
(33, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/f0/52/f052cfb7-32b7-47f6-87c7-5f3e1dde1487\\acer_wallpaper_03_5000x2814.jpg__80x80_q85_crop_subsampling-2.jpg', '2023-07-19 17:39:42.465247', 10),
(34, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/df/39/df390f6d-db42-4a0a-bc4d-2ea8747d8e4a\\acer_wallpaper_02_5000x2813.jpg__80x80_q85_crop_subsampling-2.jpg', '2023-07-19 17:39:52.880904', 8),
(35, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/ca/8f/ca8fa6ce-f24e-4fee-9312-0e79090182a0\\img3.png__80x80_crop_subsampling-2.png', '2023-07-19 17:40:00.480542', 7),
(36, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/cf/09/cf09926c-661b-41c5-9780-6f0d3f498ef1\\img2.png__80x80_q85_crop_subsampling-2.jpg', '2023-07-19 17:40:08.426301', 6),
(37, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/8a/198a189c-9f4f-4f00-96c5-03d3a34d2647\\planet9_wallpaper_5000x2813.jpg__165x165_q85_crop_subsampling-2.jpg', '2023-07-19 17:40:14.359879', 11),
(38, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/a1/29/a1292fd4-da5a-4ebf-9b65-1802180437d1\\acer_wallpaper_01_5000x2814.jpg__165x165_q85_crop_subsampling-2.jpg', '2023-07-19 17:40:14.574062', 9),
(39, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/f0/52/f052cfb7-32b7-47f6-87c7-5f3e1dde1487\\acer_wallpaper_03_5000x2814.jpg__165x165_q85_crop_subsampling-2.jpg', '2023-07-19 17:40:14.879505', 10),
(40, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/df/39/df390f6d-db42-4a0a-bc4d-2ea8747d8e4a\\acer_wallpaper_02_5000x2813.jpg__165x165_q85_crop_subsampling-2.jpg', '2023-07-19 17:40:15.066559', 8),
(41, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/ca/8f/ca8fa6ce-f24e-4fee-9312-0e79090182a0\\img3.png__165x165_crop_subsampling-2.png', '2023-07-19 17:40:15.118091', 7),
(42, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/cf/09/cf09926c-661b-41c5-9780-6f0d3f498ef1\\img2.png__165x165_q85_crop_subsampling-2.jpg', '2023-07-19 17:40:15.133409', 6),
(43, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/dc/2e/dc2ec637-9860-4a7b-9a9f-e3b652071ea0\\shuttle.png__50x50_crop_subsampling-2.png', '2023-07-19 23:14:21.935759', 4),
(44, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/0c/c1/0cc10081-ac87-41fe-9a1f-063d559e4c17\\telescope.png__50x50_crop_subsampling-2.png', '2023-07-19 23:14:21.951417', 5),
(45, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/93/f4/93f4f305-0ecd-46ee-b358-6d08ae97a8d2\\moon.png__50x50_crop_subsampling-2.png', '2023-07-19 23:14:21.965338', 3),
(46, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/51/c1/51c1f0f7-26b8-4aac-af57-f9bc01e30b2a\\medal.png__50x50_crop_subsampling-2.png', '2023-07-19 23:14:21.978762', 2),
(47, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/8a/198a189c-9f4f-4f00-96c5-03d3a34d2647\\planet9_wallpaper_5000x2813.jpg__50x0_q85_crop_subsampling-2.jpg', '2023-07-19 23:16:57.901319', 11),
(48, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/a1/29/a1292fd4-da5a-4ebf-9b65-1802180437d1\\acer_wallpaper_01_5000x2814.jpg__50x0_q85_crop_subsampling-2.jpg', '2023-07-19 23:16:58.090463', 9),
(49, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/f0/52/f052cfb7-32b7-47f6-87c7-5f3e1dde1487\\acer_wallpaper_03_5000x2814.jpg__50x0_q85_crop_subsampling-2.jpg', '2023-07-19 23:16:58.383759', 10),
(50, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/df/39/df390f6d-db42-4a0a-bc4d-2ea8747d8e4a\\acer_wallpaper_02_5000x2813.jpg__50x0_q85_crop_subsampling-2.jpg', '2023-07-19 23:16:58.568902', 8),
(51, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/ca/8f/ca8fa6ce-f24e-4fee-9312-0e79090182a0\\img3.png__50x0_crop_subsampling-2.png', '2023-07-19 23:16:58.605855', 7),
(52, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/cf/09/cf09926c-661b-41c5-9780-6f0d3f498ef1\\img2.png__50x0_q85_crop_subsampling-2.jpg', '2023-07-19 23:16:58.621965', 6),
(53, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/8a/198a189c-9f4f-4f00-96c5-03d3a34d2647\\planet9_wallpaper_5000x2813.jpg__0x50_q85_crop_subsampling-2.jpg', '2023-07-19 23:17:33.599444', 11),
(54, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/a1/29/a1292fd4-da5a-4ebf-9b65-1802180437d1\\acer_wallpaper_01_5000x2814.jpg__0x50_q85_crop_subsampling-2.jpg', '2023-07-19 23:17:33.819732', 9),
(55, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/f0/52/f052cfb7-32b7-47f6-87c7-5f3e1dde1487\\acer_wallpaper_03_5000x2814.jpg__0x50_q85_crop_subsampling-2.jpg', '2023-07-19 23:17:34.181586', 10),
(56, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/df/39/df390f6d-db42-4a0a-bc4d-2ea8747d8e4a\\acer_wallpaper_02_5000x2813.jpg__0x50_q85_crop_subsampling-2.jpg', '2023-07-19 23:17:34.377265', 8),
(57, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/ca/8f/ca8fa6ce-f24e-4fee-9312-0e79090182a0\\img3.png__0x50_crop_subsampling-2.png', '2023-07-19 23:17:34.430091', 7),
(58, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/cf/09/cf09926c-661b-41c5-9780-6f0d3f498ef1\\img2.png__0x50_q85_crop_subsampling-2.jpg', '2023-07-19 23:17:34.450817', 6),
(59, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/8a/198a189c-9f4f-4f00-96c5-03d3a34d2647\\planet9_wallpaper_5000x2813.jpg__160x160_q85_crop_subsampling-2.jpg', '2023-07-19 23:37:06.819586', 11),
(60, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/8a/198a189c-9f4f-4f00-96c5-03d3a34d2647\\planet9_wallpaper_5000x2813.jpg__210x119_q85_subsampling-2_upscale.jpg', '2023-07-19 23:37:09.559900', 11),
(61, 'f9bde26a1556cd667f742bd34ec7c55e', 'filer_public_thumbnails\\filer_public/19/8a/198a189c-9f4f-4f00-96c5-03d3a34d2647\\planet9_wallpaper_5000x2813.jpg__420x238_q85_subsampling-2_upscale.jpg', '2023-07-19 23:37:09.790305', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `easy_thumbnails_thumbnaildimensions`
--

CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `filer_clipboard`
--

CREATE TABLE `filer_clipboard` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `filer_clipboard`
--

INSERT INTO `filer_clipboard` (`id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `filer_clipboarditem`
--

CREATE TABLE `filer_clipboarditem` (
  `id` int(11) NOT NULL,
  `clipboard_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `filer_file`
--

CREATE TABLE `filer_file` (
  `id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_file_size` bigint(20) DEFAULT NULL,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `filer_file`
--

INSERT INTO `filer_file` (`id`, `file`, `_file_size`, `sha1`, `has_all_mandatory_data`, `original_filename`, `name`, `description`, `uploaded_at`, `modified_at`, `is_public`, `folder_id`, `owner_id`, `polymorphic_ctype_id`, `mime_type`) VALUES
(1, 'filer_public/2a/ac/2aac9599-d233-4e3f-a12d-de5b9cccfb41/photo.png', 493051, 'ee54c25fe737a363fd2fe4a4180e05ada4dc52ee', 0, 'photo.png', '', NULL, '2023-07-19 17:32:21.980456', '2023-07-19 17:32:21.980456', 1, 1, 1, 15, 'image/png'),
(2, 'filer_public/51/c1/51c1f0f7-26b8-4aac-af57-f9bc01e30b2a/medal.png', 674, 'a084d360c5622ba026a69528f5296d9bb183bdae', 0, 'medal.png', '', NULL, '2023-07-19 17:35:10.343480', '2023-07-19 17:35:10.343480', 1, 3, 1, 15, 'image/png'),
(3, 'filer_public/93/f4/93f4f305-0ecd-46ee-b358-6d08ae97a8d2/moon.png', 804, 'a02eae2c7fd4f99f6b7312b97280eda42ecc9d2d', 0, 'moon.png', '', NULL, '2023-07-19 17:35:10.346035', '2023-07-19 17:35:10.346035', 1, 3, 1, 15, 'image/png'),
(4, 'filer_public/dc/2e/dc2ec637-9860-4a7b-9a9f-e3b652071ea0/shuttle.png', 532, 'd765a75c64a00012dff5572bfeba7c034b98b190', 0, 'shuttle.png', '', NULL, '2023-07-19 17:35:10.347047', '2023-07-19 17:35:10.347047', 1, 3, 1, 15, 'image/png'),
(5, 'filer_public/0c/c1/0cc10081-ac87-41fe-9a1f-063d559e4c17/telescope.png', 679, 'c8376443395e37fc646bb132f98cd87ac74474d0', 0, 'telescope.png', '', NULL, '2023-07-19 17:35:10.472802', '2023-07-19 17:35:10.472802', 1, 3, 1, 15, 'image/png'),
(6, 'filer_public/cf/09/cf09926c-661b-41c5-9780-6f0d3f498ef1/img2.png', 40179, 'ceeb55c121a81b32dd951e52d64981a2ef89a53c', 0, 'img2.png', '', NULL, '2023-07-19 17:38:58.754711', '2023-07-19 17:38:58.754711', 1, 4, 1, 15, 'image/png'),
(7, 'filer_public/ca/8f/ca8fa6ce-f24e-4fee-9312-0e79090182a0/img3.png', 729728, 'faf5bee6007b22c839816e0e5a605d7d2150507a', 0, 'img3.png', '', NULL, '2023-07-19 17:38:58.762349', '2023-07-19 17:38:58.762349', 1, 4, 1, 15, 'image/png'),
(8, 'filer_public/df/39/df390f6d-db42-4a0a-bc4d-2ea8747d8e4a/acer_wallpaper_02_5000x2813.jpg', 5151526, '76ac05c1ea9d0bc00c9a831e52aa252f5102c132', 0, 'Acer_Wallpaper_02_5000x2813.jpg', '', NULL, '2023-07-19 17:39:08.030568', '2023-07-19 17:39:08.030568', 1, 4, 1, 15, 'image/jpeg'),
(9, 'filer_public/a1/29/a1292fd4-da5a-4ebf-9b65-1802180437d1/acer_wallpaper_01_5000x2814.jpg', 6056936, 'a5b50d324d2537b037cd3df82a87035b70de09a2', 0, 'Acer_Wallpaper_01_5000x2814.jpg', '', NULL, '2023-07-19 17:39:08.038023', '2023-07-19 17:39:08.038023', 1, 4, 1, 15, 'image/jpeg'),
(10, 'filer_public/f0/52/f052cfb7-32b7-47f6-87c7-5f3e1dde1487/acer_wallpaper_03_5000x2814.jpg', 9005154, 'eb848f9f90389f38fa9b0fd1e31f1fc41bfd1392', 0, 'Acer_Wallpaper_03_5000x2814.jpg', '', NULL, '2023-07-19 17:39:08.045361', '2023-07-19 17:39:08.045361', 1, 4, 1, 15, 'image/jpeg'),
(11, 'filer_public/19/8a/198a189c-9f4f-4f00-96c5-03d3a34d2647/planet9_wallpaper_5000x2813.jpg', 5761442, 'de549ec8c0bbf008d7b58e176b333b9f25f5deb8', 1, 'Planet9_Wallpaper_5000x2813.jpg', 'Картинка 1', 'Картинка 1', '2023-07-19 17:39:08.439451', '2023-07-19 23:37:45.241762', 1, 4, 1, 15, 'image/jpeg');

-- --------------------------------------------------------

--
-- Структура таблицы `filer_folder`
--

CREATE TABLE `filer_folder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `filer_folder`
--

INSERT INTO `filer_folder` (`id`, `name`, `uploaded_at`, `created_at`, `modified_at`, `owner_id`, `parent_id`) VALUES
(1, 'images', '2023-07-19 17:32:11.260123', '2023-07-19 17:32:11.260123', '2023-07-19 17:32:16.401463', 1, NULL),
(3, 'icons', '2023-07-19 17:35:02.031248', '2023-07-19 17:35:02.031248', '2023-07-19 17:35:02.031248', 1, NULL),
(4, 'slider', '2023-07-19 17:38:46.185338', '2023-07-19 17:38:46.185338', '2023-07-19 17:38:46.185338', 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `filer_folderpermission`
--

CREATE TABLE `filer_folderpermission` (
  `id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint(6) DEFAULT NULL,
  `can_read` smallint(6) DEFAULT NULL,
  `can_add_children` smallint(6) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `filer_image`
--

CREATE TABLE `filer_image` (
  `file_ptr_id` int(11) NOT NULL,
  `_height` double DEFAULT NULL,
  `_width` double DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_transparent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `filer_image`
--

INSERT INTO `filer_image` (`file_ptr_id`, `_height`, `_width`, `date_taken`, `default_alt_text`, `default_caption`, `author`, `must_always_publish_author_credit`, `must_always_publish_copyright`, `subject_location`, `_transparent`) VALUES
(1, 457, 457, '2023-07-19 17:32:21.968480', NULL, NULL, NULL, 0, 0, '', 1),
(2, 65, 65, '2023-07-19 17:35:10.331582', NULL, NULL, NULL, 0, 0, '', 1),
(3, 65, 65, '2023-07-19 17:35:10.333710', NULL, NULL, NULL, 0, 0, '', 1),
(4, 65, 65, '2023-07-19 17:35:10.333710', NULL, NULL, NULL, 0, 0, '', 1),
(5, 65, 65, '2023-07-19 17:35:10.466395', NULL, NULL, NULL, 0, 0, '', 1),
(6, 420, 750, '2023-07-19 17:38:58.743517', NULL, NULL, NULL, 0, 0, '', 0),
(7, 892, 1440, '2023-07-19 17:38:58.752713', NULL, NULL, NULL, 0, 0, '', 1),
(8, 2813, 5000, '2023-07-19 17:39:08.013508', NULL, NULL, NULL, 0, 0, '', 0),
(9, 2814, 5000, '2023-07-19 17:39:08.013508', NULL, NULL, NULL, 0, 0, '', 0),
(10, 2814, 5000, '2023-07-19 17:39:08.015002', NULL, NULL, NULL, 0, 0, '', 0),
(11, 2813, 5000, '2023-07-19 17:39:08.426760', 'Картинка 1', 'Картинка 1', NULL, 0, 0, '2415,1369', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `filer_thumbnailoption`
--

CREATE TABLE `filer_thumbnailoption` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `astra_config`
--
ALTER TABLE `astra_config`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `astra_menu`
--
ALTER TABLE `astra_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `astra_plus`
--
ALTER TABLE `astra_plus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astra_plus_image_id_532da3ba` (`image_id`);

--
-- Индексы таблицы `astra_slider`
--
ALTER TABLE `astra_slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astra_slider_image_id_a0630449` (`image_id`);

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индексы таблицы `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  ADD KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  ADD KEY `easy_thumbnails_source_name_5fe0edc6` (`name`);

--
-- Индексы таблицы `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  ADD KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  ADD KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  ADD KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`);

--
-- Индексы таблицы `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thumbnail_id` (`thumbnail_id`);

--
-- Индексы таблицы `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`),
  ADD KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`);

--
-- Индексы таблицы `filer_file`
--
ALTER TABLE `filer_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  ADD KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`),
  ADD KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`);

--
-- Индексы таблицы `filer_folder`
--
ALTER TABLE `filer_folder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  ADD KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`);

--
-- Индексы таблицы `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  ADD KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  ADD KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `filer_image`
--
ALTER TABLE `filer_image`
  ADD PRIMARY KEY (`file_ptr_id`);

--
-- Индексы таблицы `filer_thumbnailoption`
--
ALTER TABLE `filer_thumbnailoption`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `astra_config`
--
ALTER TABLE `astra_config`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `astra_menu`
--
ALTER TABLE `astra_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `astra_plus`
--
ALTER TABLE `astra_plus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `astra_slider`
--
ALTER TABLE `astra_slider`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `filer_file`
--
ALTER TABLE `filer_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `filer_folder`
--
ALTER TABLE `filer_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `filer_thumbnailoption`
--
ALTER TABLE `filer_thumbnailoption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `astra_plus`
--
ALTER TABLE `astra_plus`
  ADD CONSTRAINT `astra_plus_image_id_532da3ba_fk_filer_image_file_ptr_id` FOREIGN KEY (`image_id`) REFERENCES `filer_image` (`file_ptr_id`);

--
-- Ограничения внешнего ключа таблицы `astra_slider`
--
ALTER TABLE `astra_slider`
  ADD CONSTRAINT `astra_slider_image_id_a0630449_fk_filer_image_file_ptr_id` FOREIGN KEY (`image_id`) REFERENCES `filer_image` (`file_ptr_id`);

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`);

--
-- Ограничения внешнего ключа таблицы `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`);

--
-- Ограничения внешнего ключа таблицы `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  ADD CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  ADD CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`),
  ADD CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`);

--
-- Ограничения внешнего ключа таблицы `filer_file`
--
ALTER TABLE `filer_file`
  ADD CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  ADD CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `filer_folder`
--
ALTER TABLE `filer_folder`
  ADD CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`);

--
-- Ограничения внешнего ключа таблицы `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  ADD CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  ADD CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `filer_image`
--
ALTER TABLE `filer_image`
  ADD CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
