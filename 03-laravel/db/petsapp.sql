-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2025 a las 16:26:24
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `petsapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adoptions`
--

CREATE TABLE `adoptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_06_160816_create_pets_table', 1),
(5, '2025_03_06_165511_create_adoptions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pets`
--

CREATE TABLE `pets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'no-image.png',
  `kind` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `breed` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pets`
--

INSERT INTO `pets` (`id`, `name`, `image`, `kind`, `weight`, `age`, `breed`, `location`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Firulais', 'no-image.png', 'Perro', 16, 3, 'Shiba Inu', 'kioto', 'The Shiba Inu is a small, agile, and intelligent dog with a fox-like face, curly tail, and a confident, spirited personality.', 0, '2025-03-20 17:37:57', NULL),
(2, 'Michi', 'no-image.png', 'Cat', 4, 8, 'Angora', 'Osaka', 'The Angora is a fluffy, long-haired breed of rabbit or cat, known for its soft fur, gentle temperament, and elegant appearance.', 0, '2025-03-20 17:37:57', NULL),
(3, 'Killer', 'no-image.png', 'Dog', 5, 48, 'French Poodle', 'Tokio', 'The French Poodle is an intelligent, elegant, curly-haired dog, known for its loyalty, agility, playful nature, and affectionate companionship.', 0, '2025-03-20 17:37:57', NULL),
(4, 'mraz', 'no-image.png', 'Cat', 9, 50, 'HoneyDew', 'Darrinberg', 'Ipsam neque molestiae iure facilis fugit dolorum dolor corporis molestias.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(5, 'abernathy', 'no-image.png', 'Bird', 8, 88, 'MediumAquaMarine', 'Vincenzotown', 'Quia cupiditate qui magni aut aut rerum voluptate et deleniti.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(6, 'metz', 'no-image.png', 'Dog', 69, 97, 'BurlyWood', 'East Susie', 'Temporibus sunt eveniet nobis eum rerum enim molestiae ut.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(7, 'rodriguez', 'no-image.png', 'Rabbit', 45, 28, 'OliveDrab', 'North Keira', 'Reprehenderit adipisci non consequatur dignissimos deserunt alias ab impedit vero.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(8, 'dibbert', 'no-image.png', 'Cat', 66, 10, 'LimeGreen', 'North Trentchester', 'Et porro tempora nisi provident architecto consequatur corrupti rerum labore harum porro maxime repudiandae.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(9, 'dickinson', 'no-image.png', 'Dog', 53, 55, 'Darkorange', 'Port Rudolph', 'Maiores rerum quo assumenda est ipsa dolor occaecati asperiores necessitatibus.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(10, 'rice', 'no-image.png', 'Fish', 20, 65, 'OrangeRed', 'South Bridgetmouth', 'Et molestiae et alias ut maxime suscipit sit doloribus.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(11, 'herman', 'no-image.png', 'Cat', 66, 65, 'Maroon', 'Mayerchester', 'Dignissimos similique eum voluptatem repellendus itaque sed rerum eius.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(12, 'grimes', 'no-image.png', 'Bird', 45, 41, 'HotPink', 'Kyleeberg', 'Quia ut nemo non consequatur vitae aut repudiandae vel.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(13, 'cartwright', 'no-image.png', 'Dog', 50, 43, 'Tomato', 'North Erling', 'Molestiae qui quibusdam fuga quia quia ratione ratione recusandae officiis.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(14, 'schroeder', 'no-image.png', 'Rabbit', 69, 16, 'Chocolate', 'Lake Daphne', 'Ipsa explicabo facilis ut ut cupiditate est fuga est eligendi harum consequatur.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(15, 'stehr', 'no-image.png', 'Cat', 31, 64, 'DimGrey', 'Tremblaymouth', 'Consequatur officia fugiat nam vel explicabo consequuntur corrupti molestiae nesciunt aperiam eos incidunt nisi.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(16, 'lang', 'no-image.png', 'Bird', 79, 99, 'DarkMagenta', 'Hayeston', 'Nesciunt corporis voluptas dicta veniam maxime iure illum nemo quia nemo aliquid molestias et.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(17, 'yost', 'no-image.png', 'Dog', 52, 39, 'CornflowerBlue', 'East Delpha', 'Assumenda nemo voluptatem veritatis occaecati reiciendis aut impedit minus corrupti quibusdam.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(18, 'johnson', 'no-image.png', 'Cat', 11, 27, 'LightCyan', 'New Brenna', 'Quod doloremque est iusto inventore non fuga aut cupiditate velit.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(19, 'farrell', 'no-image.png', 'Fish', 27, 76, 'MediumOrchid', 'Heleneberg', 'Rem perspiciatis assumenda suscipit velit sint ab ea vitae neque similique.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(20, 'bruen', 'no-image.png', 'Bird', 2, 37, 'Aquamarine', 'Lake Bette', 'Sint quas eos dolores adipisci excepturi rerum eos deserunt.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(21, 'schulist', 'no-image.png', 'Rabbit', 58, 27, 'Tomato', 'Wizaburgh', 'Laudantium alias rem aut dolor nihil nemo et earum nostrum aliquam.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(22, 'mckenzie', 'no-image.png', 'Bird', 19, 39, 'Blue', 'South Erika', 'Doloribus omnis fugit quis eveniet consequuntur cumque dolorum autem.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(23, 'klocko', 'no-image.png', 'Bird', 69, 82, 'Indigo', 'Port Xzavier', 'Odio quam sit autem deleniti dolorem et est fugit.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(24, 'nienow', 'no-image.png', 'Bird', 32, 17, 'Linen', 'Lake Vada', 'Eveniet voluptate aperiam sit mollitia asperiores maxime asperiores aut itaque et officiis sunt et.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(25, 'grimes', 'no-image.png', 'Bird', 36, 14, 'DarkKhaki', 'Browntown', 'Neque eos dicta dicta corporis et fugit ipsam libero aliquid.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(26, 'kilback', 'no-image.png', 'Cat', 28, 39, 'Bisque', 'Wolffurt', 'Repellendus et ut necessitatibus in tempore minima et laborum.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(27, 'monahan', 'no-image.png', 'Dog', 71, 76, 'Brown', 'Boyerchester', 'Eligendi perspiciatis porro unde quisquam recusandae tenetur hic totam sit ex soluta odio.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(28, 'hudson', 'no-image.png', 'Cat', 8, 70, 'LightCoral', 'New Marisaborough', 'Ut fugit odit consectetur sed autem iusto occaecati temporibus ipsam non est unde.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(29, 'romaguera', 'no-image.png', 'Dog', 76, 61, 'Snow', 'Bartellville', 'Voluptas dolor laboriosam consequatur natus sit quis quis voluptatem.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(30, 'wilkinson', 'no-image.png', 'Dog', 57, 83, 'Ivory', 'East Erickhaven', 'Quis deleniti temporibus numquam veniam aliquid natus.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(31, 'pagac', 'no-image.png', 'Bird', 68, 21, 'MediumOrchid', 'North Delphine', 'Maiores occaecati dolorem minus hic fuga consequatur delectus beatae sint quod nostrum.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(32, 'murray', 'no-image.png', 'Rabbit', 74, 35, 'LightCoral', 'Millerberg', 'Ratione facilis aut unde accusamus harum et.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(33, 'leffler', 'no-image.png', 'Rabbit', 77, 70, 'DarkOliveGreen', 'Wallacetown', 'Temporibus maxime eaque ea sapiente non magnam consequuntur nesciunt vel velit quaerat eos.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(34, 'bauch', 'no-image.png', 'Dog', 12, 19, 'NavajoWhite', 'Niaburgh', 'Possimus rerum natus officia dolorem in veritatis dolorum fugiat aut vitae eum.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(35, 'runte', 'no-image.png', 'Bird', 77, 76, 'OrangeRed', 'Hillsburgh', 'Natus sed voluptatem neque delectus accusantium rem officia corporis modi porro tempora voluptatum adipisci.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(36, 'cartwright', 'no-image.png', 'Dog', 59, 99, 'BlanchedAlmond', 'New Nobleside', 'Illo omnis laborum eligendi accusantium molestiae est temporibus qui deserunt inventore eligendi.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(37, 'dach', 'no-image.png', 'Bird', 16, 33, 'GreenYellow', 'North Charles', 'Soluta quod eaque quia nam labore pariatur cumque aperiam.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(38, 'becker', 'no-image.png', 'Cat', 68, 57, 'Darkorange', 'North Chadd', 'Numquam velit ratione blanditiis voluptas reprehenderit quod illo doloremque sint illo.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(39, 'cormier', 'no-image.png', 'Rabbit', 49, 40, 'Tomato', 'Kohlerborough', 'Dicta at voluptates quis et eveniet aut dicta est et quia enim quas officia.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(40, 'grady', 'no-image.png', 'Bird', 70, 35, 'Plum', 'Port Terenceview', 'Rerum facere sint cum dignissimos sequi hic sint dolorem ratione velit aut.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(41, 'gottlieb', 'no-image.png', 'Fish', 22, 95, 'YellowGreen', 'Port Erynville', 'Cumque totam dolores architecto aut debitis tempore magni iste corrupti.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(42, 'boehm', 'no-image.png', 'Rabbit', 80, 85, 'GoldenRod', 'East Noblebury', 'Autem praesentium et autem occaecati velit voluptatum fuga quasi architecto incidunt deleniti aut molestias.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(43, 'hoeger', 'no-image.png', 'Fish', 4, 37, 'LightGray', 'North Ninaport', 'Repellendus iure voluptas labore sit et cumque recusandae molestias maiores voluptate.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(44, 'fahey', 'no-image.png', 'Cat', 7, 12, 'PapayaWhip', 'East Shanieview', 'Et facere quia fugit molestias magnam veritatis.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(45, 'bashirian', 'no-image.png', 'Rabbit', 54, 16, 'LightYellow', 'West Werner', 'Voluptate exercitationem non autem placeat odio aliquam id doloribus et quaerat.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(46, 'schamberger', 'no-image.png', 'Rabbit', 53, 94, 'Moccasin', 'Jacquesborough', 'Perspiciatis quis omnis fuga omnis occaecati aspernatur nihil numquam quis.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(47, 'hintz', 'no-image.png', 'Fish', 4, 60, 'Black', 'New Presleytown', 'Beatae asperiores aliquam commodi sed sed quod accusantium suscipit saepe esse eum.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(48, 'becker', 'no-image.png', 'Bird', 60, 49, 'DarkRed', 'Bobbiemouth', 'Ex ipsa praesentium voluptatem temporibus non sint animi neque.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(49, 'beier', 'no-image.png', 'Dog', 34, 14, 'DarkTurquoise', 'East Kenny', 'Harum facere commodi tenetur dolorem in pariatur delectus explicabo impedit officia.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(50, 'bayer', 'no-image.png', 'Fish', 64, 64, 'MediumVioletRed', 'Corkeryborough', 'Sed excepturi alias corrupti sit qui soluta et in recusandae sed beatae aut cumque.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(51, 'wilkinson', 'no-image.png', 'Dog', 39, 97, 'RoyalBlue', 'Lueilwitzton', 'Voluptatem explicabo et nemo sapiente aperiam corporis sint deleniti eligendi sit ut quasi quia.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(52, 'ondricka', 'no-image.png', 'Dog', 23, 92, 'GoldenRod', 'Monicahaven', 'Quia cum sunt incidunt voluptatem saepe eos quaerat eaque.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(53, 'schumm', 'no-image.png', 'Rabbit', 5, 59, 'LightSeaGreen', 'Isaacside', 'Non et consequatur repellendus possimus architecto ipsa quia asperiores sint cumque nemo in.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(54, 'nienow', 'no-image.png', 'Cat', 30, 55, 'Khaki', 'New Alexanne', 'Esse sint fuga sequi nemo est ut a molestiae hic itaque laborum.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(55, 'treutel', 'no-image.png', 'Dog', 40, 11, 'Crimson', 'Port Novellastad', 'Iure corrupti sapiente quae enim et expedita tenetur ab.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(56, 'russel', 'no-image.png', 'Rabbit', 42, 42, 'PeachPuff', 'Johnstonfort', 'In ipsam ducimus et minus quos dolorum vitae rerum culpa qui repellat.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(57, 'turcotte', 'no-image.png', 'Cat', 5, 10, 'PaleGoldenRod', 'West Jadon', 'Quidem sunt repudiandae magnam soluta cupiditate excepturi ducimus.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(58, 'satterfield', 'no-image.png', 'Dog', 6, 15, 'LightCyan', 'Port Davionton', 'Numquam beatae sit eaque veritatis aut quos error.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(59, 'orn', 'no-image.png', 'Rabbit', 12, 82, 'CadetBlue', 'South Josephstad', 'Iure nisi veniam sit nulla pariatur eum quisquam.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(60, 'jaskolski', 'no-image.png', 'Rabbit', 31, 99, 'MediumSpringGreen', 'North Yesenia', 'Doloremque architecto molestiae sequi minima qui qui necessitatibus neque voluptas.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(61, 'terry', 'no-image.png', 'Rabbit', 24, 26, 'GreenYellow', 'Ankundingview', 'Quisquam ipsum eveniet voluptate ut officia sit eligendi laudantium.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(62, 'keebler', 'no-image.png', 'Bird', 4, 96, 'DarkSlateGray', 'Michaleburgh', 'Expedita laborum consectetur et harum dolorem eius eveniet ea magnam.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(63, 'franecki', 'no-image.png', 'Fish', 32, 31, 'Gainsboro', 'Murazikfort', 'Amet minima harum iusto praesentium est omnis vero autem qui hic aut.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(64, 'torphy', 'no-image.png', 'Fish', 77, 20, 'Silver', 'Lake Jany', 'Et sint ullam iusto quidem consectetur eveniet quis est enim impedit eos.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(65, 'kunze', 'no-image.png', 'Cat', 15, 75, 'Maroon', 'New Samarahaven', 'Praesentium voluptas tenetur eaque pariatur sit distinctio deserunt.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(66, 'carter', 'no-image.png', 'Fish', 75, 89, 'LightCoral', 'North Kaseyberg', 'Aut natus perspiciatis dolorem beatae necessitatibus corporis qui officia aspernatur.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(67, 'wilkinson', 'no-image.png', 'Bird', 67, 10, 'DarkSlateGray', 'West Woodrow', 'Et et vitae repellendus et voluptatem assumenda voluptatibus excepturi quia et dolor quaerat qui.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(68, 'crooks', 'no-image.png', 'Cat', 44, 44, 'MintCream', 'Lake Liliana', 'Veniam amet qui iusto eveniet sunt tempora quae omnis fugiat inventore natus ex.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(69, 'muller', 'no-image.png', 'Bird', 4, 49, 'Ivory', 'South Nelda', 'Nam expedita quo nemo sunt minus qui molestiae occaecati beatae nulla.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(70, 'harber', 'no-image.png', 'Rabbit', 68, 86, 'LightSteelBlue', 'Lake Kareemberg', 'Quia sunt in corrupti earum et aut explicabo a dignissimos nisi rem dolorum.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(71, 'smith', 'no-image.png', 'Fish', 33, 38, 'LawnGreen', 'East Avishaven', 'Et est nobis voluptate qui sed animi ipsum amet consequuntur deserunt minus repellat.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(72, 'luettgen', 'no-image.png', 'Dog', 72, 16, 'PaleTurquoise', 'East Maverickstad', 'Excepturi dolores consequatur exercitationem ad nulla alias distinctio qui id ratione sunt nisi quia.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(73, 'tillman', 'no-image.png', 'Dog', 22, 84, 'DarkKhaki', 'Shieldsmouth', 'Aut iure vel est sunt itaque non.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(74, 'emmerich', 'no-image.png', 'Bird', 59, 18, 'Aqua', 'North Claudietown', 'Excepturi eius modi dolores illo occaecati et consequuntur non eius quasi rerum dignissimos eligendi.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(75, 'dare', 'no-image.png', 'Bird', 24, 76, 'DarkGoldenRod', 'Emeryview', 'Molestiae magni officia accusamus eligendi quia tenetur sit qui.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(76, 'dare', 'no-image.png', 'Cat', 21, 99, 'LawnGreen', 'North Elwin', 'Vero cum est tempora maiores magnam eligendi necessitatibus delectus quia esse id laboriosam.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(77, 'williamson', 'no-image.png', 'Rabbit', 18, 52, 'Aqua', 'Freddymouth', 'Quaerat architecto a mollitia sapiente voluptatem enim aperiam aut.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(78, 'collier', 'no-image.png', 'Bird', 41, 59, 'Plum', 'New Stanton', 'Molestiae et illum quia quae quibusdam impedit commodi qui a accusantium.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(79, 'stiedemann', 'no-image.png', 'Cat', 34, 75, 'PaleGoldenRod', 'West Cierraland', 'Sit consectetur totam ex facere in perspiciatis earum omnis exercitationem qui in qui.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(80, 'gerhold', 'no-image.png', 'Bird', 53, 84, 'Blue', 'Martinborough', 'Qui aut minus ut tenetur qui harum maxime.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(81, 'larson', 'no-image.png', 'Fish', 63, 27, 'MediumTurquoise', 'New Lexie', 'Et mollitia voluptates et sapiente quidem distinctio nemo quia quam consequuntur ut quam.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(82, 'jaskolski', 'no-image.png', 'Dog', 19, 70, 'NavajoWhite', 'South Justicechester', 'Rerum illo unde cupiditate id iusto dolorum eos neque.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(83, 'ortiz', 'no-image.png', 'Cat', 20, 24, 'DarkBlue', 'Lake Chanelle', 'Possimus beatae aspernatur hic dolores doloribus unde.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(84, 'hauck', 'no-image.png', 'Dog', 16, 87, 'CornflowerBlue', 'Lake Jacklynberg', 'Commodi corporis aut consequatur laudantium inventore aut aut cumque.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(85, 'conroy', 'no-image.png', 'Fish', 60, 22, 'Olive', 'North Aronmouth', 'Ipsam corrupti vel fugiat autem accusamus eius eveniet et nisi.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(86, 'gulgowski', 'no-image.png', 'Bird', 72, 80, 'Indigo', 'West Hank', 'Quisquam tempora recusandae porro fuga enim ab hic ut excepturi voluptatem.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(87, 'senger', 'no-image.png', 'Bird', 61, 51, 'Pink', 'Nevashire', 'Similique dolor vero nulla perspiciatis qui omnis harum unde a maiores.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(88, 'rath', 'no-image.png', 'Fish', 79, 51, 'Red', 'East Enrique', 'Eum dolore est soluta fugiat laudantium voluptatem et quos dolores omnis iure sed officiis.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(89, 'johnston', 'no-image.png', 'Bird', 80, 78, 'MediumTurquoise', 'West Fanny', 'Sit et voluptatum odio aperiam iusto reprehenderit est et asperiores quia.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(90, 'rau', 'no-image.png', 'Fish', 34, 81, 'LightSeaGreen', 'North Maiaburgh', 'Laudantium eos omnis consequatur velit ut est officia ea.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(91, 'rohan', 'no-image.png', 'Bird', 55, 67, 'SandyBrown', 'East Laisha', 'Eaque nobis exercitationem enim debitis doloremque est eaque eos reiciendis hic facilis provident voluptates.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(92, 'reichert', 'no-image.png', 'Bird', 79, 18, 'IndianRed', 'Gislasonview', 'Voluptate eum id quidem magnam ea eos perferendis doloribus itaque illum.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(93, 'von', 'no-image.png', 'Cat', 20, 11, 'Silver', 'Itzelville', 'Laudantium quis porro eaque dicta est quidem voluptatum eius.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(94, 'moore', 'no-image.png', 'Rabbit', 31, 63, 'Cornsilk', 'Port Leannastad', 'Et illo hic quasi velit eveniet nulla in molestias earum voluptatem possimus.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(95, 'ferry', 'no-image.png', 'Rabbit', 47, 57, 'Snow', 'Nathanbury', 'Doloribus doloribus sequi in id rerum iusto magni.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(96, 'kemmer', 'no-image.png', 'Bird', 19, 31, 'DarkSlateBlue', 'West Dedrick', 'Vel sequi facere ut quod aut qui quidem.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(97, 'rice', 'no-image.png', 'Cat', 38, 42, 'DarkOliveGreen', 'New Issac', 'Dignissimos est voluptas rerum culpa voluptatibus odit magni eum fugiat eveniet non nemo a.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(98, 'strosin', 'no-image.png', 'Rabbit', 38, 88, 'SeaShell', 'Loweburgh', 'Eum ipsa exercitationem itaque recusandae voluptatem veniam recusandae modi illum sequi tempora iusto.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(99, 'moore', 'no-image.png', 'Rabbit', 16, 84, 'Thistle', 'East Doyle', 'Ut eaque est aperiam reprehenderit enim est id placeat ducimus ut qui.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(100, 'renner', 'no-image.png', 'Bird', 3, 85, 'Indigo', 'Auerbury', 'Maxime et tenetur atque qui omnis eaque eum voluptatem dolorem quia voluptatem hic.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(101, 'moore', 'no-image.png', 'Fish', 62, 60, 'RosyBrown', 'Fritschburgh', 'Molestias cum quia maxime in dolorum saepe.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(102, 'nicolas', 'no-image.png', 'Cat', 72, 31, 'PeachPuff', 'Lake Raphaelle', 'Quia qui optio enim repudiandae atque laborum dolores in autem dolor.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(103, 'weber', 'no-image.png', 'Dog', 17, 65, 'Turquoise', 'Zoiestad', 'Sit deserunt non similique sunt quibusdam blanditiis.', 0, '2025-03-20 17:37:57', '2025-03-20 17:37:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('A2AUjbWqsa7Gd2CIOadWOsK8Oi2Vw2Seq4LVdN9n', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3RaV3NpSkNMMWxMejFPMzM3TFN0U2dwMzV0U0gzcjFBZ3M1Z2gxUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93L3VzZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1742476483),
('gT45jOnIBI9P1snSySP3K7PRvMfEKpKHSMtQPuEl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2haVUZsb0R6b2RwZ1JUcTE1UENKNk1Nb3JRTzdpenFDS3AyNUN2YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93L3VzZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1742480207);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document` bigint(20) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'no-photo.png',
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'customer',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `document`, `fullname`, `gender`, `birthdate`, `photo`, `phone`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 75000001, 'Jhon Wick', 'Male', '1980-10-10', 'no-photo.png', '3205678978', 'jwick@gmail.com', NULL, '$2y$12$m7ofkq4nQ1QDO.8Jr7Wrdur2Ua3oFWZrk5FOaYWWXN0Rs0W0JH1JS', 'Admin', NULL, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(2, 75000002, 'Lara Croft', 'Female', '1994-08-05', 'no-photo.png', '3209891234', 'lara@gmail.com', NULL, '$2y$12$YkDa3J3Lz4Eu.NXkQ30WDOTZSciSi6HdPBwlgm/VQxoTBFAzXyjZm', 'customer', NULL, '2025-03-20 17:37:57', '2025-03-20 17:37:57'),
(3, 75431728, 'Clint Schmidt', 'Male', '1997-11-10', '75431728.png', '3203010062', 'boyle.genevieve@example.net', '2025-03-20 17:38:01', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', '1chSs1IlP5', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(4, 75130891, 'Ceasar Kshlerin', 'Male', '1990-07-13', '75130891.png', '3204550343', 'kautzer.savanah@example.com', '2025-03-20 17:38:04', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'n6ATbAR3uq', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(5, 75360556, 'Candida Sauer', 'Female', '1979-09-02', '75360556.png', '3205123288', 'mitchell48@example.com', '2025-03-20 17:38:07', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', '7YHpLC3XwY', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(6, 75160369, 'Carroll Lang', 'Male', '1978-10-01', '75160369.png', '3205601900', 'hlakin@example.com', '2025-03-20 17:38:10', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'LCK01VsFIA', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(7, 75310751, 'Heaven Bernier', 'Female', '2001-04-05', '75310751.png', '3208696718', 'xziemann@example.org', '2025-03-20 17:38:13', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'bxvef8sARQ', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(8, 75827892, 'Makenzie Powlowski', 'Female', '1991-06-30', '75827892.png', '3204346657', 'langworth.melvin@example.com', '2025-03-20 17:38:18', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', '9ikHAijXRd', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(9, 75537963, 'Trenton Borer', 'Male', '2000-02-05', '75537963.png', '3200341802', 'reva10@example.com', '2025-03-20 17:38:22', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', '3yKcHmWbHg', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(10, 75245534, 'Alexanne Sanford', 'Female', '2001-03-02', '75245534.png', '3202447936', 'egoldner@example.org', '2025-03-20 17:38:26', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'u4y0xTGdGu', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(11, 75598120, 'Drew Herzog', 'Female', '1988-10-31', '75598120.png', '3201388541', 'rschultz@example.com', '2025-03-20 17:38:29', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'brnCV4jEYY', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(12, 75373539, 'Ezra O\'Hara', 'Male', '1996-02-16', '75373539.png', '3204901814', 'drew.hoppe@example.com', '2025-03-20 17:38:31', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'D5AsJ3GX3G', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(13, 75172180, 'Evangeline Marks', 'Female', '1990-12-08', '75172180.png', '3205008448', 'boehm.bert@example.com', '2025-03-20 17:38:35', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'jk7ymXh0uu', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(14, 75316588, 'Maegan Zieme', 'Female', '2003-10-28', '75316588.png', '3203606978', 'alf33@example.org', '2025-03-20 17:38:39', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', '2qB9UNRs7W', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(15, 75317404, 'Peggie Graham', 'Female', '1979-08-12', '75317404.png', '3203809862', 'larkin.dario@example.net', '2025-03-20 17:38:43', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'KN2ARar812', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(16, 75565441, 'Armand Abernathy', 'Male', '1996-07-07', '75565441.png', '3205469136', 'agottlieb@example.com', '2025-03-20 17:38:46', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'rFSU7atHpo', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(17, 75767233, 'Deja Spinka', 'Female', '1986-07-10', '75767233.png', '3206589412', 'brent67@example.com', '2025-03-20 17:38:50', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'J7FvzOkz8N', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(18, 75733080, 'Lempi Zboncak', 'Female', '2000-08-11', '75733080.png', '3205211983', 'amelie.hickle@example.org', '2025-03-20 17:38:53', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', '2IzG8gTd9U', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(19, 75495674, 'Roscoe Funk', 'Male', '1982-09-19', '75495674.png', '3205545588', 'maryjane.nienow@example.org', '2025-03-20 17:38:56', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'J86b27hdj9', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(20, 75130568, 'Lewis Jenkins', 'Male', '1990-12-06', '75130568.png', '3209761472', 'kip.quitzon@example.com', '2025-03-20 17:39:00', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'PQEhxucKMq', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(21, 75849579, 'Jerrell Hand', 'Male', '2002-06-24', '75849579.png', '3203985451', 'gmertz@example.net', '2025-03-20 17:39:04', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'N0CF2VL3U0', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(22, 75150154, 'Rowland Lebsack', 'Male', '1984-07-22', '75150154.png', '3202906297', 'lila.doyle@example.com', '2025-03-20 17:39:07', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'qpQe8HVm1n', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(23, 75547407, 'Aryanna Thompson', 'Female', '1999-12-16', '75547407.png', '3201878988', 'raymundo.mclaughlin@example.com', '2025-03-20 17:39:10', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'aAE2I09zw1', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(24, 75597658, 'Vallie Bashirian', 'Female', '1988-02-09', '75597658.png', '3205637845', 'rudolph.schaefer@example.org', '2025-03-20 17:39:14', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'HKsQ964ZZx', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(25, 75307706, 'Conor Corkery', 'Male', '1999-11-29', '75307706.png', '3209917875', 'earnest13@example.org', '2025-03-20 17:39:17', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'mJrc4A0EGA', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(26, 75687814, 'Stephany Dicki', 'Female', '1990-04-23', '75687814.png', '3209695222', 'bashirian.preston@example.org', '2025-03-20 17:39:21', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'JhP9jSqiUD', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(27, 75511490, 'Cooper Rowe', 'Male', '1986-03-31', '75511490.png', '3205834214', 'ckeeling@example.com', '2025-03-20 17:39:24', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'aYKMi4D2jM', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(28, 75952126, 'Tobin Erdman', 'Male', '1983-08-14', '75952126.png', '3207300594', 'cade47@example.org', '2025-03-20 17:39:26', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'lZJ2oR9E1P', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(29, 75371469, 'Destany Medhurst', 'Female', '1995-03-23', '75371469.png', '3202578171', 'rau.dave@example.com', '2025-03-20 17:39:29', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'IYOkATiFZt', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(30, 75532060, 'Colton Ebert', 'Male', '1978-02-01', '75532060.png', '3208765828', 'braun.pascale@example.org', '2025-03-20 17:39:33', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'RVcTX5wBh9', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(31, 75373164, 'Creola Thompson', 'Female', '1981-10-23', '75373164.png', '3208838978', 'mikel42@example.com', '2025-03-20 17:39:36', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'HdI8CUyu92', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(32, 75075654, 'Dorothy Crooks', 'Female', '1996-11-14', '75075654.png', '3202210334', 'olson.arielle@example.net', '2025-03-20 17:39:38', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'RoCVr1CI4g', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(33, 75602229, 'Mabel Corwin', 'Female', '2002-06-08', '75602229.png', '3205426191', 'eloisa39@example.com', '2025-03-20 17:39:41', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'cKSoUGdX7y', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(34, 75353550, 'Elvera Morissette', 'Female', '1987-06-04', '75353550.png', '3200761188', 'fblock@example.org', '2025-03-20 17:39:43', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'lMO36B3OaR', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(35, 75778587, 'Leland Schuster', 'Male', '1992-06-30', '75778587.png', '3208095476', 'sporer.vincent@example.net', '2025-03-20 17:39:48', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'nOak2sXtNp', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(36, 75272596, 'Jaylon Hegmann', 'Male', '1984-09-01', '75272596.png', '3207963822', 'alberta.schumm@example.org', '2025-03-20 17:39:51', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'JohnRTwXnR', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(37, 75999797, 'Roberta Muller', 'Female', '1991-11-23', '75999797.png', '3201503493', 'herminia19@example.com', '2025-03-20 17:39:57', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', '0EBhjiqxnw', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(38, 75932722, 'Layla Reichert', 'Female', '1993-04-15', '75932722.png', '3208075523', 'bgrady@example.net', '2025-03-20 17:40:02', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', '9yBDJGkT2J', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(39, 75522675, 'Aiyana Lowe', 'Female', '1978-09-11', '75522675.png', '3209324395', 'precious.stiedemann@example.org', '2025-03-20 17:40:06', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'RJHccNCmwc', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(40, 75071419, 'Deron Orn', 'Male', '1992-07-01', '75071419.png', '3205448304', 'brad55@example.com', '2025-03-20 17:40:09', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'S4rfHzUUad', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(41, 75873049, 'Zakary Tillman', 'Male', '1990-05-30', '75873049.png', '3203657350', 'karl.rath@example.org', '2025-03-20 17:40:13', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'm1oqro7feS', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(42, 75407531, 'Mariah Bechtelar', 'Female', '1996-03-21', '75407531.png', '3200481538', 'yundt.elisabeth@example.org', '2025-03-20 17:40:18', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'T0XtOXmR8M', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(43, 75808768, 'Shea Christiansen', 'Female', '1978-09-10', '75808768.png', '3203281714', 'kevon70@example.net', '2025-03-20 17:40:22', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'KRzp4DTqSp', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(44, 75963083, 'Anjali Hansen', 'Female', '1978-07-26', '75963083.png', '3204639604', 'boehm.myriam@example.net', '2025-03-20 17:40:25', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'gobcZVVv8q', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(45, 75458895, 'Skylar Schinner', 'Male', '1975-04-25', '75458895.png', '3202575271', 'fbatz@example.com', '2025-03-20 17:40:33', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'Vk4is4To1w', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(46, 75693206, 'Randall Marquardt', 'Male', '1998-07-11', '75693206.png', '3204223202', 'gfeest@example.com', '2025-03-20 17:40:36', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', '7MRHCwY3kC', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(47, 75609584, 'Harmon Walsh', 'Male', '1976-04-12', '75609584.png', '3209642705', 'aliza.orn@example.net', '2025-03-20 17:40:40', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'JYorYOvTVz', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(48, 75402307, 'Frida Bartoletti', 'Female', '1994-11-13', '75402307.png', '3208889335', 'aditya.wilkinson@example.org', '2025-03-20 17:40:43', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'f7Xn6e1t9o', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(49, 75895218, 'Melyna Tillman', 'Female', '1992-09-02', '75895218.png', '3205204635', 'marcelino.emard@example.net', '2025-03-20 17:40:46', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'ze61QFMEau', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(50, 75905933, 'Tressa Keebler', 'Female', '1994-07-22', '75905933.png', '3200820615', 'carolyn28@example.com', '2025-03-20 17:40:55', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', '0uw38srGgj', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(51, 75450226, 'Matilda Barrows', 'Female', '1981-01-23', '75450226.png', '3206434601', 'emmerich.jena@example.net', '2025-03-20 17:40:59', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'KeJyrCYTI6', '2025-03-20 17:41:02', '2025-03-20 17:41:02'),
(52, 75405909, 'Camden Franecki', 'Male', '1978-01-28', '75405909.png', '3203177038', 'carmela29@example.net', '2025-03-20 17:41:02', '$2y$12$c2LQOVyNiNG1paEmQKc0o.y8iBElD3uVozyInls2f.xHHgZ0/RpVu', 'customer', 'wkYHikiryw', '2025-03-20 17:41:02', '2025-03-20 17:41:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adoptions`
--
ALTER TABLE `adoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adoptions_user_id_foreign` (`user_id`),
  ADD KEY `adoptions_pet_id_foreign` (`pet_id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_document_unique` (`document`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adoptions`
--
ALTER TABLE `adoptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pets`
--
ALTER TABLE `pets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adoptions`
--
ALTER TABLE `adoptions`
  ADD CONSTRAINT `adoptions_pet_id_foreign` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`),
  ADD CONSTRAINT `adoptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
