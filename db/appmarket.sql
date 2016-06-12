-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2016 a las 00:02:01
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appmarket`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marks`
--

CREATE TABLE `marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marks`
--

INSERT INTO `marks` (`id`, `name`) VALUES
(1, 'Estrella '),
(2, 'La Dulce'),
(3, 'Limpia todo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_04_07_164029_create_mark_table', 1),
('2016_04_07_164043_create_product_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `marks_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `marks_id`) VALUES
(2, 'La Limpiador Todo', '36.50', 2),
(7, 'Leche1', '2.30', 2),
(14, 'Arroz Bella', '10.50', 1),
(15, 'Arroz Dulc', '9.80', 1),
(16, 'Leche Azul', '5.60', 2),
(17, 'Leche Roja', '6.50', 2),
(23, 'Harina 53x1', '2.50', 2),
(24, 'Harina 40x1', '3.50', 2),
(25, 'Leche Migor', '6.40', 3),
(26, 'Aceite Primor', '2.50', 1),
(27, 'Margarina', '3.60', 1),
(28, 'Chocolates Azules', '2.60', 2),
(29, 'Leche verdde', '5.60', 1),
(33, 'Azucar Juli', '5.30', 1),
(34, 'Azucar', '2.00', 1),
(54, '222a', '3.00', 1),
(55, '55aaa', '2.00', 1),
(57, '67', '21.00', 2),
(58, '67', '21.00', 2),
(59, '67', '21.00', 2),
(60, '765', '2.00', 1),
(61, '765', '2.00', 1),
(62, '765', '2.00', 1),
(63, '765', '2.00', 1),
(65, 'trtr', '4.00', 1),
(66, 'trtr', '4.00', 1),
(67, '5', '22.00', 2),
(68, '5dd', '22.00', 2),
(69, '656', '21.00', 2),
(70, '4343', '34.00', 1),
(71, '23jj', '23.00', 2),
(72, '23jj66', '23.00', 2),
(73, '698', '23.00', 2),
(74, 'sdsdf', '22.00', 3),
(75, 'kll', '2.00', 1),
(76, 'eee', '2.00', 2),
(77, 'eee55', '2.00', 2),
(78, '6666', '12.00', 3),
(79, 'fssfdfsf', '2.00', 2),
(80, 'fssfdfsfwww', '2.00', 2),
(81, '656656', '666.00', 1),
(82, 'dsdsdsdsdsds ', '21.00', 1),
(83, 'ghffhf', '22.00', 2),
(84, 'iyt', '0.00', 3),
(85, '656565', '22.00', 2),
(86, '656565', '22.00', 2),
(87, '656565', '22.00', 2),
(88, 'tyy', '3.00', 1),
(89, 'tyy', '3.00', 1),
(90, 'dsdsds', '43.00', 3),
(91, '6766', '45.00', 2),
(92, 'gfgfgf', '3.00', 2),
(93, 'ewe', '333.00', 1),
(94, 'werwwr', '23.00', 2),
(95, 'eee', '44.00', 1),
(96, 'dsdsds', '33.00', 2),
(97, 'dsdsds4', '33.00', 2),
(98, '333', '3.00', 2),
(99, 'dddddd', '23.00', 1),
(100, 'uuu', '0.00', 2),
(101, 'dweeee', '21.00', 2),
(102, 'eeewee', '333.00', 1),
(103, 'gtrtrt', '22.00', 2),
(104, 'trtrtrt', '34.00', 2),
(105, '43434', '4.00', 1),
(106, 'loggad', '23.00', 1),
(107, 'dsdd', '323.00', 1),
(108, 'losss', '33.00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Omar Sharif', 'developers@elcades.com', '$2y$10$PusC8XunUVFDSXh7rNm7.u3yO.cIC0lwfTAJOi96IXLMpxoxVc/Ti', '1w70HKW9IiHZQX9NIWagRyzJ6jltsJ2ElMZ17xkxPlzW75saqgdZ2dt09P1B', '2016-05-16 16:48:59', '2016-06-07 20:30:49'),
(2, 'operador', 'operador@elcades.com', '$2y$10$MnCQHObiPDu3XEt.KUli2OgaJsT.3T2NZGareybU7RxIJqi15uLA.', NULL, '2016-05-20 21:42:54', '2016-05-20 21:42:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_marks_id_foreign` (`marks_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_marks_id_foreign` FOREIGN KEY (`marks_id`) REFERENCES `marks` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
