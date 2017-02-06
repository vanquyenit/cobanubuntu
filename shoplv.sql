-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 05 Février 2017 à 21:33
-- Version du serveur :  5.6.24
-- Version de PHP :  5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `shoplv`
--

-- --------------------------------------------------------

--
-- Structure de la table `cates`
--

CREATE TABLE IF NOT EXISTS `cates` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cates`
--

INSERT INTO `cates` (`id`, `name`, `alias`, `order`, `parent_id`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Quần thun ', 'Quan-Thun', 20, 0, 'Quần Thun giá rẻ', 'Quần Thun giá rẻ', '2017-01-07 22:52:19', '2017-01-07 22:52:19'),
(2, 'Quần thun 12', 'Quan-Thun-12', 2, 1, 'Quần Thun giá rẻ 1', 'Quần Thun giá rẻ 1', '2017-01-07 22:53:00', '2017-01-16 04:34:01');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2017_01_03_145947_create_cates_table', 1),
(12, '2017_01_03_152212_create_products_table', 1),
(13, '2017_01_03_153344_create_product_images_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `productimages`
--

CREATE TABLE IF NOT EXISTS `productimages` (
  `id` int(10) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `productimages`
--

INSERT INTO `productimages` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(10, '669dcd688b3fe349b6c67f73233d9fcf.jpeg', 1, '2017-01-18 00:52:28', '2017-01-18 00:52:28'),
(11, '711a9d5a34a2a4ffb1141085b4c81e05.jpeg', 1, '2017-01-18 00:52:28', '2017-01-18 00:52:28'),
(12, 'f9a15a1f222e91d1d85888d15714c00c.jpeg', 1, '2017-01-18 00:52:28', '2017-01-18 00:52:28'),
(13, 'ecbfe5dd9900d7203be31b36a5ab88cb.png', 2, '2017-01-24 03:34:13', '2017-01-24 03:34:13'),
(14, 'b700cd172ee402743bf842144db11ed7.png', 2, '2017-01-24 03:34:13', '2017-01-24 03:34:13'),
(15, 'af3971b07a471ccc32f4d81c06571b75.png', 2, '2017-01-24 03:34:13', '2017-01-24 03:34:13'),
(16, 'c331b846cc19e0ad3f6d355051d63185.png', 2, '2017-01-24 03:34:13', '2017-01-24 03:34:13'),
(17, 'dc55a16630912eb9e937eb389c7e11ad.png', 2, '2017-01-24 03:34:13', '2017-01-24 03:34:13'),
(18, '43ce48ff3733d70c2d6e3469be9b605e.png', 2, '2017-01-24 03:34:13', '2017-01-24 03:34:13');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `cate_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `price`, `intro`, `content`, `image`, `keyword`, `description`, `user_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(1, 'Quần thun abc', 'Quan-Thun-Abc', 1500000, '<p>Quần thun abc</p>\r\n', '<p>Quần thun abc</p>\r\n', '449870df4942fc5f72e7caf63c7916f6.jpeg', 'Quần thun abc', '<p>Quần thun abc</p>\r\n', 1, 2, '2017-01-17 07:32:32', '2017-01-24 03:16:54'),
(2, 'Quần thun có cánh 13', 'Quan-Thun-Co-Canh-13', 2000000, '', '<p>Quần thun c&oacute; c&aacute;nh 13</p>\r\n', '711a9d5a34a2a4ffb1141085b4c81e05.jpeg', 'Quần thun có cánh 13', '<p>Quần thun c&oacute; c&aacute;nh 13</p>\r\n', 1, 1, '2017-01-24 03:34:13', '2017-01-24 03:34:13');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$nkMfAEKkvEDg0zVqnTCFKOgoqUzv02UWs2AYsVGfYygMME0chdvki', 'abce@gmail.com', 1, 'SF485RCLZbtDtEp3qauOejgdkB317AWLicRExMdQxIqwT5CVOJSzKCnKKV3n', '2017-01-16 04:01:51', '2017-01-17 09:31:03'),
(2, 'vanquyen', '$2y$10$sdWzXjgQdzNGTuzusQy4WuybkWr7Dblz0PIaIRzp4uZjZNPGcEXIa', 'vanquyen.dt13ctt02@gmail.com', 1, 'MQpGuzvDgxnbzCEYqMAkbpAZwtxfc7q8twtpemjeE2sIQIsP0SrMdKGW6i2R', '2017-01-17 09:29:14', '2017-01-17 09:36:46');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `cates_name_unique` (`name`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Index pour la table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`), ADD KEY `productimages_product_id_foreign` (`product_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `products_name_unique` (`name`), ADD KEY `products_user_id_foreign` (`user_id`), ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cates`
--
ALTER TABLE `cates`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `productimages`
--
ALTER TABLE `productimages`
ADD CONSTRAINT `productimages_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `cates` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
