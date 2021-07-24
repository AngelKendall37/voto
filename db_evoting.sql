-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2021 a las 03:56:37
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_evoting`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `aid` int(11) NOT NULL,
  `admin_username` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_admin`
--

INSERT INTO `tbl_admin` (`aid`, `admin_username`, `admin_password`, `time_stamp`) VALUES
(1, 'josehernandez', '234567891', '2021-07-23 02:37:16'),
(2, 'mariaalvarez', '10547808', '2021-07-23 02:37:16'),
(3, 'maryalzate', '10516932', '2021-07-23 02:37:16'),
(4, 'luzandrade', '34531725', '2021-07-23 02:37:16'),
(5, 'jorgebarragan', ' 10537683', '2021-07-23 02:37:16'),
(6, 'gloriabelalcazar', '10536636', '2021-07-23 02:37:16'),
(7, 'gerardobravo', '10545657', '2021-07-23 02:37:16'),
(8, 'diegocaceres', ' 10539634', '2021-07-23 02:37:16'),
(9, 'josecampo', ' 34528262', '2021-07-23 02:37:16'),
(10, 'haroldcampo', '79459964', '2021-07-23 02:37:16'),
(11, 'heldercalvache', '43040911', '2021-07-23 02:37:16'),
(12, 'elkincardenas', '10529900', '2021-07-23 02:37:16'),
(13, 'soniacasanova', '10527966', '2021-07-23 02:37:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(5) NOT NULL,
  `nombre` varchar(32) CHARACTER SET latin1 NOT NULL,
  `apellido` varchar(32) CHARACTER SET latin1 NOT NULL,
  `voter_id` int(10) NOT NULL,
  `voted_for` varchar(32) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `nombre`, `apellido`, `voter_id`, `voted_for`) VALUES
(1, 'Jose Antonio', 'Hernandez Perez', 234567891, 'JMS'),
(2, 'Maria Cecilia', 'Alvarez Jaramillo', 10547808, 'IDM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_visita`
--

CREATE TABLE `tbl_visita` (
  `id_users` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_visita`
--

INSERT INTO `tbl_visita` (`id_users`, `ip`, `fecha`) VALUES
(1, '::1', '2021-07-21 18:00:37'),
(2, '::1', '2021-07-22 21:47:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indices de la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_visita`
--
ALTER TABLE `tbl_visita`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_visita`
--
ALTER TABLE `tbl_visita`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
