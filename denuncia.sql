-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2018 a las 07:13:45
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `denuncia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback`
--

CREATE TABLE `feedback` (
  `correlativo` int(50) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `departamento` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `municipio` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comentario` varchar(600) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_coment` date DEFAULT NULL,
  `hora_coment` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `feedback`
--

INSERT INTO `feedback` (`correlativo`, `nombre`, `email`, `departamento`, `municipio`, `ciudad`, `comentario`, `fecha_coment`, `hora_coment`) VALUES
(1, 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba, prueba, prueba.', '2018-11-16', '16:34:00'),
(2, 'PRUEBA', 'pruebas', 'prueba', 'prueba', 'prueba', 'prueba', '2018-11-16', '16:47:00'),
(3, 'Otto Temaj', 'otto@email.com', 'Guatemala', 'Guatemala', 'Guatemala', 'Este es un comentario de prueba', NULL, NULL),
(4, '', 'hola@hola.org', '', '', '', 'hola', NULL, NULL),
(5, '', 'ea@ea.com', '', '', '', 'asdfasfasdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `pri_nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `seg_nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `pri_apellido` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `seg_apellido` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cui` bigint(20) NOT NULL,
  `telefono` int(11) NOT NULL,
  `estado_civil` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tel_robado`
--

CREATE TABLE `tel_robado` (
  `marca` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `imei` bigint(20) NOT NULL,
  `operador` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pin` int(11) NOT NULL,
  `puk` int(11) NOT NULL,
  `caracteristicas` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_robo` date NOT NULL,
  `hora_robo` time NOT NULL,
  `depto_robo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `muni_robo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad_robo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `datos_lugar` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_reportado` datetime DEFAULT NULL,
  `correl_denuncia` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tel_robado`
--

INSERT INTO `tel_robado` (`marca`, `modelo`, `color`, `imei`, `operador`, `pin`, `puk`, `caracteristicas`, `fecha_robo`, `hora_robo`, `depto_robo`, `muni_robo`, `ciudad_robo`, `datos_lugar`, `fecha_reportado`, `correl_denuncia`, `user_id`) VALUES
('Motorola', 'e8', 'Blanco', 87987987, 'Tigo', 8798, 8888, 'Poco uso', '2018-08-25', '17:00:00', '20', 'Mazatenango', 'no se', ' las afueras del hospital', NULL, 'no', NULL),
('prueba', 'prueba', 'prueba', 335762803, 'Movistar', 0, 0, 'prueba', '2018-05-05', '17:00:00', '17', 'prueba', 'prueba', 'prueba', NULL, 'no', NULL),
('Huawei', '1154a', 'Negro', 1234567890, 'Claro', 5468, 1122, 'Tiene la pantalla rota', '2018-11-05', '16:30:00', '6', 'Guatemala', 'Guatemala', 'zona 1, en la sexta avenida', NULL, '0', NULL),
('Apple', 'XS', 'Space gray', 1234567890123, 'Claro', 5468, 1122, 'Tiene un rayón en la parte trasera', '2018-11-01', '14:28:00', 'Guatemala', 'Guatemala', 'Guatemala', 'a una cuadra de la sexta, sobre la 7ma y 9 calle', '2018-11-13 00:00:00', '1', 5454),
('Google', 'Pixel 4', 'Negro', 5465465465465, 'Tuenti', 5454, 8080, 'Nada en especial, bien cuidado', '2018-11-08', '14:30:00', '3', 'no se', 'no se', 'en frente de una tienda', NULL, '', NULL),
('asdf', 'asf', 'asf', 12345678901234, 'asdf', 0, 0, 'asdf', '2018-11-05', '16:30:00', '19', 'asdf', 'asdf', 'afs', NULL, 'asdf', NULL),
('prueba', 'prueba', 'prueba', 3357628038990327, 'Movistar', 0, 0, 'prueba', '2018-05-05', '17:00:00', 'Alta VerapÃ¡z', 'prueba', 'prueba', 'prueba', NULL, 'no', NULL),
('prueba', 'prueba', 'prueba', 3357628038990328, 'Movistar', 0, 0, 'prueba', '2018-05-05', '17:00:00', '15', 'prueba', 'prueba', 'prueba', NULL, 'no', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `id` int(11) NOT NULL,
  `tipo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`correlativo`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `tel_robado`
--
ALTER TABLE `tel_robado`
  ADD PRIMARY KEY (`imei`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `feedback`
--
ALTER TABLE `feedback`
  MODIFY `correlativo` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
