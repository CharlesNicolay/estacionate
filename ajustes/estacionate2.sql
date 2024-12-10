-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2024 a las 15:24:56
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
-- Base de datos: `estacionate2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicas`
--

CREATE TABLE `caracteristicas` (
  `id_caracteristica` int(11) NOT NULL,
  `nombre_caracteristica` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `caracteristicas`
--

INSERT INTO `caracteristicas` (`id_caracteristica`, `nombre_caracteristica`) VALUES
(1, 'entrada ancha'),
(2, 'sombra'),
(3, 'abierto las 24 horas'),
(4, 'autolavado'),
(5, 'venta de bateria'),
(6, 'campo abierto'),
(7, 'con cuidante'),
(8, 'doble entrada'),
(9, 'autos'),
(10, 'motos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caract_estacionamiento`
--

CREATE TABLE `caract_estacionamiento` (
  `id_estacionamiento` int(11) NOT NULL,
  `id_caracteristica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `caract_estacionamiento`
--

INSERT INTO `caract_estacionamiento` (`id_estacionamiento`, `id_caracteristica`) VALUES
(5, 1),
(5, 2),
(5, 4),
(5, 5),
(5, 6),
(6, 1),
(6, 3),
(6, 6),
(7, 1),
(7, 2),
(7, 4),
(7, 6),
(8, 3),
(8, 6),
(9, 1),
(9, 2),
(9, 7),
(9, 8),
(10, 4),
(10, 7),
(12, 1),
(12, 4),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(14, 7),
(15, 1),
(15, 2),
(15, 3),
(15, 5),
(15, 7),
(15, 9),
(16, 1),
(16, 3),
(16, 9),
(17, 1),
(17, 2),
(17, 7),
(18, 2),
(18, 6),
(19, 3),
(19, 6),
(19, 7),
(20, 2),
(20, 3),
(21, 1),
(21, 4),
(21, 7),
(21, 8),
(22, 7),
(22, 8),
(22, 9),
(22, 10),
(23, 1),
(23, 4),
(23, 7),
(23, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `id_conductor` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `dni` int(20) NOT NULL,
  `placa` varchar(12) NOT NULL,
  `celular` int(12) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`id_conductor`, `nombre`, `apellidos`, `dni`, `placa`, `celular`, `id_user`) VALUES
(1, 'Aimar', 'Prieto', 0, 'x2p-543', 983011758, 1),
(2, 'Charles', 'Mendoza López', 0, 'v2m-341', 987654321, 2),
(3, 'Javier', 'Díaz Morales', 0, 'a32-541', 987654322, 3),
(4, 'juan', 'perez', 0, 'b42-123', 123456123, 24),
(5, 'Carlos', 'apellido', 0, 'b3b-300', 900000000, 25),
(6, 'julio', 'casa', 0, '0', 23423423, 26),
(7, 'jeje', 'demo', 0, 'asd-1232', 2147483647, 27),
(8, 'admin', 'asdas', 0, 'X2P-452', 999999999, 28),
(9, 'nicolay', 'dkred', 0, 'V2M-452', 987654315, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores_recorrido`
--

CREATE TABLE `conductores_recorrido` (
  `Conductores_idConductores` int(15) NOT NULL,
  `Recorrido_idRecorrido` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estacionamientos`
--

CREATE TABLE `estacionamientos` (
  `id_estacionamiento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `latitud` float NOT NULL,
  `longitud` float NOT NULL,
  `capacidad` int(3) NOT NULL,
  `palabras_clave` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estacionamientos`
--

INSERT INTO `estacionamientos` (`id_estacionamiento`, `nombre`, `latitud`, `longitud`, `capacidad`, `palabras_clave`) VALUES
(5, 'vallecito', -16.325, -71.5358, 3, 'vallecito,ovalo'),
(6, 'enace', -16.325, -71.5358, 30, 'enace'),
(7, 'utp', -16.4088, -71.5405, 50, 'utp,parra'),
(9, 'utp2', -16.4143, -71.5375, 10, 'parra'),
(10, 'Car Styler', -16.4047, -71.5396, 20, 'cercado,vallecito,isur,utp,salaverry'),
(13, 'Utppp', -16.4082, -71.5422, 50, 'utp'),
(14, 'Merced', -16.4089, -71.5403, 10, 'merced, ormeño'),
(15, 'salaverry', -16.4089, -71.5404, 20, 'salaverry, ormeño'),
(16, 'Cruz verde', -16.3986, -71.5414, 10, 'cru verde'),
(17, 'Interacción cruz verde ', -16.4029, -71.5385, 20, 'interaccion, la marina'),
(18, 'Consuelo', -16.4009, -71.5396, 28, 'consuelo, centro'),
(19, 'Sucre', -16.4009, -71.5399, 30, 'sucre, ormeño, centro'),
(20, 'Salaverry ', -16.4056, -71.5407, 20, 'salaverry'),
(21, 'Salaverry 2', -16.4056, -71.5407, 20, 'salaverry'),
(22, 'estacionamiento utp', -16.4157, -71.5368, 50, ''),
(23, 'ggggg', -16.325, -71.5358, 34, 'cercado,vallecito,isur,utp,salaverry');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recorridos`
--

CREATE TABLE `recorridos` (
  `id_recorrido` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` datetime NOT NULL,
  `origen` varchar(30) NOT NULL,
  `destino` varchar(30) NOT NULL,
  `id_estacionamiento` int(11) NOT NULL,
  `id_conductor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `username`, `password`, `rol`) VALUES
(1, 'aimar2', '12345aimar', 0),
(2, 'charles1', 'abcde', 0),
(3, 'javie3', 'passw0rd', 0),
(14, '987654321', '$2y$10$mX3VIsIKQDrcqnIIRpdED.64gxWUoJfOTg9aqyzeniIB.F8DMfhqe', 99),
(24, '123456123', '$2y$10$GA/y4S9Ja8Dt4CnjZFv6tOvLgXjeilX.Js3Lb4bZyP8wUuvejkuU6', 1),
(25, '900000000', '$2y$10$eAx.CX4cIG.sfvKEFgm4B.c3kVsrgSdBm0roEBolJ7NVjC3M5TYvK', 1),
(26, '23423423', '$2y$10$LmSDvwybqoyl1QbkLpaHeuMrxBQ2eQaLft3PCDHfijhkXW/0TIMoe', 1),
(27, '13123213123213', '$2y$10$w/G.dnQ35m1PwTtUwPQFUOtUof6O0JJn4WDwROkbHY1QROVbRXqgC', 1),
(28, '999999999', '$2y$10$J4mXP8jVvuXQduCf7HDLze6ffa3YReOixsBlTYtjwhU0rxT9CNKyu', 1),
(29, '987654315', '$2y$10$XH/4NfyGd6zhuvWApT3qo.91Ra/Mc/ZEDavpojA/Lrmej5N290Wum', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD PRIMARY KEY (`id_caracteristica`);

--
-- Indices de la tabla `caract_estacionamiento`
--
ALTER TABLE `caract_estacionamiento`
  ADD KEY `id_estacionamiento` (`id_estacionamiento`) USING BTREE,
  ADD KEY `id_caracteristica` (`id_caracteristica`);

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`id_conductor`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `conductores_recorrido`
--
ALTER TABLE `conductores_recorrido`
  ADD KEY `Conductores_idConductores` (`Conductores_idConductores`,`Recorrido_idRecorrido`);

--
-- Indices de la tabla `estacionamientos`
--
ALTER TABLE `estacionamientos`
  ADD PRIMARY KEY (`id_estacionamiento`);

--
-- Indices de la tabla `recorridos`
--
ALTER TABLE `recorridos`
  ADD PRIMARY KEY (`id_recorrido`),
  ADD UNIQUE KEY `id_estacionamiento` (`id_estacionamiento`),
  ADD UNIQUE KEY `id_conductor` (`id_conductor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  MODIFY `id_caracteristica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `conductores`
--
ALTER TABLE `conductores`
  MODIFY `id_conductor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `estacionamientos`
--
ALTER TABLE `estacionamientos`
  MODIFY `id_estacionamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `recorridos`
--
ALTER TABLE `recorridos`
  MODIFY `id_recorrido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caract_estacionamiento`
--
ALTER TABLE `caract_estacionamiento`
  ADD CONSTRAINT `caract_estacionamiento_ibfk_1` FOREIGN KEY (`id_caracteristica`) REFERENCES `caracteristicas` (`id_caracteristica`);

--
-- Filtros para la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD CONSTRAINT `conductores_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuarios` (`id_user`);

--
-- Filtros para la tabla `recorridos`
--
ALTER TABLE `recorridos`
  ADD CONSTRAINT `recorridos_ibfk_1` FOREIGN KEY (`id_estacionamiento`) REFERENCES `estacionamientos` (`id_estacionamiento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
