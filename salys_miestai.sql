-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019 m. Bal 26 d. 16:03
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salys_miestai`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `cities`
--

INSERT INTO `cities` (`id`, `name`, `info`, `country_id`) VALUES
(16, 'Moscow', 'Moscow (/ˈmɒskoʊ/, in US mainly: /ˈmɒskaʊ/;[10][11] Russian: Москва́, tr. Moskvá, IPA: [mɐskˈva] (About this soundlisten)) is the capital and most populous city of Russia, with 13.2 million residents within the city limits,[12] 17 million within the urban area[13] and 20 million within the metropolitan area.[14] Moscow is one of Russia\'s federal cities.', 15),
(17, 'Saint Peterburg', 'Saint Petersburg (Russian: Санкт-Петербу́рг, tr. Sankt-Peterburg, IPA: [ˈsankt pʲɪtʲɪrˈburk] (About this soundlisten)) is Russia\'s second-largest city after Moscow, with 5 million inhabitants in 2012,[9] part of the Saint Petersburg agglomeration with a population of 6.2 million (2015). An important Russian port on the Baltic Sea, it has a status of a federal subject (a federal city).', 15),
(18, 'Warsaw', 'Warsaw (Polish: Warszawa [varˈʂava] (About this soundlisten); see also other names) is the capital and largest city of Poland. The metropolis stands on the Vistula River in east-central Poland and its population is officially estimated at 1.770 million residents within a greater metropolitan area of 3.1 million residents,[4] which makes Warsaw the 8th most-populous capital city in the European Union. The city limits cover 516.9 square kilometres (199.6 sq mi), while the metropolitan area covers 6,100.43 square kilometres (2,355.39 sq mi).[5] Warsaw is an alpha global city,[6] a major international tourist destination, and a significant cultural, political and economic hub. Its historical Old Town was designated a UNESCO World Heritage Site.', 14),
(19, 'Kaunas', 'Kaunas (/ˈkaʊnəs/; Lithuanian: [ˈkɐʊˑnɐs] (About this soundlisten); also see other names ) is the second-largest city in Lithuania and the historical centre of Lithuanian economic, academic, and cultural life. Kaunas was the biggest city and the centre of a county in Trakai Municipality of the Grand Duchy of Lithuania since 1413. In the Russian Empire, it was the capital of the Kaunas Governorate from 1843 to 1915.', 13),
(20, 'Vilnius', 'Vilnius (Lithuanian pronunciation: [ˈvʲɪlʲnʲʊs] (About this soundlisten), see also other names) is the capital of Lithuania and its largest city, with a population of 574,147 as of 2018.[10] Vilnius is in the southeast part of Lithuania and is the second largest city in the Baltic states. Vilnius is the seat of the main government institutions of Lithuania and the Vilnius District Municipality.', 13);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `countries`
--

INSERT INTO `countries` (`id`, `name`, `info`) VALUES
(13, 'Lithuania', 'Lithuania (/ˌlɪθjuˈeɪniə/ (About this soundlisten);[10] Lithuanian: Lietuva [lʲɪɛtʊˈvɐ]), officially the Republic of Lithuania (Lithuanian: Lietuvos Respublika), is a country in the Baltic region of Europe. Lithuania is considered to be one of the Baltic states.[11] It is situated along the southeastern shore of the Baltic Sea, to the east of Sweden and Denmark. It is bordered by Latvia to the north, Belarus to the east and south, Poland to the south, and Kaliningrad Oblast (a Russian exclave) to the southwest. Lithuania has an estimated population of 2.8 million people as of 2019, and its capital and largest city is Vilnius. Other major cities are Kaunas and Klaipėda. Lithuanians are Baltic people. The official language, Lithuanian, along with Latvian, is one of only two living languages in the Baltic branch of the Indo-European language family.'),
(14, 'Poland', 'Poland (Polish: Polska [ˈpɔlska] (About this soundlisten)), officially the Republic of Poland (Polish: Rzeczpospolita Polska[c] [ʐɛt͡ʂpɔˈspɔlita ˈpɔlska] (About this soundlisten)), is a country located in Central Europe.[13] It is divided into 16 administrative subdivisions, covering an area of 312,696 square kilometres (120,733 sq mi), and has a largely temperate seasonal climate.[8] With a population of approximately 38.5 million people, Poland is the sixth most populous member state of the European Union.[8] Poland\'s capital and largest metropolis is Warsaw. Other major cities include Kraków, Łódź, Wrocław, Poznań, Gdańsk, and Szczecin.\r\n\r\nPoland is bordered by the Baltic Sea, Russia\'s Kaliningrad Oblast and Lithuania to the north, Belarus and Ukraine to the east, Slovakia and Czech Republic, to the south, and Germany to the west.'),
(15, 'Russia', 'Russia (Russian: Росси́я, tr. Rossiya, IPA: [rɐˈsʲijə]), officially the Russian Federation[12] (Russian: Росси́йская Федера́ция, tr. Rossiyskaya Federatsiya, IPA: [rɐˈsʲijskəjə fʲɪdʲɪˈratsɨjə]), is a transcontinental country in Eastern Europe and North Asia.[13] At 17,125,200 square kilometres (6,612,100 sq mi),[14] Russia is by a considerable margin the largest country in the world by area, covering more than one-eighth of the Earth\'s inhabited land area,[15][16][17] and the ninth most populous, with about 146.77 million people as of 2019, including Crimea.[8] About 77% of the population live in the western, European part of the country. Russia\'s capital, Moscow, is one of the largest cities in the world and the second largest city in Europe; other major cities include Saint Petersburg, Novosibirsk, Yekaterinburg and Nizhny Novgorod. Extending across the entirety of Northern Asia and much of Eastern Europe, Russia spans eleven time zones and incorporates a wide range of environments and landforms. From northwest to southeast, Russia shares land borders with Norway, Finland, Estonia, Latvia, Lithuania and Poland (both with Kaliningrad Oblast), Belarus, Ukraine, Georgia, Azerbaijan, Kazakhstan, China, Mongolia and North Korea. It shares maritime borders with Japan by the Sea of Okhotsk and the U.S. state of Alaska across the Bering Strait. However, Russia recognises two more countries that border it, Abkhazia and South Ossetia, both of which are internationally recognized as parts of Georgia.');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2019_04_26_053017_create_countries_table', 1),
(21, '2019_04_26_075203_create_cities_table', 1),
(22, '2019_04_26_081103_add_country_id_to_city', 1);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
