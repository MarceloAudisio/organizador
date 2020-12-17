-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2020 a las 02:18:22
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `organizador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('bmk78p8mi0o1shmn67rqj7ms8n8u5e3o', '::1', 1607041246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373034313234363b),
('vd5a7ef6hi170mu9s49h4b2m3fh3le15', '::1', 1607041730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373034313733303b),
('oel41tjc7vagaafq7qdd2uf0ioum4v6r', '::1', 1607042394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373034323339343b),
('44hrcda4rc8tumdjjgiteelr9ke26mpj', '::1', 1607042824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373034323832343b),
('np24q9m95avq6n4nb1v3cnvqcjavk05b', '::1', 1607043201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373034333230313b),
('u5o6fgjs89qrkdr9m8u5od6eihviii6h', '::1', 1607043658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373034333635343b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('0pqns1au4h5uv17386iapa2il7v8thjs', '::1', 1607645367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373634353336373b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('1ugrm539nf2htbs1ab8lju1st2p65hj2', '::1', 1607646435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373634363433353b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('afvp7j3uvco0fg03t2al93sikevbj5si', '::1', 1607646995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373634363939353b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b6d736a7c733a343a22414c5441223b5f5f63695f766172737c613a313a7b733a333a226d736a223b733a333a226f6c64223b7d),
('abqgqm9doo03nme6q93obmkiprk2u2nb', '::1', 1607647460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373634373436303b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b6d736a7c733a343a22414c5441223b5f5f63695f766172737c613a313a7b733a333a226d736a223b733a333a226f6c64223b7d),
('8sgtg9hme97db4cr8uhep0h4modkcnc6', '::1', 1607648310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373634383331303b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('hlcsd48kp58rkil1jgs4l4hfa6h2f57t', '::1', 1607648707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373634383730373b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('ne8bjvdmope0lajs3bae3cq7e4sntddh', '::1', 1607649083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373634393038333b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('33ikd2b3nrblsq44fh1vasd0me7rm2h3', '::1', 1607649385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373634393338353b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('bh1icn56andn5n6ujtsnh2041jg8ekct', '::1', 1607649454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373634393338353b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `permiso_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `defecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`permiso_id`, `nombre`, `defecto`) VALUES
(1, 'Ingreso al sistema', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos_x_rol`
--

CREATE TABLE `permisos_x_rol` (
  `permisos_x_rol_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `permiso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permisos_x_rol`
--

INSERT INTO `permisos_x_rol` (`permisos_x_rol_id`, `rol_id`, `permiso_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prioridades`
--

CREATE TABLE `prioridades` (
  `prioridad_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prioridades`
--

INSERT INTO `prioridades` (`prioridad_id`, `nombre`) VALUES
(1, 'Alta'),
(10, 'Normal'),
(20, 'Baja'),
(90, 'Tentativa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rol_id`, `nombre`, `estado`) VALUES
(1, 'Administradores', 1),
(2, 'Usuarios', 1),
(3, 'Invitados', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `tarea_id` bigint(20) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `prioridad_id` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` int(11) NOT NULL DEFAULT '0',
  `usuario_id` int(11) NOT NULL,
  `vence` datetime DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`tarea_id`, `titulo`, `descripcion`, `prioridad_id`, `fecha`, `estado`, `usuario_id`, `vence`, `orden`) VALUES
(1, 'Primera', 'gdfgfgfgd', 10, '2020-12-10 21:27:23', 0, 1, NULL, NULL),
(2, 'Tercera', 'fdhfghhgf', 90, '2020-12-10 21:41:24', 0, 1, NULL, NULL),
(3, 'Tercera', 'dfgdfgdfg', 1, '2020-12-10 22:14:22', 0, 1, NULL, NULL),
(4, 'Cuarta', 'dfgdfgdfg', 20, '2020-12-10 22:14:34', 0, 1, NULL, NULL),
(5, 'OTRA', 'dfdfgdfgfd', 10, '2020-12-10 22:16:50', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `usuario` char(30) NOT NULL,
  `password` char(32) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `rol_id` int(11) NOT NULL DEFAULT '0',
  `ult_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `usuario`, `password`, `estado`, `rol_id`, `ult_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1, '2020-12-10 22:05:45'),
(2, 'usuario', 'f8032d5cae3de20fcec887f395ec9a6a', 1, 2, '2020-12-10 22:05:18'),
(3, 'invitado', 'a6ae8a143d440ab8c006d799f682d48d', 1, 3, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`permiso_id`);

--
-- Indices de la tabla `permisos_x_rol`
--
ALTER TABLE `permisos_x_rol`
  ADD PRIMARY KEY (`permisos_x_rol_id`);

--
-- Indices de la tabla `prioridades`
--
ALTER TABLE `prioridades`
  ADD PRIMARY KEY (`prioridad_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`tarea_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `permiso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permisos_x_rol`
--
ALTER TABLE `permisos_x_rol`
  MODIFY `permisos_x_rol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `tarea_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
