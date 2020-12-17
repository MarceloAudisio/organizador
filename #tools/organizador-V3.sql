-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2020 a las 19:33:21
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
('uovt2c4de2vc6n4ivqmtc3jab2luaoiu', '::1', 1608075710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383037353731303b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('96h99be88mttln3g9nrcspbg6s13cd2q', '::1', 1608076158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383037363135383b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('kic13mcntt9vp2g4201463iacajiqfpq', '::1', 1608076528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383037363532383b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('appn7fet1di2g27surmc8gb60d8imvee', '::1', 1608077294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383037373239343b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('mc40too8kmusj1b2d57hfm5al8fl7f0b', '::1', 1608077623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383037373632333b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('5sm25d3cibsqp9ittbbvm3ugg03bpeg3', '::1', 1608078094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383037383039343b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('hfqacapcnngtvv3er9nfu7c9tlr7piv7', '::1', 1608078424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383037383432343b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('h7oc7uab7cf3hc94c1o58ibt71gqoa2b', '::1', 1608079266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383037393236363b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('bllmk1stfggimn9u5u2ksjc152mb2rm0', '::1', 1608079892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383037393839323b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('hb4d1j5gpvo73h5g86nvd1fvraugcoa8', '::1', 1608080245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383038303234353b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('roalcvh6f7qthuhfvs12sog4888ff6vv', '::1', 1608080372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383038303234353b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('cgnia1u1mfull8eg8pbgocpacetua3sl', '::1', 1608120397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383132303339373b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('5bd23fjjen3ci0h5s7fndkdnshddne1p', '::1', 1608121083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383132313038333b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('9d6dkfqotvfimi9fv4votajj9i38n699', '::1', 1608121672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383132313637323b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('let2j4hc2ib2goths6qud20ka8rlh4gs', '::1', 1608125764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383132353736343b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('tv1bh7ipfd4u7ratiu3f695pn4ntdtlf', '192.168.1.33', 1608124287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383132343236373b),
('hdmptcag3v9un7g5jfjqionoeus3bdg9', '::1', 1608126093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383132363039333b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('1ok27giglbf2lp46h2jnalkbhocutdoe', '::1', 1608126660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383132363636303b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('e3u5qnjsrt6nb35dni1uvsiilgjptd1j', '::1', 1608126660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383132363636303b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('p8avk874v5fe461qc04b2c803s340k3f', '::1', 1608142192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383134323139323b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('dmgootnjuet0d5pci8iu4690b5hi9juc', '::1', 1608142521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383134323532313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('3vsujeira826pj731794k20n5m6uif00', '::1', 1608142945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383134323934353b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('ok6ivc77jjtol0osmamv0rhipjahpktp', '::1', 1608143555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383134333535353b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b),
('8k60ikf25h171fcc4hdujnlorc2u0ekp', '::1', 1608143567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383134333535353b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c7c733a313a2231223b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `estado_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`estado_id`, `nombre`) VALUES
(0, 'Pendiente NO Vista'),
(1, 'Pendiente Vista'),
(10, 'En progreso'),
(20, 'Terminada'),
(30, 'Detenida'),
(40, 'Descartada');

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
(3, 'Tercera', 'dfgdfgdfg', 1, '2020-12-10 22:14:22', 0, 1, NULL, NULL),
(4, 'Cuarta', 'dfgdfgdfg', 20, '2020-12-10 22:14:34', 0, 1, NULL, NULL),
(5, 'OTRA', 'dfdfgdfgfd', 10, '2020-12-10 22:16:50', 0, 1, NULL, NULL),
(6, 'stgddf', 'dfgdfgdf', 10, '2020-12-11 11:38:18', 0, 1, NULL, NULL),
(7, 'mesa a2', 'gdfgfgd', 10, '2020-12-11 11:39:35', 0, 1, NULL, NULL),
(8, 'otra', 'va', 1, '2020-12-11 11:58:47', 0, 1, '2020-12-11 00:00:00', NULL);

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
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1, '2020-12-16 15:03:17'),
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
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`estado_id`);

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
  MODIFY `tarea_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
