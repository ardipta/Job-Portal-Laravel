-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2019 at 03:41 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Government', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(2, 'Software', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(3, 'BITM', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(4, 'Banking', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(5, 'Construction', '2019-10-31 09:41:39', '2019-10-31 09:41:39'),
(6, 'Education', '2019-10-31 09:41:39', '2019-10-31 09:41:39'),
(7, 'Ngo', '2019-10-31 09:41:39', '2019-10-31 09:41:39'),
(8, 'Medical', '2019-10-31 09:41:39', '2019-10-31 09:41:39'),
(9, 'Second Option', '2019-10-31 09:41:39', '2019-10-31 09:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_ID` int(11) NOT NULL,
  `cname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_ID`, `cname`, `slug`, `address`, `phone`, `website`, `logo`, `cover_photo`, `slogan`, `description`, `created_at`, `updated_at`) VALUES
(1, 14, 'Frami LLC', 'frami-llc', '976 Collins Common Suite 120\nGusikowskishire, ID 54681', 0, 'tremblay.net', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Quidem exercitationem dolorum est quisquam quibusdam. Alias asperiores praesentium explicabo placeat nobis. Quam aliquam et veniam praesentium. Beatae ducimus temporibus est. Consequuntur qui dolorem quia earum in perspiciatis. Maiores optio modi quisquam. Aut eos labore sed sunt nostrum.', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(2, 17, 'Gibson Ltd', 'gibson-ltd', '8855 Lucas Dale Suite 842\nNedtown, WI 12500-6265', 1468, 'adams.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Ut deleniti optio ex sit dolores. Ratione aut corporis repudiandae aut ut beatae qui.', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(3, 7, 'Schaefer, Schumm and Nitzsche', 'schaefer-schumm-and-nitzsche', '30482 Boehm Lodge\nKingmouth, NY 27434', 613356, 'wolf.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Vero aspernatur suscipit alias voluptatem non quia. Molestiae omnis voluptatum sit ipsam ab facilis aspernatur. Voluptas est ut sunt libero voluptas repellat sed. Quia modi repellendus voluptatem quia nisi enim.', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(4, 16, 'Abshire Group', 'abshire-group', '4201 Schmeler Ferry\nNew Sadye, WA 23985-6280', 1, 'cole.net', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Magnam blanditiis sapiente voluptatem corporis. Aut magni esse ut dolorum voluptas. Possimus laudantium odio debitis quia. Placeat veniam alias placeat incidunt et. Eos voluptatem quam veniam voluptatibus id quo. Nisi et dolor illo et. Exercitationem beatae odio ut alias quod nesciunt animi. Debitis laborum accusamus quasi praesentium adipisci non id. Est soluta deleniti quod rerum pariatur mollitia. Aut modi voluptatem voluptatem vel asperiores.', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(5, 9, 'Lockman PLC', 'lockman-plc', '3064 McLaughlin Islands\nKennedymouth, AZ 36130', 1, 'schowalter.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Est qui et dolores voluptatibus provident quidem consequatur. Quo nulla amet doloribus qui assumenda et nesciunt. Quibusdam ullam rerum nisi rerum. Fugiat ad numquam sint consequatur ut. Perferendis soluta quia voluptates perferendis sint. Officiis laudantium blanditiis atque aperiam id et est. Quia sequi et id ipsum illum aliquam.', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(6, 20, 'King and Sons', 'king-and-sons', '5811 Meggie Knoll Suite 889\nWest Sierratown, NM 04178-9365', 1, 'rempel.biz', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Repudiandae rerum neque officiis. Non cumque id amet nulla doloremque repudiandae aperiam voluptatem. Et quaerat ea esse facilis molestiae. Ipsum unde natus veniam. Quia animi nam alias assumenda ea alias maiores. Aliquid nulla tenetur earum vero. Delectus nulla consequatur error adipisci quo odio sint enim.', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(7, 4, 'Auer-Hyatt', 'auer-hyatt', '9821 Jerde Lodge\nEast Isabelfurt, AL 55049-3522', 1, 'ankunding.net', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Mollitia architecto minus numquam eius. Quo quidem aliquam facere incidunt molestiae voluptas reprehenderit. Distinctio tempore eum quo et est. Sapiente quisquam perferendis reiciendis officiis ab nulla voluptatibus commodi. Dolores expedita iure quisquam ab omnis in dolor.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(8, 8, 'Reichert, Emard and Shanahan', 'reichert-emard-and-shanahan', '236 Leland Mill\nElsefurt, NY 82266', 515, 'dickinson.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Voluptas similique et eum itaque est mollitia. Iste maiores ut assumenda deleniti consequatur debitis quia. Perferendis odit sit eligendi et eum praesentium sit. Itaque itaque distinctio natus mollitia provident. Possimus incidunt labore tenetur porro. Odio assumenda sed nemo.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(9, 3, 'Hamill, Wehner and Keeling', 'hamill-wehner-and-keeling', '4541 Minnie Skyway\nEast Jolie, GA 57221', 820765, 'green.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Consequuntur et ab facere pariatur dolores dicta. Assumenda unde iusto quam ut unde veniam. Accusantium iste dolorem qui neque. Quo ipsam necessitatibus pariatur qui. Fugiat vel voluptatem nobis qui maxime excepturi. Sed est et cumque vero expedita doloribus ut. Ab doloremque dolor possimus aut voluptatibus nostrum. Et aut excepturi tempore voluptatem atque. Voluptatibus et voluptas ipsam eius velit. Sint itaque rerum commodi id. Corporis mollitia impedit est alias aut reprehenderit sunt.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(10, 13, 'McCullough, Bradtke and Rau', 'mccullough-bradtke-and-rau', '5726 Clementina Hill Suite 897\nLake Noemieville, NM 64713', 1, 'blanda.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Occaecati in autem dolores consequatur repellendus. Et quod autem nihil eos.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(11, 12, 'Paucek Group', 'paucek-group', '4874 Shyanne Estates\nPfefferchester, NC 39492-3207', 1, 'terry.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Enim sunt ea sint placeat qui illum. Minus in pariatur expedita voluptas voluptas nesciunt incidunt. Rerum aut laboriosam laudantium ut et et. Laborum eaque unde modi consequatur ab. Ea eos voluptatem omnis rerum ad quo.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(12, 17, 'Kshlerin, Quigley and Marks', 'kshlerin-quigley-and-marks', '66239 Bettye Meadows Apt. 026\nWest Mittieport, MI 01321-3811', 959342, 'langworth.net', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Sapiente ut et omnis. Nihil iure eum sunt ipsum. Optio quas autem quae porro sapiente reiciendis quisquam.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(13, 11, 'Schoen PLC', 'schoen-plc', '6844 Bailey Ferry Suite 976\nEast Mathiasland, ND 64128', 0, 'robel.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Placeat quia atque ratione ut autem iste quibusdam. Reiciendis ad illum ab animi ullam. Aut recusandae harum autem vel. Et ipsum est perferendis reprehenderit. Aut nobis voluptas nihil quis beatae qui fugit. Voluptates et ut quibusdam suscipit aut cupiditate.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(14, 10, 'Mills-Baumbach', 'mills-baumbach', '978 Jast River\nGradystad, OK 24887', 851, 'macejkovic.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Aspernatur sed vel consequatur. Unde non pariatur est et. Quaerat iusto qui maxime ex quasi qui nam. Non et saepe quo culpa atque odio et. Earum accusantium eaque a sint vel. Atque a sit temporibus est accusamus. Cumque exercitationem sunt illo beatae. Est delectus unde est eum. Repudiandae iusto neque voluptatem voluptas. Recusandae rerum officiis officia error voluptas sed. Magnam optio est non exercitationem occaecati dicta pariatur. Necessitatibus qui aut assumenda cum harum deserunt praesentium. Saepe nemo molestiae ut perspiciatis quia et. Ut officia consequuntur et odit assumenda eaque.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(15, 10, 'Kuphal and Sons', 'kuphal-and-sons', '50816 Genoveva Glen\nSouth Gardnerstad, OK 19985-9798', 0, 'mayert.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Magnam minima et qui. Eveniet quia ipsa animi. Est alias tenetur fuga ipsam reiciendis qui. Sapiente nisi aut ab voluptates voluptas hic eaque. Ab qui debitis provident dolor quas. Minus ipsam aut accusamus debitis dolor. Adipisci laborum nam ipsa occaecati molestias accusantium. Enim dignissimos perspiciatis distinctio voluptatum. Voluptatem voluptatibus ut excepturi illum cupiditate dolorem dolorum minus. Ab qui qui culpa molestias aperiam.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(16, 20, 'O\'Connell, Bailey and Williamson', 'oconnell-bailey-and-williamson', '29134 Dariana Mission\nHeathberg, NJ 03922', 0, 'koss.biz', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Deleniti dolorum eos consectetur aliquid rerum magni. Vero sit ad vel eos aut ipsa sit. Dicta quis ut est rerum dignissimos rerum quidem. Quod ex commodi expedita. Velit doloribus culpa aut odit.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(17, 14, 'Ernser PLC', 'ernser-plc', '5790 Lucas Lake Apt. 554\nConroyborough, CA 13063-7777', 572, 'pacocha.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Magnam quasi eum ipsum consequatur. Aut qui cupiditate possimus. Officia exercitationem voluptas qui facere. Quos vel doloremque voluptates. Recusandae omnis beatae dolore vero. Quas sed aut enim quae. Consequatur ipsa molestiae eaque repudiandae velit ex dignissimos. Recusandae quam nisi ipsum porro architecto.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(18, 1, 'Bogan, Ward and Cummings', 'bogan-ward-and-cummings', '45914 Sawayn Parks\nConnshire, IA 60277', 0, 'koss.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Unde consequatur ut cupiditate quae similique possimus. Fugiat odit ut ut rerum veritatis ut. Ipsa numquam odio itaque.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(19, 12, 'Brown, Rath and Crist', 'brown-rath-and-crist', '6844 Shanahan Bypass\nTerenceshire, UT 89062-3509', 1, 'herman.com', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Consectetur aut est nostrum fuga eum perspiciatis natus minima. Ut ut perspiciatis dicta praesentium nulla quis nihil. Tenetur dolor illo fuga consequatur quibusdam aut at harum. Voluptatum voluptas facilis dolores eum architecto. Quidem delectus rerum praesentium et. Blanditiis officiis ipsa quaerat in ut praesentium quia molestiae. Numquam saepe error unde officiis veniam. Harum laboriosam quia maxime. Nulla rerum eius labore ea laudantium. Id et omnis nobis ducimus tempora dolores minus. Et qui ea animi eos occaecati. Officia incidunt odit inventore sed dicta. Et sunt praesentium iste magni dolor.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(20, 11, 'Batz and Sons', 'batz-and-sons', '51892 Tom Squares Suite 062\nDavechester, HI 19541-9473', 405889, 'damore.info', 'avatar/logo.png', 'banner/cover.jpg', 'Learn-Earn & Go', 'Ut porro consequatur aut. Et voluptas distinctio et qui asperiores recusandae quasi sint. Dolorem autem suscipit modi fugit suscipit suscipit blanditiis non. Culpa odit incidunt ut et. Aut nulla ut itaque aut aut. Deleniti impedit a sunt vel. Error vero illum quis non pariatur perferendis. Consequuntur et et error quae est quisquam labore.', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(21, 21, 'DIU', 'diu', 'West rajabazar dhaka', 1987736366, 'google.com', '', '', 'Best in the world', 'Best in the world Best in the world Best in the world', '2019-10-31 09:44:18', '2019-10-31 09:45:20'),
(22, 25, 'DIUICPC', 'diuicpc', '', 0, '', '', '', '', '', '2019-11-17 18:02:32', '2019-11-17 18:02:32'),
(23, 35, 'Diu', 'diu', '', 0, '', '', '', '', '', '2019-11-22 20:03:09', '2019-11-22 20:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `job_ID`, `user_ID`, `created_at`, `updated_at`) VALUES
(2, 4, 36, '2019-11-22 23:02:55', '2019-11-22 23:02:55'),
(5, 2, 36, '2019-11-22 23:12:27', '2019-11-22 23:12:27'),
(8, 8, 36, '2019-11-22 23:17:23', '2019-11-22 23:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_ID` int(11) NOT NULL,
  `company_ID` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_ID` int(11) NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_ID`, `company_ID`, `title`, `slug`, `roles`, `description`, `category_ID`, `position`, `address`, `type`, `status`, `last_date`, `created_at`, `updated_at`) VALUES
(1, 10, 13, 'Iure pariatur est voluptas placeat sapiente repellendus ut. Sit et mollitia quia illo laboriosam velit cumque. Deleniti eum quae voluptatibus quae explicabo.', 'iure-pariatur-est-voluptas-placeat-sapiente-repellendus-ut-sit-et-mollitia-quia-illo-laboriosam-velit-cumque-deleniti-eum-quae-voluptatibus-quae-explicabo', 'Similique quam beatae dolorum ratione non sit praesentium. Maiores et architecto numquam quia quia. Dolorem dolores praesentium nihil ea rem. Ipsam dolor ut a voluptates aut quidem aliquid.', 'Esse cum voluptatem ullam dolorum ut. Explicabo soluta ea accusamus quod dolore incidunt.', 1, 'Eligibility Interviewer', '7600 Fahey Islands Apt. 003\nDrakeland, AK 18627', 'Full Time', '0', '0000-00-00', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(2, 2, 14, 'Provident labore velit quis non dolorum. Quo maxime magnam delectus consequatur. Excepturi quo autem sunt rerum occaecati perspiciatis.', 'provident-labore-velit-quis-non-dolorum-quo-maxime-magnam-delectus-consequatur-excepturi-quo-autem-sunt-rerum-occaecati-perspiciatis', 'Sunt non maxime eveniet ipsam. Ea inventore aut harum impedit. Animi dolor eaque ea est modi pariatur quis est.', 'Voluptas nisi ipsum delectus eaque quia quia. Rerum eaque sequi sit laboriosam necessitatibus. Fuga officiis eos quia animi. Dolorum occaecati nobis placeat dolorum. Dignissimos molestias ut omnis quas hic.', 1, 'Environmental Science Technician', '51745 Alvera Isle Suite 055\nStantonhaven, WV 76434-3083', 'Full Time', '0', '0000-00-00', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(3, 8, 4, 'Sequi voluptate omnis vel sequi et cupiditate animi. Assumenda sunt temporibus officia facere maxime odio.', 'sequi-voluptate-omnis-vel-sequi-et-cupiditate-animi-assumenda-sunt-temporibus-officia-facere-maxime-odio', 'Sed est ducimus et odit sed. Eum libero id tenetur veritatis cum repellendus. Ex libero illo alias et rerum officiis.', 'Quia nihil omnis enim dignissimos. Sequi atque odio repudiandae. Laudantium aut omnis explicabo. Ut aut perspiciatis et. Perferendis nam quidem quia sed minima debitis. Officiis consequatur est et. Doloremque dignissimos rem explicabo quos sapiente doloremque consequuntur. Qui culpa cumque eius adipisci reprehenderit voluptas expedita.', 0, 'Medical Technician', '830 Thad Creek Apt. 508\nPourosside, NE 01426-1191', 'Full Time', '0', '0000-00-00', '2019-10-31 09:41:37', '2019-10-31 09:41:37'),
(4, 20, 15, 'Corrupti sapiente ipsam labore nihil omnis et eligendi. Quia beatae ea et voluptatem aliquam sed expedita vel. Libero aliquam non et at ut et facere. Et aliquam illo nulla.', 'corrupti-sapiente-ipsam-labore-nihil-omnis-et-eligendi-quia-beatae-ea-et-voluptatem-aliquam-sed-expedita-vel-libero-aliquam-non-et-at-ut-et-facere-et-aliquam-illo-nulla', 'Optio laudantium et quia ab quasi. Et et ducimus inventore similique. Quasi similique amet laudantium et illo est ut. Hic repellendus ipsa ea quae.', 'Perspiciatis voluptatem dolores ut blanditiis. Aliquam et voluptas vel perspiciatis aliquid. A et ullam ex repudiandae. Vel cum laborum tempore maiores sint aperiam consequatur. Quisquam cum rerum et in laboriosam molestiae. Voluptatem corporis illum consequatur quidem assumenda vel delectus. Magnam et dolore pariatur odio dolorem consequuntur eius. Et tempora autem amet quasi quas quia non. Omnis nesciunt incidunt sint iusto. Odio quasi omnis est ut qui sint aspernatur nulla.', 0, 'Oil Service Unit Operator', '65670 Karlee Green\nBrannonmouth, DE 83473-2142', 'Full Time', '1', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(5, 20, 9, 'Fugit et aut cumque labore magnam dolores soluta hic. Ut voluptatem ea est ad aut. Nisi qui rerum vero voluptatem voluptatibus.', 'fugit-et-aut-cumque-labore-magnam-dolores-soluta-hic-ut-voluptatem-ea-est-ad-aut-nisi-qui-rerum-vero-voluptatem-voluptatibus', 'Quasi voluptatum a asperiores non cum excepturi. Ea dolores molestiae ex rem fuga quia. Neque in rerum in labore omnis earum dolor. Non quo nam earum est sunt sint.', 'Incidunt voluptas voluptatum excepturi numquam officia illo dignissimos. Incidunt et officiis dolor voluptate vel. Ad tenetur qui sit voluptas inventore placeat voluptatem magnam. Veritatis a quidem soluta qui et ad. Et sint cumque ut sunt ipsa recusandae. Sed odit dolores labore ratione ullam placeat incidunt.', 1, 'Mechanical Engineer', '283 Walter Skyway Apt. 317\nJanefurt, OH 79114', 'Full Time', '0', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(6, 16, 5, 'Commodi doloremque mollitia earum cupiditate officiis id quia. Tempore consequatur sit ut. Quasi at aliquid velit.', 'commodi-doloremque-mollitia-earum-cupiditate-officiis-id-quia-tempore-consequatur-sit-ut-quasi-at-aliquid-velit', 'Delectus suscipit cum quia quia vel. Est voluptatem ipsum laborum at velit natus est. Sed quo atque cumque. Et tempora exercitationem et in numquam et nam.', 'Hic error tenetur temporibus aliquid sit ut est. Neque omnis voluptatum qui officia. Consectetur molestiae qui dolore id laboriosam. Cum dolores quis veritatis quidem. In recusandae hic impedit dignissimos ipsum iste. Culpa debitis omnis aut magni voluptatibus. Exercitationem amet placeat illo est voluptatibus aliquid earum. Quidem officiis eos saepe quo. Deserunt nisi et temporibus autem quis rerum iure.', 1, 'Computer Repairer', '345 Turner Mountains Apt. 617\nNorth Candido, TX 14039-6764', 'Full Time', '1', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(7, 3, 19, 'Deleniti eum dolor aut nemo adipisci ab dolorem. Nulla in quia deleniti quis assumenda. Accusantium officia dolorem ea fugiat assumenda aut.', 'deleniti-eum-dolor-aut-nemo-adipisci-ab-dolorem-nulla-in-quia-deleniti-quis-assumenda-accusantium-officia-dolorem-ea-fugiat-assumenda-aut', 'Dolores omnis numquam quam consequatur odio debitis perspiciatis. Inventore possimus et facere porro tempore fugiat.', 'Consectetur nemo vel explicabo inventore rerum modi. Veritatis est sint corrupti numquam quia. Sapiente deleniti esse autem dolorem consequatur alias ex praesentium.', 1, 'Sawing Machine Operator', '30921 Kassulke Street Apt. 393\nPort Vaughnberg, ND 60491', 'Full Time', '1', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(8, 2, 2, 'Laboriosam ea eveniet saepe et ullam sit. Qui cupiditate repellendus reprehenderit provident rem aliquid.', 'laboriosam-ea-eveniet-saepe-et-ullam-sit-qui-cupiditate-repellendus-reprehenderit-provident-rem-aliquid', 'Laborum eos occaecati sint qui nihil dolor odio. Praesentium quos ex veniam consequatur aperiam. Reprehenderit est porro qui rerum commodi. Ratione quaerat quis repellat quia nesciunt optio.', 'Eos mollitia sapiente ex quas provident ullam aut. Saepe et et itaque molestiae soluta dicta possimus. Odit voluptatum ut libero ut. Reprehenderit beatae et quas odio dolores sunt incidunt. Et similique harum qui praesentium quisquam. Earum nam sapiente perferendis unde sed mollitia aut. Vel voluptas aut quia quaerat. Eveniet consectetur voluptatibus ut dolor fugit excepturi eligendi. Ut aut nobis id impedit quia iste.', 0, 'Textile Knitting Machine Operator', '5722 Shanelle Key Apt. 772\nPort Dewayne, LA 36522', 'Full Time', '0', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(9, 14, 9, 'Aut ea corrupti rerum eum. Cumque saepe ea dolor voluptatem aliquid reiciendis. Deserunt qui aut accusantium eum.', 'aut-ea-corrupti-rerum-eum-cumque-saepe-ea-dolor-voluptatem-aliquid-reiciendis-deserunt-qui-aut-accusantium-eum', 'Sunt autem sunt reiciendis consectetur dolores. Voluptate dicta expedita ipsum sapiente quidem doloremque. Consectetur eius et nihil itaque laudantium. Est aspernatur dolores accusamus velit.', 'Laborum quos quia quidem quia rerum laudantium. Minima nihil delectus quis id voluptas atque aperiam. Velit dolores quaerat rem cumque ex dolor eveniet pariatur.', 0, 'Welfare Eligibility Clerk', '80880 Bailey Run Suite 246\nZiemannshire, MS 49478', 'Full Time', '0', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(10, 20, 3, 'Aut autem delectus omnis cumque. Aut quis quod consectetur. Et sunt rem laudantium dolor. Ab dolores perferendis enim est consequatur rerum.', 'aut-autem-delectus-omnis-cumque-aut-quis-quod-consectetur-et-sunt-rem-laudantium-dolor-ab-dolores-perferendis-enim-est-consequatur-rerum', 'Doloremque adipisci placeat voluptas aut dolores alias. Eligendi alias nemo necessitatibus qui. Totam error ipsum suscipit aut nemo quia.', 'Error et sit molestiae tempore corrupti consequatur veritatis quia. Iure qui esse aliquam quam. Vel voluptas maiores reprehenderit autem natus. Animi neque sit sit incidunt consequuntur explicabo. Voluptatem ut aut repellat sed saepe ut non laborum. Sed labore qui debitis asperiores. Optio vitae rerum earum tempore aut quos delectus quidem. Laborum et dolores at debitis id ut. Officiis ut quos corporis et aliquid odit labore.', 0, 'Photographic Restorer', '86145 Casper Valley\nWest Muhammadton, VA 24316', 'Full Time', '1', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(11, 4, 12, 'Eaque soluta qui nostrum occaecati. Saepe id id eum nobis eos voluptas. Cumque ad culpa laudantium doloremque.', 'eaque-soluta-qui-nostrum-occaecati-saepe-id-id-eum-nobis-eos-voluptas-cumque-ad-culpa-laudantium-doloremque', 'Reiciendis excepturi minima in perferendis ducimus omnis. Non ad voluptatum harum aspernatur voluptatem est. Voluptatibus magni ut ducimus.', 'Pariatur et dolores eius tempora rerum ea distinctio maxime. In ullam fugit quia omnis praesentium nisi. Et quibusdam eum porro est quasi eos. Voluptas perferendis dignissimos quasi voluptas nesciunt eius beatae. Dolores vero laudantium est officia veritatis. Odio aut aut quia. Magni deserunt sint qui ipsum non atque est pariatur.', 0, 'Foreign Language Teacher', '65773 Yasmeen Throughway\nJefferyfurt, NV 12115-2166', 'Full Time', '0', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(12, 11, 6, 'Soluta omnis est rerum laudantium quasi repellendus. Saepe est dignissimos repellendus minus. Cum corporis consequatur natus veritatis tempora cumque.', 'soluta-omnis-est-rerum-laudantium-quasi-repellendus-saepe-est-dignissimos-repellendus-minus-cum-corporis-consequatur-natus-veritatis-tempora-cumque', 'Ut quae ullam perspiciatis neque nulla laboriosam. Iure qui a officiis consequatur dignissimos modi quis. Aliquid qui rerum ut incidunt ut.', 'Rerum consequatur aliquam eos illum assumenda sapiente exercitationem. Est modi maiores placeat earum aut omnis voluptas. Molestiae neque fugit et ut aut. Magnam ut repellendus blanditiis modi qui ut.', 1, 'Captain', '619 Vandervort Springs Apt. 610\nGleasonmouth, CO 77659', 'Full Time', '0', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(13, 5, 18, 'Officia qui ut minus minus quam eveniet. Cupiditate culpa quia sint incidunt magni necessitatibus. Tempora aut aut labore accusantium. Similique est cupiditate eius quas.', 'officia-qui-ut-minus-minus-quam-eveniet-cupiditate-culpa-quia-sint-incidunt-magni-necessitatibus-tempora-aut-aut-labore-accusantium-similique-est-cupiditate-eius-quas', 'Placeat quae cum nihil omnis nesciunt. Laudantium dolore dolor voluptate. Eaque quia inventore dolorum qui.', 'Molestias modi quam neque qui facere. Ea nobis aut voluptatem inventore. Cum est ut ipsa excepturi. Modi consequatur modi tempora explicabo rem. Quia perferendis quibusdam sed veniam tempora. Maiores aut voluptas possimus tenetur quam ut. Iure ducimus error quidem eveniet exercitationem pariatur aut.', 0, 'Material Moving Worker', '778 Ortiz Oval\nEast Yesenia, NJ 76744', 'Full Time', '0', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(14, 19, 9, 'Ullam hic aspernatur placeat inventore eaque. Iure beatae voluptatem et aut ullam. Sit nemo dolore sit vel maiores ut molestiae.', 'ullam-hic-aspernatur-placeat-inventore-eaque-iure-beatae-voluptatem-et-aut-ullam-sit-nemo-dolore-sit-vel-maiores-ut-molestiae', 'Excepturi eos aut sunt quia. Id at odit ab nisi consequatur. Quia est a fuga nesciunt.', 'Vero vel in sed vero. Exercitationem tempora vitae consectetur. Sit magnam nesciunt cum aspernatur reprehenderit voluptatem. Accusamus quia molestias et voluptatem omnis sit eveniet. Repellendus voluptatem perferendis repellendus accusamus eaque in est. Accusamus dolores quod harum. Suscipit id eos quod laudantium magni cupiditate sed. Quae voluptatem autem corporis doloremque sit sapiente. Blanditiis occaecati animi numquam cumque porro.', 0, 'CSI', '3728 Moen Locks\nNew Caden, MT 88885', 'Full Time', '0', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(15, 8, 9, 'Quia amet quibusdam minus dolor tempora excepturi. Sed qui nobis minus saepe consequatur ad et. Doloribus aliquam quisquam maiores cumque.', 'quia-amet-quibusdam-minus-dolor-tempora-excepturi-sed-qui-nobis-minus-saepe-consequatur-ad-et-doloribus-aliquam-quisquam-maiores-cumque', 'Omnis eum unde repudiandae et aut dolor excepturi. Sint fugit officiis dicta quia.', 'Aliquam impedit qui corporis nisi. Ut cumque consequatur assumenda. Error saepe quibusdam et hic facere beatae. Dolorem saepe illum reprehenderit vel. Veritatis natus deleniti earum officia voluptatem alias accusantium. Et ducimus assumenda sint sit iusto laboriosam.', 1, 'Manager of Food Preparation', '150 Elissa View Apt. 947\nBorerview, CT 84853', 'Full Time', '1', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(16, 11, 11, 'A earum vel voluptas assumenda et alias laboriosam. Quos nobis iste nam reiciendis iure dolorem.', 'a-earum-vel-voluptas-assumenda-et-alias-laboriosam-quos-nobis-iste-nam-reiciendis-iure-dolorem', 'Nihil repudiandae et itaque. Numquam aut fugiat explicabo tempora odio.', 'Aliquid aut vero aut minima dolorem distinctio placeat. Dolorem incidunt cupiditate ut quaerat ipsum velit iure rerum. Rerum ea dolor consequatur ut ad. Quo est minus facere et voluptate. Et modi et explicabo ullam assumenda totam sint corrupti. Impedit tempora et est sequi ducimus nemo numquam. Pariatur magni voluptas dolorum voluptatem. Explicabo consequatur rerum ad magnam sunt sequi.', 1, 'Infantry', '846 Stroman Dale\nWillside, ID 92605', 'Full Time', '0', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(17, 16, 17, 'Inventore voluptatem ratione explicabo qui. Officiis eum qui ut minus aspernatur sunt aut.', 'inventore-voluptatem-ratione-explicabo-qui-officiis-eum-qui-ut-minus-aspernatur-sunt-aut', 'Quod qui fugit architecto optio. Est atque rerum animi saepe explicabo nihil omnis repudiandae.', 'Ab libero natus quisquam consequatur maxime sed. Quia eligendi molestiae perferendis minima. Consequatur voluptatem distinctio at quod.', 1, 'Traffic Technician', '2541 Reichel Rapid\nSouth Nicholemouth, MD 81444', 'Full Time', '1', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(18, 6, 3, 'Iusto id itaque nihil neque omnis. Ducimus inventore eos illum eos eveniet vero ullam. Quam quo et et ex tempore inventore necessitatibus. Quia alias inventore quae.', 'iusto-id-itaque-nihil-neque-omnis-ducimus-inventore-eos-illum-eos-eveniet-vero-ullam-quam-quo-et-et-ex-tempore-inventore-necessitatibus-quia-alias-inventore-quae', 'Eos voluptatibus quae eligendi ratione consectetur recusandae optio. Qui sit non aspernatur similique tenetur blanditiis aut. Rem ea dolorem nam ut est deserunt.', 'Laborum nisi eaque rem. Quis accusantium in voluptatem iusto recusandae nobis rerum ut. Accusamus aut magni a maiores. Ea possimus minus ut dolores autem laudantium beatae commodi. Est dolores cupiditate maxime consequatur. Delectus aut aut et repellat. Deleniti at sequi optio itaque omnis.', 0, 'Insurance Investigator', '3200 Francisca Inlet\nPort Naomieburgh, RI 18152-8246', 'Full Time', '1', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(19, 19, 14, 'Vel non enim delectus tempore cupiditate. Molestiae quod atque fugiat ut. Eveniet error eius quaerat et sapiente.', 'vel-non-enim-delectus-tempore-cupiditate-molestiae-quod-atque-fugiat-ut-eveniet-error-eius-quaerat-et-sapiente', 'Voluptates aliquam fugiat sed hic voluptas et tempore. Ab exercitationem aut nihil asperiores voluptatem consequatur id.', 'Earum distinctio at animi. Deserunt consequatur fugiat quis neque nam quis. Est voluptas est sed dolore nesciunt. Sed maxime consectetur non ratione tempora iusto quis.', 0, 'Purchasing Manager', '40462 Pascale Points Apt. 658\nBarbarabury, DE 85016', 'Full Time', '0', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(20, 1, 3, 'Molestias quidem quisquam neque aut distinctio dolorem quo. Asperiores in ipsa consequatur perferendis eligendi reiciendis quia autem. Fugiat cum unde quidem vel hic id sapiente nam.', 'molestias-quidem-quisquam-neque-aut-distinctio-dolorem-quo-asperiores-in-ipsa-consequatur-perferendis-eligendi-reiciendis-quia-autem-fugiat-cum-unde-quidem-vel-hic-id-sapiente-nam', 'Aperiam veritatis aperiam est corporis quaerat dolores. Dolorem voluptas natus ab ut ut aut quibusdam. Ipsam iste odit voluptas error voluptatibus non mollitia. Modi optio qui iure labore.', 'Est incidunt aliquid quidem repellendus sed accusamus ipsum. Harum eum quaerat sed fugit perferendis. Nihil ipsam voluptas sunt excepturi ipsa doloremque amet. Non asperiores autem ut modi molestiae. Et dolorem optio vitae eum et. Praesentium cumque aut qui illo eos. Esse consectetur sunt illo vel quibusdam commodi velit sit.', 0, 'Packer and Packager', '478 Lebsack Causeway Apt. 843\nCamrenburgh, GA 56708-0719', 'Full Time', '1', '0000-00-00', '2019-10-31 09:41:38', '2019-10-31 09:41:38'),
(21, 21, 21, 'PHP', 'php', 'Programmer', 'jhdfhgdfhgjhxhcbhzdgfjzxdnis ssdfkjzhdsvzd', 3, 'Absolute', 'Shukrabad, Tejgaon, Dhaka.', 'parttime', 'draft', '2019-11-01', '2019-10-31 10:53:31', '2019-10-31 10:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `job_user`
--

CREATE TABLE `job_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_27_142051_create_jobs_table', 1),
(4, '2019_10_27_142303_create_categories_table', 1),
(5, '2019_10_27_142316_create_companies_table', 1),
(6, '2019_10_27_142333_create_profiles_table', 1),
(7, '2019_10_27_142443_create_job_user_table', 1),
(8, '2019_10_27_142509_create_favourites_table', 1),
(9, '2019_10_29_182900_add_phone_number_to_profiles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_ID` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_letter` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_ID`, `address`, `phone_number`, `gender`, `dob`, `experience`, `bio`, `cover_letter`, `resume`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 22, '', NULL, 'Male', '2019-10-15', '', '', '', '', '', '2019-10-31 09:45:55', '2019-10-31 09:45:55'),
(2, 23, '', NULL, 'Male', '1996-06-28', '', '', '', '', '', '2019-11-17 17:42:43', '2019-11-17 17:42:43'),
(3, 24, '', NULL, 'Male', '1997-06-28', '', '', '', '', '', '2019-11-17 17:54:13', '2019-11-17 17:54:13'),
(4, 26, '', NULL, 'Male', '1997-06-28', '', '', '', '', '', '2019-11-17 18:10:57', '2019-11-17 18:10:57'),
(5, 27, '', NULL, 'Male', '1997-06-28', '', '', '', '', '', '2019-11-17 18:12:30', '2019-11-17 18:12:30'),
(6, 28, '', NULL, 'Male', '2019-11-28', '', '', '', '', '', '2019-11-17 18:16:45', '2019-11-17 18:16:45'),
(7, 29, '', NULL, 'Male', '1996-06-28', '', '', '', '', '', '2019-11-17 18:19:30', '2019-11-17 18:19:30'),
(8, 30, '', NULL, 'Male', '2019-11-11', '', '', '', '', '', '2019-11-17 18:24:33', '2019-11-17 18:24:33'),
(9, 31, '', NULL, 'Male', '2019-11-10', '', '', '', '', '', '2019-11-17 18:26:35', '2019-11-17 18:26:35'),
(10, 32, '', NULL, 'Male', '2019-11-17', '', '', '', '', '', '2019-11-17 18:31:15', '2019-11-17 18:31:15'),
(11, 33, '', NULL, 'Male', '2019-11-18', '', '', '', '', '', '2019-11-22 17:03:28', '2019-11-22 17:03:28'),
(12, 36, '', NULL, 'Male', '2019-11-04', '', '', '', '', '', '2019-11-22 20:19:45', '2019-11-22 20:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Joy Murphy', 'seeker', 'alphonso48@example.net', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vmGeABUqaN', '2019-10-31 09:41:35', '2019-10-31 09:41:35'),
(2, 'Janet Sanford', 'seeker', 'murray09@example.net', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WCvLF3kx32', '2019-10-31 09:41:35', '2019-10-31 09:41:35'),
(3, 'Caleigh Fahey', 'seeker', 'hollie.zboncak@example.net', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I10euRft0w', '2019-10-31 09:41:35', '2019-10-31 09:41:35'),
(4, 'Dr. Jasmin Wyman II', 'seeker', 'keebler.daisy@example.net', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QwTlJgilqb', '2019-10-31 09:41:35', '2019-10-31 09:41:35'),
(5, 'Eloisa Bergstrom', 'seeker', 'zachary.bechtelar@example.org', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hMKywoAeBQ', '2019-10-31 09:41:35', '2019-10-31 09:41:35'),
(6, 'Randi Legros', 'seeker', 'ryley.okon@example.com', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LDqh1EhkU4', '2019-10-31 09:41:35', '2019-10-31 09:41:35'),
(7, 'Izaiah Maggio', 'seeker', 'kozey.savanah@example.net', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZpiJAl2mD8', '2019-10-31 09:41:35', '2019-10-31 09:41:35'),
(8, 'Lysanne Pacocha', 'seeker', 'mike.lueilwitz@example.com', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'udSsDUOeso', '2019-10-31 09:41:35', '2019-10-31 09:41:35'),
(9, 'Stella Rice', 'seeker', 'benny.powlowski@example.org', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eswnAuYuJD', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(10, 'Liana Moore', 'seeker', 'qmacejkovic@example.com', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qJiONOihlc', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(11, 'Mrs. Julie Runolfsson IV', 'seeker', 'tmraz@example.com', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '810OAZn75M', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(12, 'Desmond Reichel', 'seeker', 'qgreen@example.com', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'biIR9ieZdo', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(13, 'Prof. Reilly Trantow II', 'seeker', 'sheridan.klocko@example.org', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RFI2v5utWp', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(14, 'Prof. Dorcas O\'Kon', 'seeker', 'stamm.skye@example.net', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dFHl2KpUUV', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(15, 'Miss Yazmin Weimann', 'seeker', 'jaqueline.boehm@example.net', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VCMuksZ49M', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(16, 'Jerrell Wuckert', 'seeker', 'jovani50@example.com', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F1PVGL8N9g', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(17, 'Sylvia Beahan', 'seeker', 'ksenger@example.net', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wdBRNZpB58', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(18, 'Aurore Rodriguez', 'seeker', 'fcummerata@example.com', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PJ3cqpQhxH', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(19, 'Mr. Tavares Nader', 'seeker', 'jacobs.lavinia@example.org', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EumxUeS8go', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(20, 'Fannie Hayes', 'seeker', 'jesse97@example.net', '2019-10-31 09:41:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'to2QIhFGUm', '2019-10-31 09:41:36', '2019-10-31 09:41:36'),
(36, 'ARDipto', 'seeker', 'ardipta82@gmail.com', '2019-11-22 20:20:26', '$2y$10$PcvbNsfpHWMJG8lCmmM/OuOy3GUjGJYVJKEhaja5akv.8i9Nrkili', NULL, '2019-11-22 20:19:44', '2019-11-22 20:20:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_user`
--
ALTER TABLE `job_user`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `job_user`
--
ALTER TABLE `job_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
