-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20251015.833796a1df
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2025 at 05:00 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelll`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_news`
--

CREATE TABLE `article_news` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` enum('featured','not_featured') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_featured',
  `category_id` bigint UNSIGNED NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_news`
--

INSERT INTO `article_news` (`id`, `name`, `content`, `thumbnail`, `is_featured`, `category_id`, `author_id`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'Sejarah Baru RRQ', '<p>RRQ (Rex Regium Qeon) akan tidak masuk playoff dalam pertama kalinya dalam sejarah e-sport.</p><p>Babak reguluer MPL ID Season 16 telah tuntas digelar pada Minggu 19 Oktober 2025.</p><p>Navi jadi tim terakhir yang lolos ke Playoff MPL Indonesia Season 16 (MPL ID S16) setelah berhasil mencuri poin dari <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://pontianak.tribunnews.com/tag/rrq-hoshi\">RRQ Hoshi</a>.</p><p>Match antara Navi vs <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://pontianak.tribunnews.com/tag/rrq-hoshi\">RRQ Hoshi</a> menjadi laga yang mendebarkan sekaligus menjadi penutup babak Regular Season <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://pontianak.tribunnews.com/tag/mpl-id-s16\">MPL ID S16</a>.</p><p>Seperti yang kita ketahui bersama, peluang RRQ Hoshi untuk lolos ke babak Playoff sangatlah kecil.</p><p>Hanya ada satu syarat agar <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://pontianak.tribunnews.com/tag/rrq-hoshi\">RRQ Hoshi</a> lolos ke Playoff. Di match penentu melawan Navi, <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://pontianak.tribunnews.com/tag/rrq-hoshi\">RRQ Hoshi</a> harus memenangkan pertandingan tersebut dengan skor 2-0.</p><p>Apakah hasilnya sesuai dengan ekspektasi?</p><p>Sejarah baru memang tercipta, namun hasilnya tidak sesuai dengan harapan dan keinginan, baik dari tim <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://pontianak.tribunnews.com/tag/rrq-hoshi\">RRQ Hoshi</a>, termasuk para penggemar.</p><p>Untuk pertama kalinya <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://pontianak.tribunnews.com/tag/rrq-hoshi\">RRQ Hoshi</a> tidak lolos di turnamen MPL Indonesia. <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://pontianak.tribunnews.com/tag/rrq-hoshi\">RRQ Hoshi</a> memang memenangkan match penutup di babak Regular Season.</p><p>Sayangnya kemenangan tersebut tidak sesuai dengan syarat perolehan skor.</p><p>Pertandingan antara <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://pontianak.tribunnews.com/tag/rrq-hoshi\">RRQ Hoshi</a> vs Navi berlangsung sengit. RRQ yang memenangkan game pertama masih punya secercah harapan agar lolos ke babak Playoff.</p><p>Memasuki game ke-2, Navi terlihat mendominasi seakan tidak ingin melewatkan kesempatan emas lolos ke babak Playoff.</p><p>Game ke-2 ini berlangsung alot, <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://pontianak.tribunnews.com/tag/rrq-hoshi\">RRQ Hoshi</a> masih mampu menahan markas mereka dari gempuran Navi.</p><p>Hingga pada akhirnya Navi berhasil memanfaatkan momentum berharga di mid. Perebutan Lord membuat RRQ sedikit lengah yang membuat pemain core mereka tumbang dengan cepat.</p><p>Tidak ada lagi yang bisa menahan gempuran <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://pontianak.tribunnews.com/tag/rrq-hoshi\">RRQ Hoshi</a>, Navi memanfaatkan moment tersebut untuk segera mengakhiri game ke-2 sekaligus mengamankan tiket mereka menuju Playoff.</p>', '01K87J9R9A81MW9Z3F81N6K7GZ.webp', 'featured', 1, 2, 'sejarah-baru-rrq', NULL, '2025-10-15 21:49:09', '2025-10-29 19:54:43'),
(4, 'Sejarah Baru NAVI', '<p>NAVI akan masuk playoff untuk pertama kali nya dalam sejarah MPL.</p><p>Ini adalah <em>roster</em> Navi MPL ID S15 atau yang bisa juga disebut sebagai Natus Vincere. Sebagai tim baru MPL ID S15 mari kenal lebih jauh organisasi <em>esports</em> asal Ukraina tersebut.</p><p style=\"text-align: justify;\">Kabar mengejutkan datang dari salah satu tim Mobile Legends Professional League (MPL) Indonesia, yang mana Rebellion Esports resmi diakuisisi oleh salah satu organisasi <em>esports</em> dunia asal Ukraina yaitu<strong> Natus Vincere.</strong></p><p style=\"text-align: justify;\">Hal ini diumumkan melalui <a target=\"_blank\" rel=\"noopener\" href=\"https://www.instagram.com/p/DFzmNZevzMD/\">akun Instagram Rebellion Esports</a> pada hari Sabtu, (08/02/2025), yang mana <strong>Rebellion Esports resmi diakuisisi Natus Vincere</strong> dan akan menjadi penantang baru di gelaran MPL ID S15.</p><p style=\"text-align: justify;\">Langkah ini menandai babak baru dalam sejarah MPL Indonesia, menyusul ekspansi tim internasional lainnya seperti Team Liquid pada tahun 2024. Navi siap membawa dinamika baru ke dalam kompetisi dengan mengandalkan <em>roster </em>muda yang potensial.</p><p style=\"text-align: justify;\">Akuisisi ini juga menunjukkan bahwa MPL Indonesia semakin menarik bagi organisasi <em>esports</em> global, mengingat ekosistem kompetitifnya yang sangat kuat dan basis penggemar yang besar.</p><p style=\"text-align: justify;\">Sebelum itu kalian harus mengetahui terlebih dahulu <em>roster</em> Navi MPL ID S15, apa itu Natus Vincere dan sejarah serta prestasi mereka di kancah global <em>scene esports</em>.</p><p style=\"text-align: justify;\">Natus Vincere, atau lebih dikenal sebagai Navi, adalah salah satu organisasi esports ikonik di dunia.</p><p style=\"text-align: justify;\">Berdiri sejak 2009, NAVI telah membangun reputasi sebagai tim yang kompetitif di berbagai turnamen internasional, terutama di ranah Counter-Strike, Dota 2, dan berbagai game lainnya.</p><p style=\"text-align: justify;\">NAVI didirikan pada 2009 di Ukraina oleh Alexander “ZeroGravity” Kokhanovskyy. Nama “Natus Vincere” berasal dari bahasa Latin yang berarti “<strong>Lahir untuk Menang</strong>” yang mencerminkan ambisi besar organisasi ini untuk menjadi yang terbaik di dunia esports.</p><p style=\"text-align: justify;\">Tim pertama Navi yang mencapai kesuksesan besar adalah divisi Counter-Strike 1.6. Mereka menjadi tim pertama dalam sejarah yang memenangkan tiga turnamen besar dalam satu tahun, yaitu IEM IV, ESWC 2010, dan WCG 2010. Prestasi ini menempatkan Navi sebagai salah satu tim CS terbaik sepanjang masa.</p>', '01K87JB74HM99Z8FKEDEJWENWM.webp', 'not_featured', 1, 3, 'sejarah-baru-navi', NULL, '2025-10-22 19:48:08', '2025-10-29 19:56:17'),
(5, 'Jadwal Playoff MPL ID S16 Hari Ini: 4 Tim Tersisa, ONIC Diuntungkan', '<p>Perebutan gelar juara <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/mobile-legends\" class=\"blue\">Mobile Legends</a> Professional League Indonesia Season 16 (MPL ID S16) semakin panas.</p><p>Turnamen kini hanya menyisakan empat tim terbaik, yakni <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/onic\" class=\"blue\">ONIC</a>, <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/bigetron\" class=\"blue\">Bigetron</a>, <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/alter-ego\" class=\"blue\">Alter Ego</a>, dan <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/evos\" class=\"blue\">EVOS</a>.</p><p>Kedua tim terakhir, <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/alter-ego\" class=\"blue\">Alter Ego</a> dan <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/evos\" class=\"blue\">EVOS</a>, sukses melangkah ke <em>upper bracket semifinal</em> setelah tampil gemilang di babak play-in, Rabu (29/10/2025).</p><p>Alter Ego menyingkirkan Natus Vincere (NAVI) dengan skor 3-1, sedangkan <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/evos\" class=\"blue\">EVOS</a> menumbangkan Dewa United lewat duel ketat 3-2.</p><p>Kemenangan ini memastikan langkah <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/alter-ego\" class=\"blue\">Alter Ego</a> dan <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/evos\" class=\"blue\">EVOS</a> untuk menantang dua raksasa, <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/bigetron\" class=\"blue\">Bigetron</a> dan <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/onic\" class=\"blue\">ONIC</a> yang sebelumnya menunggu di <em>upper bracket semifinal.</em></p><p>Bigetron dan <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/onic\" class=\"blue\">ONIC</a> otomatis langsung tampil di <em>upper bracket semifinal </em>karena performa impresif mereka di babak regular season atau fase grup.</p><p>Seperti diketahui, dua tim teratas di babak fase grup akan otomatis tampil di<em> upper bracket semifinal.</em></p><p>ONIC tampil luar biasa sepanjang musim reguler dengan catatan hanya dua kekalahan dari 16 pertandingan, menjadikan tim Landak Kuning favorit kuat untuk lolos ke <em>upper bracket final.</em></p><p>Jika prediksi tersebut terbukti, <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/evos\" class=\"blue\">EVOS</a> berpotensi turun ke<em> lower bracket </em>untuk melanjutkan perjuangan mereka dari jalur bawah.</p><p>Tak hanya trofi <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.tribunnews.com/tag/mpl-id-s16\" class=\"blue\">MPL ID S16</a>, pertaruhan kali ini juga memperebutkan dua tiket ke M7 World Championship yang akan digelar Januari 2026.</p>', '01K8SGEYQJZ3YE3GR3DA0N0M7P.jpg', 'not_featured', 1, 2, 'jadwal-playoff-mpl-id-s16-hari-ini-4-tim-tersisa-onic-diuntungkan', NULL, '2025-10-29 19:51:59', '2025-10-29 19:51:59'),
(6, 'Dirumorkan Ke MDL Ini Jawaban Antimage Mobile Legends (ML)', '<p>Beberapa waktu yang lalu Antimage Secara resmi mengumumkan farewell dengan tim Evos. Tentunya hal tersebut cukup mengejutkan para fans tentunya dengan salah satu Exp Laner di MPL tersebut secara resmi harus Farewell dengan Evos. Banyak isu terkait kemana dirinya nanti akan bermain. Kali ini Dirumorkan Ke MDL Ini Jawaban Antimage <a target=\"_self\" rel=\"noopener noreferrer nofollow\" href=\"https://esportsku.com/mobile-esports/mobile-legends/\">Mobile Legends</a> (ML).</p><p>Evos Legends sendiri memang sedang melakukan beberapa perombakan untuk Roster yang mereka miliki saat ini. Salah satu caranya adalah dengan <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://esportsku.com/evos-melepas-antimage-dan-lj-mobile-legends-ml/\">Farewell Antimage dan LJ</a> beberapa waktu yang lalu. Tentunya hal tersebut membuat para fans cukup terkejut dengan hal tersebut karena memang kedua player yang di Farewell oleh Evos tidak bisa diragukan lagi kemampuannya.</p><p></p><p>Banyak juga yang merumorkan kemana nantinya pemain tersebut akan bermain nantinya. Salah satunya dengan Antimage yang dikabarkan akan diturunkan ke MDL. Lantas apakah jawaban langsung dari Antimage sendiri? Simak penjelasannya berikut ini.</p>', '01K8SGVM97X1VAH6N3VG5638QW.png', 'not_featured', 3, 4, 'dirumorkan-ke-mdl-ini-jawaban-antimage-mobile-legends-ml', NULL, '2025-10-29 19:58:54', '2025-10-29 19:58:54'),
(7, 'Jadwal M7 World Championship, Turnamen Internasional Mobile Legends Resmi Digelar di RI!', '<p>Rincinya, kompetisi kelas dunia MLBB ini bakal dilakukan di Jakarta pada Januari 2026. Total 22 tim bakal bertarung selama kompetisi M7 World Championship tersebut.</p><p>Berikut jadwal M7 World Championship Mobile Legends:</p><p>Wild Card Stage (3–6 Januari): 8 tim bersaing untuk 2 slot ke Main Stage.</p><p>Swiss Stage (10–17 Januari): 16 tim memperebutkan tempat ke Knockout Stage, hanya 8 yang lolos.</p><p>Knockout Stage (18–24 Januari): 8 tim bersaing menuju 4 besar.</p><p>Grand Finals (25 Januari): Menentukan Juara Dunia Mobile Legends berikutnya.</p><p>Slogan turnamen “Let the World See Us” pun turut diumumkan. Slogan ini mencerminkan misi perusahaan game asal China itu untuk menyoroti komunitas yang penuh semangat yang telah menjadikan MLBB salah satu game Multiplayer Online Battle Arena (MOBA) mobile paling populer di dunia.</p><p>Mau konten menarik lainnya?</p><p>Follow Instagram: <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.instagram.com/suaradotcom\">https://www.instagram.com/suaradotcom</a></p><p>Follow Facebook: <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.facebook.com/suaradotcom\">https://www.facebook.com/suaradotcom</a></p><p>Follow Twitter: <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://twitter.com/suaradotcom\">https://twitter.com/suaradotcom</a></p><p>Subscribe YouTube: <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.youtube.com/user/suaradotcom\">https://www.youtube.com/user/suaradotcom</a></p><p>Mau konten menarik lainnya?</p><p>Follow Instagram: <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.instagram.com/suaradotcom\">https://www.instagram.com/suaradotcom</a></p><p>Follow Facebook: <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.facebook.com/suaradotcom\">https://www.facebook.com/suaradotcom</a></p><p>Follow Twitter: <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://twitter.com/suaradotcom\">https://twitter.com/suaradotcom</a></p><p>Subscribe YouTube: <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.youtube.com/user/suaradotcom\">https://www.youtube.com/user/suaradotcom</a></p>', '01K8SH1QY8FDXW2ZGA00KAKBS5.webp', 'not_featured', 2, 5, 'jadwal-m7-world-championship-turnamen-internasional-mobile-legends-resmi-digelar-di-ri', NULL, '2025-10-29 20:02:15', '2025-10-29 20:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `avatar`, `occupation`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Fuad', 'fuad', '01K7NEVZ06KS6V8W7MXZ4BY7CK.png', 'Sunda', '2025-10-22 19:39:51', '2025-10-15 19:51:29', '2025-10-22 19:39:51'),
(2, 'Subaru', 'subaru', '01K87F1119633CZCW6BHQKTTA2.webp', 'Banjar', NULL, '2025-10-22 19:40:34', '2025-10-22 19:40:34'),
(3, 'Waguri', 'waguri', '01K87F2ZA1ERNFHXKV8AYTAYXC.webp', 'Handil Bakti', NULL, '2025-10-22 19:41:38', '2025-10-22 19:41:38'),
(4, 'Wifey', 'wifey', '01K87F4W2SDCFG3TKNQKQANDDP.webp', 'Marabahan', NULL, '2025-10-22 19:42:40', '2025-10-22 19:42:40'),
(5, 'Another Wifey', 'another-wifey', '01K87F6WB6RNG657F9X0Z895GR.webp', 'Kayu Tangi', NULL, '2025-10-22 19:43:46', '2025-10-22 19:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `banner_advertisments`
--

CREATE TABLE `banner_advertisments` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('active','not_active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_advertisments`
--

INSERT INTO `banner_advertisments` (`id`, `link`, `type`, `thumbnail`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'https://www.kompasiana.com/tag/artikel', 'banner', '01K8SH557NGGQD4BNZ0ZRVBK3B.png', 'active', NULL, '2025-10-15 19:45:51', '2025-10-29 20:04:07'),
(2, 'https://www.suara.com/tekno/2025/10/02/223435/jadwal-m7-world-championship-turnamen-internasional-mobile-legends-resmi-digelar-di-ri', 'square', '01K8SH76AXJN57T9CQ2K55EZ7W.png', 'active', NULL, '2025-10-29 20:05:13', '2025-10-29 20:05:13'),
(3, 'https://www.msn.com/id-id/berita/other/terungkap-bekingan-menkeu-purbaya-pantas-tak-gentar-singgung-pejabat-lain-dan-abaikan-hasan-nasbi/ar-AA1PoUU4?ocid=entnewsntp&pc=NMTS&cvid=6902d1e3dad34bb5b5569ac45f34efcf&ei=22', 'square', '01K8SH91BNKH3GM3DB6Z3XGX21.png', 'active', NULL, '2025-10-29 20:06:14', '2025-10-29 20:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1761794253),
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1761794253;', 1761794253),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1760849444),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1760849444;', 1760849444);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'MPL', '01K8SHK3JZK1XCXG6D5D5F8ZKR.webp', 'mpl', NULL, '2025-10-15 18:57:04', '2025-10-29 20:11:44'),
(2, 'World Championship', '01K8SHPTP9HRMBSQZ20B1K2SEC.jpg', 'world-championship', NULL, '2025-10-22 19:35:12', '2025-10-29 20:13:46'),
(3, 'MDL', '01K8SHN2FSM60EFBSWPR065936.jpg', 'mdl', NULL, '2025-10-22 19:35:50', '2025-10-29 20:12:48'),
(4, 'MCL', '01K8SHW43MZ503A89ZV0QZXN0N.webp', 'mcl', NULL, '2025-10-22 19:36:41', '2025-10-29 20:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_16_014230_create_categories_table', 2),
(5, '2025_10_16_014648_create_authors_table', 2),
(6, '2025_10_16_014702_create_article_news_table', 2),
(7, '2025_10_16_014727_create_banner_advertisments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('nSyw8zD3cnsGgxgfeKmnBmo9AhPGFJHJVKisS8ER', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGNUazBTR3hhdzdGRGZJdTdzVnpTMUF5UTM2OWRUaGJlWWV4QTNBWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdG9yYWdlL3ByaXZhdGUvMDFLODdKQjc0SE05OVo4RktFREVKV0VOV00ud2VicCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763565922);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'fuad', 'fuad@gmail.com', NULL, '$2y$12$P25ajqwrqTf7j6wZyc0emefLENQ6gTFXfaeq6TsDG8p4REc5NmZBa', 'iKRG0d4sR2DXGFjlRjBFA8C6Hk6TEOcY44sKUdH7LhYYyU9x5R9aiKGTpCMc', '2025-10-15 18:40:28', '2025-10-15 18:40:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_news`
--
ALTER TABLE `article_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_news_slug_unique` (`slug`),
  ADD KEY `article_news_category_id_foreign` (`category_id`),
  ADD KEY `article_news_author_id_foreign` (`author_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_slug_unique` (`slug`);

--
-- Indexes for table `banner_advertisments`
--
ALTER TABLE `banner_advertisments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `article_news`
--
ALTER TABLE `article_news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banner_advertisments`
--
ALTER TABLE `banner_advertisments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_news`
--
ALTER TABLE `article_news`
  ADD CONSTRAINT `article_news_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
