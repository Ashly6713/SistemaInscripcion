-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-12-2023 a las 16:45:07
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id_calificacion` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `calificacion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id_calificacion`, `id_estudiante`, `id_materia`, `calificacion`) VALUES
(1, 2, 9, '89.00'),
(2, 4, 6, '82.37'),
(3, 6, 19, '86.25'),
(4, 10, 17, '75.78'),
(5, 6, 1, '34.10'),
(6, 13, 3, '81.97'),
(7, 14, 18, '37.19'),
(8, 5, 2, '62.06'),
(9, 19, 14, '60.63'),
(10, 1, 8, '74.80'),
(11, 13, 18, '46.82'),
(12, 15, 6, '25.70'),
(13, 8, 5, '91.70'),
(14, 19, 17, '42.21'),
(15, 13, 16, '0.85'),
(16, 15, 15, '28.32'),
(17, 7, 14, '42.67'),
(18, 3, 8, '49.32'),
(19, 7, 4, '93.08'),
(20, 2, 14, '14.81'),
(32, 1, 1, '80.00'),
(33, 1, 2, '75.00'),
(34, 1, 3, '90.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatorias`
--

CREATE TABLE `convocatorias` (
  `id_convocatoria` int(11) NOT NULL,
  `nombre_convocatoria` varchar(255) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `convocatorias`
--

INSERT INTO `convocatorias` (`id_convocatoria`, `nombre_convocatoria`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 'Convocatoria 1', '2014-01-01', '2014-06-30'),
(2, 'Convocatoria 2', '2014-07-01', '2014-12-31'),
(3, 'Convocatoria 3', '2015-01-01', '2015-06-30'),
(4, 'Convocatoria 4', '2015-07-01', '2015-12-31'),
(5, 'Convocatoria 5', '2016-01-01', '2016-06-30'),
(6, 'Convocatoria 6', '2016-07-01', '2016-12-31'),
(7, 'Convocatoria 7', '2017-01-01', '2017-06-30'),
(8, 'Convocatoria 8', '2017-07-01', '2017-12-31'),
(9, 'Convocatoria 9', '2018-01-01', '2018-06-30'),
(10, 'Convocatoria 10', '2018-07-01', '2018-12-31'),
(11, 'Convocatoria 11', '2019-01-01', '2019-06-30'),
(12, 'Convocatoria 12', '2019-07-01', '2019-12-31'),
(13, 'Convocatoria 13', '2020-01-01', '2020-06-30'),
(14, 'Convocatoria 14', '2020-07-01', '2020-12-31'),
(15, 'Convocatoria 15', '2021-01-01', '2021-06-30'),
(16, 'Convocatoria 16', '2021-07-01', '2021-12-31'),
(17, 'Convocatoria 17', '2022-01-01', '2022-06-30'),
(18, 'Convocatoria 18', '2022-07-01', '2022-12-31'),
(19, 'Convocatoria 19', '2023-01-01', '2023-06-30'),
(20, 'Convocatoria 20', '2023-07-01', '2023-12-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatorias_materias`
--

CREATE TABLE `convocatorias_materias` (
  `id_convocatoria_materia` int(11) NOT NULL,
  `id_convocatoria` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `convocatorias_materias`
--

INSERT INTO `convocatorias_materias` (`id_convocatoria_materia`, `id_convocatoria`, `id_materia`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 2, 3),
(52, 1, 1),
(53, 1, 2),
(54, 2, 2),
(55, 2, 3),
(76, 3, 4),
(77, 3, 5),
(78, 4, 6),
(79, 4, 7),
(80, 5, 8),
(81, 5, 9),
(123, 6, 11),
(124, 7, 12),
(136, 7, 13),
(150, 8, 14),
(151, 8, 15),
(160, 9, 16),
(161, 9, 17),
(162, 10, 18),
(163, 10, 19),
(185, 20, 1),
(186, 20, 2),
(187, 20, 3),
(188, 20, 4),
(189, 20, 5),
(190, 20, 6),
(191, 20, 7),
(192, 20, 8),
(193, 20, 9),
(194, 20, 10),
(195, 20, 11),
(196, 20, 12),
(197, 20, 13),
(198, 20, 14),
(199, 20, 15),
(200, 20, 16),
(201, 20, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `nombre_completo` varchar(255) NOT NULL,
  `matricula` varchar(50) NOT NULL,
  `carnet` varchar(50) NOT NULL,
  `carnet_pdf` blob DEFAULT NULL,
  `matricula_pdf` blob DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `nombre_completo`, `matricula`, `carnet`, `carnet_pdf`, `matricula_pdf`, `id_usuario`) VALUES
(1, 'Juan Pérez', 'M-12345', 'C-67890', NULL, NULL, 1),
(2, 'María Gómez', 'M-23456', 'C-78901', NULL, NULL, NULL),
(3, 'Luis Rodríguez', 'M-34567', 'C-89012', NULL, NULL, NULL),
(4, 'Ana Martínez', 'M-45678', 'C-90123', NULL, NULL, NULL),
(5, 'Pedro Sánchez', 'M-56789', 'C-01234', NULL, NULL, NULL),
(6, 'Laura Díaz', 'M-67890', 'C-12345', NULL, NULL, NULL),
(7, 'Carlos López', 'M-78901', 'C-23456', NULL, NULL, NULL),
(8, 'Sofía Hernández', 'M-89012', 'C-34567', NULL, NULL, NULL),
(9, 'Javier González', 'M-90123', 'C-45678', NULL, NULL, NULL),
(10, 'Paula Torres', 'M-01234', 'C-56789', NULL, NULL, NULL),
(11, 'Mario Ramírez', 'M-12345', 'C-67890', NULL, NULL, NULL),
(12, 'Silvia Castro', 'M-23456', 'C-78901', NULL, NULL, NULL),
(13, 'Diego Ortega', 'M-34567', 'C-89012', NULL, NULL, NULL),
(14, 'Lucía Flores', 'M-45678', 'C-90123', NULL, NULL, NULL),
(15, 'Andrés Ruiz', 'M-56789', 'C-01234', NULL, NULL, NULL),
(16, 'Elena Soto', 'M-67890', 'C-12345', NULL, NULL, NULL),
(17, 'Ricardo Herrera', 'M-78901', 'C-23456', NULL, NULL, NULL),
(18, 'Fernanda Vega', 'M-89012', 'C-34567', NULL, NULL, NULL),
(19, 'Roberto Mendoza', 'M-90123', 'C-45678', NULL, NULL, NULL),
(20, 'Carolina Peralta', 'M-01234', 'C-56789', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(255) NOT NULL,
  `sigla` varchar(20) NOT NULL,
  `departamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materia`, `nombre_materia`, `sigla`, `departamento`) VALUES
(1, 'FÍSICA I', 'FIS 1100', 'FISICA'),
(2, 'ÁLGEBRA I', 'MAT 1100', 'MATEMATICAS'),
(3, 'CÁLCULO I', 'MAT 1101', 'MATEMATICAS'),
(4, 'QUÍMICA GENERAL', 'QMC 1100', 'QUIMICA'),
(5, 'METODOLOGÍA DE LA PROGRAMACIÓN I', 'SIS 1110', 'SISTEMAS'),
(6, 'FÍSICA II', 'FIS 1102', 'FISICA'),
(7, 'ANÁLISIS DISCRETO', 'INF 1210', 'INFORMATICA'),
(8, 'CÁLCULO II', 'MAT 1102', 'MATEMATICAS'),
(9, 'ÁLGEBRA II', 'MAT 1103', 'MATEMATICAS'),
(10, 'ESTADÍSTICA I', 'MAT 1135', 'MATEMATICAS'),
(11, 'METODOLOGÍA DE LA PROGRAMACIÓN II', 'SIS 2210', 'SISTEMAS'),
(12, 'FÍSICA III', 'FIS 1200', 'FISICA'),
(13, 'SISTEMAS OPERATIVOS I', 'INF 2310', 'INFORMATICA'),
(14, 'ECUACIONES DIFERENCIALES I', 'MAT 1207', 'MATEMATICAS'),
(15, 'ESTADÍSTICA APLICADA', 'MAT 1437', 'MATEMATICAS'),
(16, 'ESTRUCTURA DE DATOS', 'SIS 2310', 'SISTEMAS'),
(17, 'METODOLOGÍA DE LA PROGRAMACIÓN III', 'SIS 2330', 'SISTEMAS'),
(18, 'ESTRUCTURA DE COMPUTADORES I', 'INF 2410', 'INFORMATICA'),
(19, 'BASE DE DATOS I', 'SIS 2320', 'SISTEMAS'),
(20, 'SISTEMAS OPERATIVOS II', 'INF 3420', 'INFORMATICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observaciones`
--

CREATE TABLE `observaciones` (
  `id_observacion` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `observacion` text DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `fecha_limite_subsanacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `observaciones`
--

INSERT INTO `observaciones` (`id_observacion`, `id_estudiante`, `id_materia`, `observacion`, `fecha_publicacion`, `fecha_limite_subsanacion`) VALUES
(2, 4, 7, NULL, NULL, NULL),
(3, 9, 6, 'Observación para el estudiante 9 en la materia 6', '2023-07-23', '2023-07-31'),
(4, 17, 6, 'Observación para el estudiante 17 en la materia 6', '2023-02-17', '2023-12-27'),
(5, 10, 6, 'Observación para el estudiante 10 en la materia 6', '2023-06-15', '2023-05-20'),
(6, 3, 6, 'Observación para el estudiante 3 en la materia 6', '2023-06-16', '2023-03-19'),
(7, 1, 6, 'Observación para el estudiante 1 en la materia 6', '2023-08-06', '2023-06-03'),
(8, 16, 6, 'Observación para el estudiante 16 en la materia 6', '2023-03-23', '2023-12-04'),
(9, 14, 6, 'Observación para el estudiante 14 en la materia 6', '2023-11-11', '2023-08-12'),
(10, 19, 6, 'Observación para el estudiante 19 en la materia 6', '2023-05-17', '2023-02-12'),
(11, 11, 6, 'Observación para el estudiante 11 en la materia 6', '2023-05-11', '2023-07-08'),
(12, 7, 6, 'Observación para el estudiante 7 en la materia 6', '2023-06-02', '2023-08-11'),
(13, 15, 6, 'Observación para el estudiante 15 en la materia 6', '2023-09-14', '2023-10-03'),
(14, 8, 6, 'Observación para el estudiante 8 en la materia 6', '2023-07-31', '2023-09-13'),
(15, 13, 6, 'Observación para el estudiante 13 en la materia 6', '2023-09-04', '2023-05-08'),
(16, 6, 6, 'Observación para el estudiante 6 en la materia 6', '2023-08-16', '2023-02-23'),
(17, 4, 6, 'Observación para el estudiante 4 en la materia 6', '2023-10-07', '2023-06-18'),
(18, 2, 6, 'Observación para el estudiante 2 en la materia 6', '2023-12-03', '2023-04-22'),
(19, 18, 6, 'Observación para el estudiante 18 en la materia 6', '2023-08-28', '2023-06-13'),
(20, 12, 6, 'Observación para el estudiante 12 en la materia 6', '2023-03-04', '2023-08-05'),
(21, 20, 6, 'Observación para el estudiante 20 en la materia 6', '2023-05-11', '2023-02-01'),
(22, 5, 6, 'Observación para el estudiante 5 en la materia 6', '2023-04-04', '2023-02-08'),
(23, 9, 1, 'Observación para el estudiante 9 en la materia 1', '2023-08-29', '2023-01-20'),
(24, 17, 1, 'Observación para el estudiante 17 en la materia 1', '2023-03-12', '2023-11-17'),
(25, 10, 1, 'Observación para el estudiante 10 en la materia 1', '2023-09-21', '2023-01-19'),
(26, 3, 1, 'Observación para el estudiante 3 en la materia 1', '2023-12-30', '2023-11-27'),
(27, 1, 1, 'Observación para el estudiante 1 en la materia 1', '2023-06-11', '2023-07-28'),
(28, 16, 1, 'Observación para el estudiante 16 en la materia 1', '2023-06-06', '2023-07-05'),
(29, 14, 1, 'Observación para el estudiante 14 en la materia 1', '2023-03-02', '2023-05-17'),
(30, 19, 1, 'Observación para el estudiante 19 en la materia 1', '2023-04-14', '2023-05-14'),
(31, 11, 1, 'Observación para el estudiante 11 en la materia 1', '2023-11-20', '2023-05-29'),
(32, 7, 1, 'Observación para el estudiante 7 en la materia 1', '2023-04-13', '2023-04-07'),
(33, 15, 1, 'Observación para el estudiante 15 en la materia 1', '2023-05-22', '2023-03-19'),
(34, 8, 1, 'Observación para el estudiante 8 en la materia 1', '2023-10-21', '2023-06-18'),
(35, 13, 1, 'Observación para el estudiante 13 en la materia 1', '2023-10-21', '2023-09-18'),
(36, 6, 1, 'Observación para el estudiante 6 en la materia 1', '2023-01-21', '2023-03-21'),
(37, 4, 1, 'Observación para el estudiante 4 en la materia 1', '2023-10-29', '2023-07-22'),
(38, 2, 1, 'Observación para el estudiante 2 en la materia 1', '2023-03-13', '2023-05-23'),
(39, 18, 1, 'Observación para el estudiante 18 en la materia 1', '2023-04-08', '2023-03-30'),
(40, 12, 1, 'Observación para el estudiante 12 en la materia 1', '2023-04-24', '2023-11-29'),
(41, 20, 1, 'Observación para el estudiante 20 en la materia 1', '2023-07-11', '2023-12-19'),
(42, 5, 1, 'Observación para el estudiante 5 en la materia 1', '2023-02-28', '2023-12-22'),
(43, 9, 16, 'Observación para el estudiante 9 en la materia 16', '2023-04-20', '2023-08-28'),
(44, 17, 16, 'Observación para el estudiante 17 en la materia 16', '2023-04-13', '2023-07-09'),
(45, 10, 16, 'Observación para el estudiante 10 en la materia 16', '2023-08-28', '2023-10-17'),
(46, 3, 16, 'Observación para el estudiante 3 en la materia 16', '2023-11-29', '2023-03-31'),
(47, 1, 16, 'Observación para el estudiante 1 en la materia 16', '2023-05-25', '2023-04-30'),
(48, 16, 16, 'Observación para el estudiante 16 en la materia 16', '2023-05-09', '2023-11-06'),
(49, 14, 16, 'Observación para el estudiante 14 en la materia 16', '2023-02-03', '2023-12-30'),
(50, 19, 16, 'Observación para el estudiante 19 en la materia 16', '2023-08-11', '2023-02-17'),
(51, 11, 16, 'Observación para el estudiante 11 en la materia 16', '2023-09-25', '2023-05-09'),
(515, 1, 2, 'Observación 2 para estudiante 1 en materia 2', '2023-07-02', '2023-07-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulaciones`
--

CREATE TABLE `postulaciones` (
  `id_postulacion` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_convocatoria` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `semestre` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  `boleta_pago` tinyint(1) NOT NULL DEFAULT 0,
  `carta_postulacion` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `postulaciones`
--

INSERT INTO `postulaciones` (`id_postulacion`, `id_estudiante`, `id_convocatoria`, `id_materia`, `semestre`, `anio`, `boleta_pago`, `carta_postulacion`) VALUES
(1, 6, 14, 14, 1, 2023, 0, 0),
(2, 17, 3, 4, 2, 2023, 0, 0),
(3, 10, 8, 7, 2, 2023, 0, 0),
(4, 13, 5, 8, 1, 2023, 0, 0),
(5, 10, 18, 18, 2, 2023, 0, 0),
(6, 6, 19, 16, 1, 2023, 0, 0),
(7, 7, 1, 20, 2, 2023, 0, 0),
(8, 8, 4, 17, 2, 2023, 0, 0),
(9, 13, 14, 11, 2, 2023, 0, 0),
(10, 19, 14, 10, 1, 2023, 0, 0),
(11, 17, 9, 15, 1, 2023, 0, 0),
(12, 4, 13, 11, 2, 2023, 0, 0),
(13, 1, 18, 8, 1, 2023, 0, 0),
(14, 14, 8, 17, 1, 2023, 0, 0),
(15, 14, 6, 7, 2, 2023, 0, 0),
(16, 5, 8, 6, 1, 2023, 0, 0),
(17, 10, 16, 12, 1, 2023, 0, 0),
(18, 4, 17, 13, 2, 2023, 0, 0),
(19, 19, 18, 11, 1, 2023, 0, 0),
(20, 3, 12, 8, 1, 2023, 0, 0),
(21, 15, 16, 13, 2, 2023, 0, 0),
(22, 17, 17, 12, 1, 2023, 0, 0),
(23, 18, 2, 15, 1, 2023, 0, 0),
(24, 10, 14, 2, 1, 2023, 0, 0),
(25, 4, 14, 19, 2, 2023, 0, 0),
(26, 17, 6, 16, 1, 2023, 0, 0),
(27, 13, 6, 11, 2, 2023, 0, 0),
(28, 3, 1, 17, 1, 2023, 0, 0),
(29, 4, 9, 12, 2, 2023, 0, 0),
(30, 12, 6, 11, 2, 2023, 0, 0),
(31, 17, 18, 20, 1, 2023, 0, 0),
(32, 8, 10, 6, 2, 2023, 0, 0),
(33, 20, 3, 17, 2, 2023, 0, 0),
(34, 1, 11, 13, 2, 2023, 0, 0),
(35, 6, 11, 19, 1, 2023, 0, 0),
(36, 15, 5, 1, 2, 2023, 0, 0),
(37, 17, 3, 3, 1, 2023, 0, 0),
(38, 11, 6, 16, 1, 2023, 0, 0),
(39, 17, 12, 9, 1, 2023, 0, 0),
(40, 17, 8, 10, 1, 2023, 0, 0),
(41, 9, 10, 1, 2, 2023, 0, 0),
(42, 9, 19, 9, 1, 2023, 0, 0),
(43, 10, 18, 18, 2, 2023, 0, 0),
(44, 9, 2, 5, 2, 2023, 0, 0),
(45, 17, 9, 13, 2, 2023, 0, 0),
(46, 6, 2, 13, 2, 2023, 0, 0),
(47, 10, 20, 10, 1, 2023, 0, 0),
(48, 19, 17, 9, 2, 2023, 0, 0),
(49, 7, 6, 7, 2, 2023, 0, 0),
(50, 20, 20, 18, 2, 2023, 0, 0),
(51, 2, 11, 6, 2, 2023, 0, 0),
(52, 12, 14, 14, 1, 2023, 0, 0),
(53, 9, 10, 6, 2, 2023, 0, 0),
(54, 12, 1, 6, 1, 2023, 0, 0),
(55, 6, 14, 11, 2, 2023, 0, 0),
(56, 3, 4, 14, 2, 2023, 0, 0),
(57, 18, 6, 15, 2, 2023, 0, 0),
(58, 18, 3, 18, 2, 2023, 0, 0),
(59, 6, 3, 17, 2, 2023, 0, 0),
(60, 15, 11, 9, 2, 2023, 0, 0),
(61, 6, 8, 18, 1, 2023, 0, 0),
(62, 4, 12, 6, 2, 2023, 0, 0),
(63, 19, 4, 5, 2, 2023, 0, 0),
(64, 3, 6, 2, 2, 2023, 0, 0),
(65, 1, 7, 10, 1, 2023, 0, 0),
(66, 8, 17, 1, 2, 2023, 0, 0),
(67, 10, 3, 7, 1, 2023, 0, 0),
(68, 17, 19, 4, 1, 2023, 0, 0),
(69, 20, 11, 15, 2, 2023, 0, 0),
(70, 6, 5, 10, 2, 2023, 0, 0),
(71, 6, 1, 6, 1, 2023, 0, 0),
(72, 10, 20, 12, 2, 2023, 0, 0),
(73, 7, 20, 17, 1, 2023, 0, 0),
(74, 3, 6, 20, 1, 2023, 0, 0),
(75, 20, 20, 19, 2, 2023, 0, 0),
(76, 7, 10, 12, 1, 2023, 0, 0),
(77, 9, 8, 15, 1, 2023, 0, 0),
(78, 5, 10, 15, 1, 2023, 0, 0),
(79, 3, 7, 4, 1, 2023, 0, 0),
(80, 12, 8, 4, 2, 2023, 0, 0),
(81, 7, 9, 4, 1, 2023, 0, 0),
(82, 14, 16, 17, 2, 2023, 0, 0),
(83, 17, 3, 1, 2, 2023, 0, 0),
(84, 5, 19, 1, 1, 2023, 0, 0),
(85, 16, 13, 15, 2, 2023, 0, 0),
(86, 5, 18, 12, 1, 2023, 0, 0),
(87, 9, 10, 1, 2, 2023, 0, 0),
(88, 8, 13, 20, 2, 2023, 0, 0),
(89, 19, 20, 6, 1, 2023, 0, 0),
(90, 2, 13, 18, 2, 2023, 0, 0),
(91, 11, 15, 20, 2, 2023, 0, 0),
(92, 5, 16, 5, 2, 2023, 0, 0),
(93, 8, 19, 9, 1, 2023, 0, 0),
(94, 11, 9, 10, 1, 2023, 0, 0),
(95, 17, 6, 20, 1, 2023, 0, 0),
(96, 20, 12, 19, 2, 2023, 0, 0),
(97, 3, 12, 8, 1, 2023, 0, 0),
(98, 1, 17, 2, 2, 2023, 0, 0),
(99, 1, 9, 19, 1, 2023, 0, 0),
(100, 5, 6, 16, 1, 2023, 0, 0),
(65536, 1, 20, 1, 2, 2023, 1, 0),
(65537, 1, 20, 2, 2, 2023, 0, 0),
(65539, 9, 5, 14, 2, 2022, 0, 0),
(65540, 9, 5, 14, 2, 2022, 0, 0),
(65543, 1, 20, 2, 2, 2023, 0, 0),
(65549, 1, 20, 11, 2, 2023, 0, 0),
(65563, 1, 20, 9, 2, 2023, 1, 0),
(65564, 1, 20, 7, 2, 2023, 0, 0),
(65565, 1, 20, 14, 2, 2023, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `contra` varchar(255) DEFAULT NULL,
  `rol` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contra`, `rol`) VALUES
(1, 'juan', '3b612c75a7b5048a435fb6ec81e52ff92d6d795a8b5a9c17070f6a63c97a53b2', 1),
(3, 'pedro', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 2),
(4, 'Usuario1', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 1),
(5, 'Usuario2', '811786ad1ae74adfdd20dd0372abaaebc6246e343aebd01da0bfc4c02bf0106c', 1),
(6, 'Usuario3', '114bd151f8fb0c58642d2170da4ae7d7c57977260ac2cc8905306cab6b2acabc', 1),
(7, 'Usuario4', 'da70dfa4d9f95ac979f921e8e623358236313f334afcd06cddf8a5621cf6a1e9', 1),
(8, 'Usuario5', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(9, 'Usuario6', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 1),
(10, 'Usuario7', '38083c7ee9121e17401883566a148aa5c2e2d55dc53bc4a94a026517dbff3c6b', 1),
(11, 'Usuario8', 'ceaa28bba4caba687dc31b1bbe79eca3c70c33f871f1ce8f528cf9ab5cfd76dd', 1),
(12, 'Usuario9', 'db2e7f1bd5ab9968ae76199b7cc74795ca7404d5a08d78567715ce532f9d2669', 1),
(13, 'Usuario10', 'f8638b979b2f4f793ddb6dbd197e0ee25a7a6ea32b0ae22f5e3c5d119d839e75', 1),
(14, 'Usuario11', '499bc7df9d8873c1c38e6898177c343b2a34d2eb43178a9eb4efcb993366c8cd', 1),
(15, 'Usuario12', '6a95bbab63d587b596398c4bd7e91a132f24032d2007d107e5ea71967724b092', 1),
(16, 'Usuario13', '213fc33d8f2dbde3207734e3097ea72a69fb8b009f2878468cdd9e74b70a1e59', 1),
(17, 'Usuario14', '8cce10345c5e1de90d277b9869465f5972b828afbbbfd7ef08b1d835eedee993', 1),
(18, 'Usuario15', '1be2e452b46d7a0d9656bbb1f768e8248eba1b75baed65f5d99eafa948899a6a', 1),
(19, 'Usuario16', 'c565fe03ca9b6242e01dfddefe9bba3d98b270e19cd02fd85ceaf75e2b25bf12', 1),
(20, 'Usuario17', '2224512ef44a62e580bb1c0dcb33aff688f4e7da8a488aeb4e7ca402c5cacf45', 1),
(21, 'Usuario18', '20f3765880a5c269b747e1e906054a4b4a3a991259f1e16b5dde4742cec2319a', 1),
(22, 'director1', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 2),
(23, 'director2', '811786ad1ae74adfdd20dd0372abaaebc6246e343aebd01da0bfc4c02bf0106c', 2),
(24, 'director3', '114bd151f8fb0c58642d2170da4ae7d7c57977260ac2cc8905306cab6b2acabc', 2),
(25, 'tribunal1', 'da70dfa4d9f95ac979f921e8e623358236313f334afcd06cddf8a5621cf6a1e9', 3),
(26, 'tribunal2', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 3),
(27, 'secretaria1', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 4),
(28, 'comosion', '38083c7ee9121e17401883566a148aa5c2e2d55dc53bc4a94a026517dbff3c6b', 5),
(29, 'comision2', '20f3765880a5c269b747e1e906054a4b4a3a991259f1e16b5dde4742cec2319a', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id_calificacion`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  ADD PRIMARY KEY (`id_convocatoria`);

--
-- Indices de la tabla `convocatorias_materias`
--
ALTER TABLE `convocatorias_materias`
  ADD PRIMARY KEY (`id_convocatoria_materia`),
  ADD KEY `id_convocatoria` (`id_convocatoria`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `fk_estudiante_usuario` (`id_usuario`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`);

--
-- Indices de la tabla `observaciones`
--
ALTER TABLE `observaciones`
  ADD PRIMARY KEY (`id_observacion`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD PRIMARY KEY (`id_postulacion`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_convocatoria` (`id_convocatoria`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id_calificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  MODIFY `id_convocatoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `convocatorias_materias`
--
ALTER TABLE `convocatorias_materias`
  MODIFY `id_convocatoria_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `observaciones`
--
ALTER TABLE `observaciones`
  MODIFY `id_observacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=520;

--
-- AUTO_INCREMENT de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  MODIFY `id_postulacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65566;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`);

--
-- Filtros para la tabla `convocatorias_materias`
--
ALTER TABLE `convocatorias_materias`
  ADD CONSTRAINT `convocatorias_materias_ibfk_1` FOREIGN KEY (`id_convocatoria`) REFERENCES `convocatorias` (`id_convocatoria`),
  ADD CONSTRAINT `convocatorias_materias_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `fk_estudiante_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `observaciones`
--
ALTER TABLE `observaciones`
  ADD CONSTRAINT `observaciones_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `observaciones_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`);

--
-- Filtros para la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD CONSTRAINT `postulaciones_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `postulaciones_ibfk_2` FOREIGN KEY (`id_convocatoria`) REFERENCES `convocatorias` (`id_convocatoria`),
  ADD CONSTRAINT `postulaciones_ibfk_3` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
