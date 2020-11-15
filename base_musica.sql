-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2020 a las 03:53:19
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_musica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banda`
--

CREATE TABLE `banda` (
  `Id_banda` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Genero` varchar(50) DEFAULT NULL,
  `Integrantes` int(11) DEFAULT NULL,
  `Id_factura` int(11) DEFAULT NULL,
  `Correo` varchar(70) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banda`
--

INSERT INTO `banda` (`Id_banda`, `Nombre`, `Genero`, `Integrantes`, `Id_factura`, `Correo`, `Telefono`) VALUES
(1, 'AC/DC ', 'rock', 5, 623, 'ac-dcoficial@music.com', '5862475778'),
(2, 'sin bandera', 'pop', 2, 618, 'sinb@gmail.com', '5698315497'),
(3, 'Askis', 'prehispanico', 5, 618, 'aski@gmail.com', '2225896468'),
(4, 'askis', 'Prehispanico', 4, 620, 'aski.oficial@misic.com', '2562145873'),
(5, 'matisse', 'pop', 3, 4, 'matisseoficial@gmail.com', '1359876332'),
(6, 'generica', 'rock', 2, 5, 'ban@gmail.com', '5698731548'),
(7, 'Los compas', 'pop', 5, 5, 'loscompas@gmail.com', '1547168488');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Id_cliente` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Correo` varchar(70) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `No_factura` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id_cliente`, `Nombre`, `Apellido`, `Correo`, `Telefono`, `Edad`, `No_factura`) VALUES
(1, 'Conie', 'Flores', 'conie123@gmail.com', '2229000693', 19, 1),
(2, 'Concepcion', 'Flores', 'conie123@gmail.com', '2229000693', 20, 59),
(3, 'Susana', 'Flores', 'susy@gmail.com', '8956473156', 20, 5),
(7, 'Pedro', 'Lopez', 'usuariobonito@gmail.com', '5553698652', 56, 63),
(8, 'Gabriela', 'Pineda', 'algo@gmail.com', '2228687483', 20, 1),
(9, 'Lucas', 'Hernandez', 'yo@gmail.com', '2229000693', 56, 55),
(10, 'Victor', 'Roque', 'vicman@ggmail.com', '114626598', 21, 54),
(11, 'Susana', 'Flores', 'susy@gmail.com', '8956473156', 20, 5),
(12, 'Pedro', 'Lopez', 'usuariobonito@gmail.com', '5553698652', 56, 63);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Id_factura` int(11) NOT NULL,
  `No_contrato` int(11) DEFAULT NULL,
  `Id_cliente` int(11) DEFAULT NULL,
  `Id_banda` int(11) DEFAULT NULL,
  `Importe` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Horas` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`Id_factura`, `No_contrato`, `Id_cliente`, `Id_banda`, `Importe`, `Fecha`, `Horas`) VALUES
(1, 33, 1, 1, 3500, '2020-03-09', '08:30:00'),
(2, 64, 2, NULL, 568, '2020-10-12', '10:30:00'),
(3, 15, 8, 6, 5685, '2020-05-11', '24:00:00'),
(4, 12, 1, 4, 48656, '2021-04-14', '12:16:00'),
(5, 200, 1, 1, 5682, '2020-04-17', '04:00:00'),
(22, 34, 12, 6, 568, '2020-04-14', '18:00:00'),
(32, 34, 12, 6, 568, '2020-04-14', '18:00:00'),
(618, 5859, 2, 4, 486, '2020-03-17', '04:15:00'),
(619, 798, 1, 5, 48495, '2020-10-08', '03:51:00'),
(620, 56, 1, 1, 6569, '2020-06-18', '02:26:00'),
(621, 55, 2, 4, 454, '2020-10-02', '04:30:00'),
(622, 45, 10, 4, 561, '2020-10-31', '05:59:00'),
(623, 501, 10, 5, 5618, '2020-09-29', '01:33:00'),
(624, 42, 10, 5, 5968956, '2020-10-17', '02:19:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `Id_evento` int(11) NOT NULL,
  `Pais` varchar(50) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Codigo_postal` int(11) DEFAULT NULL,
  `Calle` varchar(50) DEFAULT NULL,
  `Colonia` varchar(70) DEFAULT NULL,
  `Id_banda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`Id_evento`, `Pais`, `Estado`, `Codigo_postal`, `Calle`, `Colonia`, `Id_banda`) VALUES
(1, 'Mexico', 'DF', 5581, 'Los Pinos', 'Anzures', 1),
(2, 'Mexico', 'DF', 5581, 'Los Pinos', 'Anzures', 1),
(3, 'Mexico', 'Monterrey', 5684, 'Industrial', 'Lomas ', 7),
(5, 'Mexico', 'Chihuahua', 4484, '3 norte', 'centro', 7),
(9, 'Mexico', 'Chihuahua', 4484, '3 norte', 'centro', 7),
(10, 'México', 'Puebla', 72470, 'tgbj', 'ccbhjh', 5),
(11, 'México', 'Puebla.pue', 72470, 'qqqq', 'aaaaa', 4),
(12, 'México', 'Pueblas', 72470, 'tecali', 'Puebla textil', 5),
(13, 'México', 'Puebla', 72000, 'tepeaca', 'las lomas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banda`
--
ALTER TABLE `banda`
  ADD PRIMARY KEY (`Id_banda`),
  ADD KEY `Id_factura` (`Id_factura`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Id_factura`),
  ADD KEY `Id_cliente` (`Id_cliente`,`Id_banda`),
  ADD KEY `id_banda` (`Id_banda`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`Id_evento`),
  ADD KEY `Id_banda` (`Id_banda`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `banda`
--
ALTER TABLE `banda`
  MODIFY `Id_banda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `Id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `Id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `banda`
--
ALTER TABLE `banda`
  ADD CONSTRAINT `banda_ibfk_1` FOREIGN KEY (`Id_factura`) REFERENCES `factura` (`Id_factura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`Id_cliente`) REFERENCES `cliente` (`Id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_banda`) REFERENCES `banda` (`Id_banda`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD CONSTRAINT `lugar_ibfk_1` FOREIGN KEY (`Id_banda`) REFERENCES `banda` (`Id_banda`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
