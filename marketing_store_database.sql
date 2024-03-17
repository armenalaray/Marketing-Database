-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-03-2024 a las 20:41:23
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `marketing_store_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `street` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intNumber` int(11) DEFAULT NULL,
  `extNumber` int(11) DEFAULT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `address`
--

INSERT INTO `address` (`id`, `street`, `intNumber`, `extNumber`, `city`, `region`) VALUES
(1, '8449 Dolor Rd.', 160, 676, 'Telde', 'CN'),
(2, '5791 Natoque St.', 303, 606, 'Bremen', 'HB'),
(3, 'Ap #379-1600 Non Avenue', 540, 961, 'Tavigny', 'Luxemburg'),
(4, '1565 Ipsum Rd.', 763, 702, 'Aberdeen', 'Aberdeenshire'),
(5, '152-2313 Sodales. St.', 650, 797, 'Alacant', 'Comunitat Valenciana'),
(6, '4812 Pede, Rd.', 984, 24, 'Zwolle', 'Overijssel'),
(7, 'Ap #184-9204 Donec Av.', 665, 323, 'Istanbul', 'Istanbul'),
(8, '2649 Tempus Rd.', 131, 963, 'Vigo', 'Galicia'),
(9, '6847 Vulputate Rd.', 429, 3, 'Dublin', 'L'),
(10, '821-5427 Gravida Street', 8, 900, 'Ibadan', 'OY'),
(11, 'Ap #800-5316 Condimentum. Road', 702, 807, 'Greenwich', 'Kent'),
(12, '184-6026 In St.', 980, 438, 'Belfast', 'Ulster'),
(13, 'P.O. Box 363, 2706 Rutrum Ave', 230, 739, 'Sulzbach', 'SL'),
(14, '135-3088 Praesent Road', 301, 82, 'Cheyenne', 'WY'),
(15, '3664 Sem Ave', 982, 305, 'Colico', 'LOM'),
(16, '656-1776 At Rd.', 241, 992, 'Newcastle', 'NSW'),
(17, 'Ap #491-6336 Metus Ave', 143, 193, 'Cork', 'M'),
(18, 'P.O. Box 585, 3521 Montes, St.', 793, 800, 'Quesada', 'A'),
(19, 'P.O. Box 146, 2287 Quis St.', 789, 488, 'Wellington', 'North Island'),
(20, 'Ap #350-1463 Blandit St.', 905, 156, 'Daly', 'Manitoba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `idSeller` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `idService` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sale`
--

INSERT INTO `sale` (`id`, `idSeller`, `idClient`, `idService`) VALUES
(1, 1, 2, 1),
(2, 3, 5, 2),
(3, 7, 10, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `service`
--

INSERT INTO `service` (`id`, `name`, `cost`) VALUES
(1, 'increase traffic', 200),
(2, 'connect with leads', 300),
(3, 'content strategies', 340),
(4, 'market support tools', 150),
(5, 'content creation', 400),
(6, 'close and manage leads', 250),
(7, 'content optimization', 200),
(8, 'promotion', 350),
(9, 'maintenance of leads', 400),
(10, 'inform and analysis', 150),
(11, ' find new prospects', 250),
(12, 'email tracking', 120),
(13, 'seo software', 450),
(14, 'content optimization system', 500),
(15, 'blog software', 320),
(16, 'social media software', 550),
(17, 'pipeline management tool', 550),
(18, 'infographic templates', 250),
(19, 'ad software', 450),
(20, 'lead management', 450);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicetype`
--

CREATE TABLE `servicetype` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicetype`
--

INSERT INTO `servicetype` (`id`, `name`, `description`) VALUES
(1, 'ads ', 'The classic advertisement displayed as images within web pages.'),
(2, 'blog', 'Advertising content shown within blogs, being images and/or explanatory content.'),
(3, 'flyers', 'Advertisements delivered from hand to hand as flyers.'),
(4, 'banners', 'This form of internet advertising consists of including an advertising piece within a web page.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicetype_service`
--

CREATE TABLE `servicetype_service` (
  `id` int(11) NOT NULL,
  `idServiceType` int(11) NOT NULL,
  `idService` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicetype_service`
--

INSERT INTO `servicetype_service` (`id`, `idServiceType`, `idService`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `companyName` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstName` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssn` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `companyName`, `firstName`, `lastName`, `ssn`, `userType`) VALUES
(1, 'Est Ac Facilisis Incorporated', 'Idola', 'Leach', 'BNZ88IOP5HFEN', 0),
(2, 'Est Nunc Laoreet Limited', 'Stone', 'Garcia', 'FCL56TFY7FENR', 1),
(3, 'Netus Et Associates', 'Yuli', 'Roberson', 'UZT43FGT9MUQU', 0),
(4, 'Suspendisse Non Leo Foundation', 'Basia', 'Torres', 'FSW18FFL0HXTS', 0),
(5, 'Sodales At Velit Industries', 'Zachery', 'Stuart', 'DZH66SBG7AYYP', 1),
(6, 'Cras Vulputate Ltd', 'Imani', 'Noble', 'ULC08EAJ6RXTR', 1),
(7, 'Eget LLP', 'Damon', 'Knowles', 'PYX50JJJ0YJSM', 0),
(8, 'Enim Sit Consulting', 'Jessamine', 'Valentine', 'GPL51SPE0XGDY', 1),
(9, 'Ac Turpis PC', 'Jennifer', 'Keller', 'CGD97TFF4FTZX', 0),
(10, 'Cursus Incorporated', 'Cassidy', 'Britt', 'CWF02HLG4LKSJ', 1),
(11, 'Imperdiet Institute', 'Mercedes', 'Sellers', 'BHS86LSI0MUDB', 0),
(12, 'Dui Suspendisse Inc.', 'Victor', 'Perez', 'AVZ87QUL6PAFE', 1),
(13, 'Nunc Inc.', 'Olga', 'Lang', 'PHA91ZLL7FUCV', 0),
(14, 'Ac Libero Foundation', 'Moana', 'Norris', 'BAW16CPA6APHK', 1),
(15, 'Mauris Ut Industries', 'Upton', 'Mcmillan', 'LKJ95MUZ5ZVYK', 0),
(16, 'Nisl Arcu Iaculis Industries', 'Cassidy', 'Simon', 'CVV23CUX7WPEZ', 1),
(17, 'Est Corporation', 'Chelsea', 'Watts', 'LJP32TRD3VYEK', 1),
(18, 'Rhoncus Donec Est Ltd', 'George', 'Foley', 'CWB05SET0BGYP', 1),
(19, 'Velit Eu Corporation', 'Kyla', 'Gutierrez', 'KFT40KVI8YSQS', 0),
(20, 'Magna Et Company', 'Colton', 'Anderson', 'AVF47ACU6QCWG', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idAddress` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_address`
--

INSERT INTO `user_address` (`id`, `idUser`, `idAddress`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicetype`
--
ALTER TABLE `servicetype`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicetype_service`
--
ALTER TABLE `servicetype_service`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `servicetype`
--
ALTER TABLE `servicetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `servicetype_service`
--
ALTER TABLE `servicetype_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
