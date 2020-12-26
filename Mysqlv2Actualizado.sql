-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-07-2016 a las 14:26:32
-- Versión del servidor: 5.6.30
-- Versión de PHP: 5.6.23-pl0-gentoo

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hostingweb_wc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesos`
--

CREATE TABLE IF NOT EXISTS `accesos` (
  `id` int(11) NOT NULL,
  `idjugador` int(11) NOT NULL,
  `Nombre` varchar(35) NOT NULL,
  `Ip` varchar(75) NOT NULL,
  `Fecha` varchar(75) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1977 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actualizaciones`
--

CREATE TABLE IF NOT EXISTS `actualizaciones` (
  `id_actualizar` int(11) NOT NULL,
  `tipo` int(11) NOT NULL DEFAULT '0',
  `valor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msg1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msg2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msg3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msg4` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `actualizaciones`
--

INSERT INTO `actualizaciones` (`id_actualizar`, `tipo`, `valor`, `msg1`, `msg2`, `msg3`, `msg4`) VALUES
(26, 4, '37', 'Josh Hawes', '1', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--

CREATE TABLE IF NOT EXISTS `almacenes` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `xx` float NOT NULL,
  `yy` float NOT NULL,
  `zz` float NOT NULL,
  `xxx` float NOT NULL,
  `yyy` float NOT NULL,
  `zzz` float NOT NULL,
  `Int` int(11) NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0',
  `OIDs` varchar(350) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0',
  `OCAs` varchar(350) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0',
  `OTIs` varchar(350) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0',
  `Estado` int(11) NOT NULL DEFAULT '0',
  `Precio` int(11) NOT NULL DEFAULT '30000',
  `Comprado` int(11) NOT NULL DEFAULT '0',
  `Comprador` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `almacenes`
--

INSERT INTO `almacenes` (`id`, `x`, `y`, `z`, `xx`, `yy`, `zz`, `xxx`, `yyy`, `zzz`, `Int`, `VW`, `OIDs`, `OCAs`, `OTIs`, `Estado`, `Precio`, `Comprado`, `Comprador`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 30000, 0, 'El Estado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `armaslegales`
--

CREATE TABLE IF NOT EXISTS `armaslegales` (
  `id` int(11) NOT NULL,
  `Comprador` varchar(35) NOT NULL DEFAULT 'Desconocido',
  `Proovedor` varchar(35) NOT NULL DEFAULT 'Gobierno',
  `Identificacion` int(100) NOT NULL DEFAULT '0',
  `Objeto` varchar(50) NOT NULL DEFAULT 'Desconocido'
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `armaslegales`
--

INSERT INTO `armaslegales` (`id`, `Comprador`, `Proovedor`, `Identificacion`, `Objeto`) VALUES
(1, 'Josh Hawes', 'Armeria SAPD', 13654, 'Desert Eagle'),
(2, 'Josh Hawes', 'Armeria SAPD', 65664, 'Cargador de Desert Eagle'),
(3, 'Josh Hawes', 'Armeria SAPD', 9158, 'M4'),
(4, 'Josh Hawes', 'Armeria SAPD', 35914, 'Cargador de M4'),
(5, 'Josh Hawes', 'Armeria SAPD', 48800, 'Cargador de M4'),
(6, 'Josh Hawes', 'Armeria SAPD', 33791, 'Desert Eagle'),
(7, 'Jack Burdock', 'Armeria SAPD', 5737, 'Desert Eagle'),
(8, 'Jack Burdock', 'Armeria SAPD', 27192, 'Cargador de Desert Eagle'),
(9, 'Josh Hawes', 'Armeria SAPD', 20031, 'Desert Eagle'),
(10, 'Josh Hawes', 'Armeria SAPD', 80370, 'Cargador de Desert Eagle'),
(11, 'Jack Burdock', 'Armeria SAPD', 9833, 'M4'),
(12, 'Jack Burdock', 'Armeria SAPD', 7320, 'MP5'),
(13, 'Jack Burdock', 'Armeria SAPD', 12297, 'Cargador de M4'),
(14, 'Jack Burdock', 'Armeria SAPD', 84208, 'Cargador de Desert Eagle'),
(15, 'Jack Burdock', 'Armeria SAPD', 74126, 'Cargador de M4'),
(16, 'Jack Burdock', 'Armeria SAPD', 72876, 'Cargador de M4'),
(17, 'Cuenta Prueba', 'Armeria SAPD', 65744, 'Desert Eagle'),
(18, 'Mark Hawes', 'Armeria SAPD', 99491, 'Francotirador'),
(19, 'Josh Hawes', 'Armeria SAPD', 45044, 'Cargador de Desert Eagle'),
(20, 'Cuenta Prueba', 'Armeria SAPD', 91968, 'Cargador de Desert Eagle'),
(21, 'Mark Hawes', 'Armeria SAPD', 18890, 'Desert Eagle'),
(22, 'Emmet Brooklyn', 'Armeria SAPD', 3481, 'Desert Eagle'),
(23, 'Emmet Brooklyn', 'Armeria SAPD', 57006, 'Cargador de Desert Eagle'),
(24, 'Mark Hawes', 'Armeria SAPD', 98501, 'Cargador de Desert Eagle'),
(25, 'Emmet Brooklyn', 'Armeria SAPD', 93937, 'Cargador de Desert Eagle'),
(26, 'Emmet Brooklyn', 'Armeria SAPD', 78363, 'Escopeta'),
(27, 'Mark Hawes', 'Armeria SAPD', 80110, 'Francotirador'),
(28, 'Mark Hawes', 'Armeria SAPD', 50040, 'Cargador de Francotirador'),
(29, 'Emmet Brooklyn', 'Armeria SAPD', 24536, 'Desert Eagle'),
(30, 'Josh Hawes', 'Armeria SAPD', 68704, 'Desert Eagle'),
(31, 'Josh Hawes', 'Armeria SAPD', 27893, 'Cargador de Desert Eagle'),
(32, 'Emmet Brooklyn', 'Armeria SAPD', 13668, 'Desert Eagle'),
(33, 'Akquille Raekwon', 'Armeria SAPD', 95345, 'Desert Eagle'),
(34, 'Emmet Brooklyn', 'Armeria SAPD', 47362, 'Francotirador'),
(35, 'Emmet Brooklyn', 'Armeria SAPD', 67158, 'Desert Eagle'),
(36, 'Emmet Brooklyn', 'Armeria SAPD', 37369, 'Desert Eagle'),
(37, 'Emmet Brooklyn', 'Armeria SAPD', 4252, 'Cargador de Desert Eagle'),
(38, 'Emmet Brooklyn', 'Armeria SAPD', 19347, 'Cargador de Desert Eagle'),
(39, 'Emmet Brooklyn', 'Armeria SAPD', 64824, 'Desert Eagle'),
(40, 'Emmet Brooklyn', 'Armeria SAPD', 9713, 'Cargador de Desert Eagle'),
(41, 'Emmet Brooklyn', 'Armeria SAPD', 85006, 'Cargador de Desert Eagle'),
(42, 'Mark Hawes', 'Armeria SAPD', 96814, 'Desert Eagle'),
(43, 'Mark Hawes', 'Armeria SAPD', 12014, 'Cargador de Desert Eagle'),
(44, 'James Mahoney', 'Armeria SAPD', 68590, 'Desert Eagle'),
(45, 'James Mahoney', 'Armeria SAPD', 45257, 'Cargador de Desert Eagle'),
(46, 'Ron Damon', 'Armeria SAPD', 97537, 'Escopeta'),
(47, 'James Mahoney', 'Armeria SAPD', 13235, 'Cargador de Desert Eagle'),
(48, 'James Mahoney', 'Armeria SAPD', 40597, 'Cargador de Desert Eagle'),
(49, 'Ron Damon', 'Armeria SAPD', 53361, 'Escopeta'),
(50, 'Ron Damon', 'Armeria SAPD', 50187, 'Cargador de Escopeta'),
(51, 'Ron Damon', 'Armeria SAPD', 41645, 'Cargador de Escopeta'),
(52, 'Ron Damon', 'Armeria SAPD', 64202, 'Cargador de Escopeta'),
(53, 'Emmet Brooklyn', 'Armeria SAPD', 1868, 'Escopeta'),
(54, 'Emmet Brooklyn', 'Armeria SAPD', 41328, 'Cargador de Escopeta'),
(55, 'James Mahoney', 'Armeria SAPD', 20626, 'Escopeta'),
(56, 'James Mahoney', 'Armeria SAPD', 28017, 'Cargador de Escopeta'),
(57, 'James Mahoney', 'Armeria SAPD', 65675, 'Cargador de Escopeta'),
(58, 'Ron Damon', 'Armeria SAPD', 53383, 'Desert Eagle'),
(59, 'Ron Damon', 'Armeria SAPD', 10670, 'Cargador de Desert Eagle'),
(60, 'Ron Damon', 'Armeria SAPD', 78310, 'Escopeta'),
(61, 'Ron Damon', 'Armeria SAPD', 22760, 'Cargador de Escopeta'),
(62, 'Mark Hawes', 'Armeria SAPD', 90841, 'Desert Eagle'),
(63, 'Ron Damon', 'Armeria SAPD', 14918, 'Cargador de Escopeta'),
(64, 'Ron Damon', 'Armeria SAPD', 54657, 'Cargador de Escopeta'),
(65, 'Steve Cilic', 'Armeria SAPD', 27619, 'Desert Eagle'),
(66, 'Steve Cilic', 'Armeria SAPD', 51212, 'Cargador de Desert Eagle'),
(67, 'Steve Cilic', 'Armeria SAPD', 46529, 'Cargador de Desert Eagle'),
(68, 'James Mahoney', 'Armeria SAPD', 84761, 'Cargador de Desert Eagle'),
(69, 'Steve Cilic', 'Armeria SAPD', 33518, 'Cargador de Desert Eagle'),
(70, 'Emmet Brooklyn', 'Armeria SAPD', 21527, 'M4'),
(71, 'Emmet Brooklyn', 'Armeria SAPD', 7170, 'Cargador de M4'),
(72, 'James Mahoney', 'Armeria SAPD', 37415, 'Desert Eagle'),
(73, 'James Mahoney', 'Armeria SAPD', 62140, 'Cargador de Desert Eagle'),
(74, 'James Mahoney', 'Armeria SAPD', 96990, 'Cargador de Desert Eagle'),
(75, 'James Mahoney', 'Armeria SAPD', 36047, 'Cargador de Desert Eagle'),
(76, 'James Mahoney', 'Armeria SAPD', 13519, 'Cargador de Desert Eagle'),
(77, 'James Mahoney', 'Armeria SAPD', 95161, 'Cargador de Desert Eagle'),
(78, 'Alexis Callejon', 'Armeria SAPD', 78213, 'Desert Eagle'),
(79, 'Steve Cilic', 'Armeria SAPD', 49886, 'Desert Eagle'),
(80, 'Steve Cilic', 'Armeria SAPD', 98020, 'Cargador de Desert Eagle'),
(81, 'James Mahoney', 'Armeria SAPD', 34589, 'Desert Eagle'),
(82, 'James Mahoney', 'Armeria SAPD', 62450, 'Cargador de Desert Eagle'),
(83, 'James Mahoney', 'Armeria SAPD', 72824, 'Cargador de Desert Eagle'),
(84, 'James Mahoney', 'Armeria SAPD', 4076, 'Cargador de Desert Eagle'),
(85, 'James Mahoney', 'Armeria SAPD', 10349, 'Desert Eagle'),
(86, 'Steve Cilic', 'Armeria SAPD', 5044, 'Cargador de Desert Eagle'),
(87, 'Steve Cilic', 'Armeria SAPD', 43890, 'Cargador de Desert Eagle'),
(88, 'James Mahoney', 'Armeria SAPD', 36530, 'Cargador de Desert Eagle'),
(89, 'Alexis Callejon', 'Armeria SAPD', 12834, 'Desert Eagle'),
(90, 'Alexis Callejon', 'Armeria SAPD', 34632, 'Cargador de Desert Eagle'),
(91, 'Alexis Callejon', 'Armeria SAPD', 75120, 'M4'),
(92, 'Alexis Callejon', 'Armeria SAPD', 42969, 'Cargador de M4'),
(93, 'Alexis Callejon', 'Armeria SAPD', 4895, 'Cargador de M4'),
(94, 'Alexis Callejon', 'Armeria SAPD', 53772, 'Escopeta'),
(95, 'Akquille Raekwon', 'Ammu Nation', 11820, 'AK-47'),
(96, 'Ken Roth', 'Armeria SAPD', 11829, 'Cargador de Desert Eagle'),
(97, 'Mark Hawes', 'Armeria SAPD', 88941, 'Francotirador'),
(98, 'Mark Hawes', 'Armeria SAPD', 1009, 'Cargador de Francotirador'),
(99, 'Ken Roth', 'Armeria SAPD', 22270, 'Francotirador'),
(100, 'Ken Roth', 'Armeria SAPD', 14139, 'M4'),
(101, 'Ken Roth', 'Armeria SAPD', 30226, 'Cargador de M4'),
(102, 'Steve Cilic', 'Armeria SAPD', 13715, 'Cargador de Desert Eagle'),
(103, 'Steve Cilic', 'Armeria SAPD', 73945, 'Cargador de Desert Eagle'),
(104, 'James Mahoney', 'Armeria SAPD', 1620, 'M4'),
(105, 'James Mahoney', 'Armeria SAPD', 36371, 'Cargador de M4'),
(106, 'James Mahoney', 'Armeria SAPD', 47161, 'Cargador de M4'),
(107, 'Josh Hawes', 'Ammu Nation', 90662, 'Uzi'),
(108, 'Eazy Jackson', 'Ammu Nation', 33228, 'Escopeta'),
(109, 'Eazy Jackson', 'Ammu Nation', 1910, 'MP5'),
(110, 'Steve Cilic', 'Armeria SAPD', 40886, 'Escopeta'),
(111, 'James Mahoney', 'Armeria SAPD', 86240, 'Escopeta'),
(112, 'James Mahoney', 'Armeria SAPD', 31396, 'Cargador de Escopeta'),
(113, 'Josh Hawes', 'Armeria SAPD', 12950, 'Desert Eagle'),
(114, 'Josh Hawes', 'Armeria SAPD', 74987, 'Cargador de Desert Eagle'),
(115, 'Josh Hawes', 'Armeria SAPD', 46051, 'Cargador de Desert Eagle'),
(116, 'Josh Hawes', 'Armeria SAPD', 29069, 'Cargador de Desert Eagle'),
(117, 'James Mahoney', 'Armeria SAPD', 30568, 'Desert Eagle'),
(118, 'James Mahoney', 'Armeria SAPD', 85239, 'Cargador de Desert Eagle'),
(119, 'James Mahoney', 'Armeria SAPD', 30803, 'Desert Eagle'),
(120, 'James Mahoney', 'Armeria SAPD', 40116, 'Cargador de Desert Eagle'),
(121, 'James Mahoney', 'Armeria SAPD', 99312, 'Cargador de Desert Eagle'),
(122, 'James Mahoney', 'Armeria SAPD', 6363, 'Cargador de Desert Eagle'),
(123, 'Josh Hawes', 'Armeria SAPD', 83856, 'Desert Eagle'),
(124, 'Josh Hawes', 'Armeria SAPD', 8477, 'Cargador de Desert Eagle'),
(125, 'Michael Cutler', 'Armeria SAPD', 77501, 'Escopeta'),
(126, 'Michael Cutler', 'Armeria SAPD', 29327, 'Desert Eagle'),
(127, 'Michael Cutler', 'Armeria SAPD', 22179, 'Escopeta'),
(128, 'Michael Cutler', 'Armeria SAPD', 17345, 'Cargador de Desert Eagle'),
(129, 'Michael Cutler', 'Armeria SAPD', 63177, 'Cargador de Escopeta'),
(130, 'Michael Cutler', 'Armeria SAPD', 88739, 'Desert Eagle'),
(131, 'Michael Cutler', 'Armeria SAPD', 51381, 'Cargador de M4'),
(132, 'Josh Hawes', 'Ammu Nation', 83524, 'Desert Eagle'),
(133, 'Steve Cilic', 'Ammu Nation', 85434, 'Desert Eagle'),
(134, 'Josh Hawes', 'Armeria SAPD', 46141, 'Desert Eagle'),
(135, 'Josh Hawes', 'Armeria SAPD', 48698, 'Cargador de Desert Eagle'),
(136, 'Bruce Coleman', 'Armeria SAPD', 10127, 'Cargador de Desert Eagle'),
(137, 'Bruce Coleman', 'Armeria SAPD', 87912, 'Cargador de Desert Eagle'),
(138, 'Bruce Coleman', 'Armeria SAPD', 9435, 'Cargador de Desert Eagle'),
(139, 'Michael Cutler', 'Armeria SAPD', 20481, 'Cargador de Escopeta'),
(140, 'Michael Cutler', 'Armeria SAPD', 59585, 'Escopeta'),
(141, 'Alexis Callejon', 'Armeria SAPD', 51858, 'Francotirador'),
(142, 'Alexis Callejon', 'Armeria SAPD', 83553, 'Francotirador'),
(143, 'Alexis Callejon', 'Armeria SAPD', 92163, 'Cargador de Francotirador'),
(144, 'Josh Hawes', 'Armeria SAPD', 78814, 'Desert Eagle'),
(145, 'Josh Hawes', 'Armeria SAPD', 46218, 'Cargador de Desert Eagle'),
(146, 'James Mahoney', 'Armeria SAPD', 84076, 'Francotirador'),
(147, 'James Mahoney', 'Armeria SAPD', 62096, 'Cargador de Francotirador'),
(148, 'James Mahoney', 'Armeria SAPD', 50194, 'Cargador de Francotirador'),
(149, 'James Mahoney', 'Armeria SAPD', 38137, 'Desert Eagle'),
(150, 'James Mahoney', 'Armeria SAPD', 78349, 'Cargador de Desert Eagle'),
(151, 'Bruce Taylor', 'Armeria SAPD', 88613, 'Desert Eagle'),
(152, 'Bruce Taylor', 'Armeria SAPD', 82690, 'MP5'),
(153, 'Bruce Taylor', 'Armeria SAPD', 50872, 'M4'),
(154, 'Brian Aniston', 'Armeria SAPD', 32957, 'M4'),
(155, 'Brian Aniston', 'Armeria SAPD', 33109, 'Francotirador'),
(156, 'Brian Aniston', 'Armeria SAPD', 27005, 'Cargador de Desert Eagle'),
(157, 'Brian Aniston', 'Armeria SAPD', 13934, 'Cargador de M4'),
(158, 'Brian Aniston', 'Armeria SAPD', 80295, 'Cargador de MP5'),
(159, 'Bruce Taylor', 'Armeria SAPD', 45882, 'Cargador de Desert Eagle'),
(160, 'Bruce Taylor', 'Armeria SAPD', 59814, 'Cargador de Francotirador'),
(161, 'Evan Hobbs', 'Armeria SAPD', 74981, 'Escopeta'),
(162, 'James Mahoney', 'Armeria SAPD', 71590, 'Cargador de Desert Eagle'),
(163, 'Brian Aniston', 'Armeria SAPD', 19404, 'Desert Eagle'),
(164, 'Brian Aniston', 'Armeria SAPD', 9417, 'Cargador de Desert Eagle'),
(165, 'Bruce Taylor', 'Armeria SAPD', 60732, 'Desert Eagle'),
(166, 'Evan Hobbs', 'Armeria SAPD', 21308, 'Cargador de Desert Eagle'),
(167, 'Brian Aniston', 'Armeria SAPD', 88615, 'Cargador de Desert Eagle'),
(168, 'Bruce Taylor', 'Armeria SAPD', 4854, 'Cargador de Desert Eagle'),
(169, 'Evan Hobbs', 'Armeria SAPD', 76843, 'Cargador de Desert Eagle'),
(170, 'Evan Hobbs', 'Armeria SAPD', 26206, 'Cargador de Desert Eagle'),
(171, 'Evan Hobbs', 'Armeria SAPD', 22240, 'Escopeta'),
(172, 'Alexis Callejon', 'Armeria SAPD', 77838, 'Cargador de M4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bans`
--

CREATE TABLE IF NOT EXISTS `bans` (
  `id_ban` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL DEFAULT '0',
  `AdminID` int(11) NOT NULL DEFAULT '0',
  `fecha` varchar(255) NOT NULL,
  `razon` text NOT NULL,
  `TipoBan` int(1) NOT NULL DEFAULT '1',
  `IP` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bans`
--

INSERT INTO `bans` (`id_ban`, `UsuarioID`, `AdminID`, `fecha`, `razon`, `TipoBan`, `IP`) VALUES
(1, 21, 17, '', 'Cheater.', 1, ''),
(2, 82, 37, '', 'cheater', 1, ''),
(3, 141, 37, '', 'adiós, y no vuelvas', 1, ''),
(4, 113, 37, '', 'te dije que no vuelvas', 1, ''),
(5, 73, 37, '', 'cheats', 1, ''),
(6, 176, 37, '', 'sali Lucas, no atomices', 1, ''),
(7, 177, 37, '', 'buen perro', 1, ''),
(8, 177, 37, '', 'buguear', 1, ''),
(9, 0, 37, '', 'trol', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `basuras`
--

CREATE TABLE IF NOT EXISTS `basuras` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `basuras`
--

INSERT INTO `basuras` (`id`, `x`, `y`, `z`) VALUES
(1, 2242.12, -1756.36, 13.5455),
(2, 2438.97, -1470.32, 24),
(3, 2454.19, -1279.95, 23.4079),
(4, 2110.98, -1099.08, 25.2322),
(5, 1839.24, -1311.29, 13.5478),
(6, 1816.93, -1558.09, 13.5212),
(7, 1813.79, -1904.14, 13.5707),
(8, 1461.59, -1487.72, 13.5469),
(9, 1383.17, -1132.61, 23.8281),
(10, 1293.04, -1030.18, 31.2339),
(11, 1033.33, -1031.29, 31.9929),
(12, 934.343, -1240.89, 16.4387),
(13, 1023.31, -1334.89, 13.5432),
(14, 1160.54, -1414.13, 13.5759),
(15, 1647.78, -1864.17, 13.5358),
(16, 1141.56, -1843.73, 13.545),
(17, 667.095, -1730.36, 13.6846),
(18, 741.776, -1089.49, 21.6763),
(19, 782.156, -1479.89, 13.6166),
(20, 982.204, -1574.62, 12.9465),
(21, 1349.42, -1590.05, 13.46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casas`
--

CREATE TABLE IF NOT EXISTS `casas` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `xx` float NOT NULL,
  `yy` float NOT NULL,
  `zz` float NOT NULL,
  `mx` float NOT NULL,
  `my` float NOT NULL,
  `mz` float NOT NULL,
  `ma` float NOT NULL,
  `int` int(11) NOT NULL DEFAULT '0',
  `int2` int(11) NOT NULL DEFAULT '0',
  `vw` int(11) NOT NULL DEFAULT '0',
  `vw2` int(11) NOT NULL DEFAULT '0',
  `Abierta` int(1) NOT NULL DEFAULT '0',
  `Comprada` int(1) NOT NULL DEFAULT '0',
  `Comprador` varchar(35) NOT NULL,
  `Alquilable` int(1) NOT NULL DEFAULT '0',
  `PAlquiler` int(11) NOT NULL DEFAULT '0',
  `Inquilinos` int(11) NOT NULL DEFAULT '0',
  `Precio` int(11) NOT NULL DEFAULT '25000',
  `Armario` int(1) NOT NULL DEFAULT '0',
  `Armas` varchar(35) NOT NULL DEFAULT '0,0,0,0,0',
  `Municiones` varchar(35) NOT NULL DEFAULT '0,0,0,0,0',
  `Cerradura` int(11) NOT NULL DEFAULT '0',
  `Alarma` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `casas`
--

INSERT INTO `casas` (`id`, `x`, `y`, `z`, `xx`, `yy`, `zz`, `mx`, `my`, `mz`, `ma`, `int`, `int2`, `vw`, `vw2`, `Abierta`, `Comprada`, `Comprador`, `Alquilable`, `PAlquiler`, `Inquilinos`, `Precio`, `Armario`, `Armas`, `Municiones`, `Cerradura`, `Alarma`) VALUES
(0, 2238.12, -1906.83, 14.9375, 386.939, 1471.88, 1080.19, 2238.22, -1905.02, 15.7436, 178.142, 0, 15, 0, 125, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(1, 2232.84, -1882.19, 14.2344, 386.939, 1471.88, 1080.19, 2231.42, -1882.12, 15.4573, 267.129, 0, 15, 0, 124, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(2, 2235.54, -1882.01, 14.2344, 386.939, 1471.88, 1080.19, 2237.04, -1882.92, 15.3644, 58.784, 0, 15, 0, 123, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(3, 2067.05, -1731.56, 14.2066, 386.939, 1471.88, 1080.19, 2068.86, -1731.44, 15.0625, 93.8777, 0, 15, 0, 122, 0, 1, 'Eazy_Jackson', 0, 0, 0, 95000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(4, 2066.24, -1717.05, 14.1363, 386.939, 1471.88, 1080.19, 2068.07, -1716.95, 14.9532, 93.8777, 0, 15, 0, 121, 0, 0, 'El Estado', 0, 0, 0, 95000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(5, 2065.1, -1703.53, 14.1484, 386.939, 1471.88, 1080.19, 2066.93, -1703.55, 14.815, 93.1246, 0, 15, 0, 120, 0, 1, 'Akquille_Raekwon', 0, 0, 0, 76000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(6, 1047, -1419.14, 13.5469, 23.9293, 1340.26, 1084.38, 1048.3, -1417.95, 14.6533, 132.12, 0, 10, 0, 10, 1, 0, 'El Estado', 0, 0, 0, 250000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(7, 1854.02, -1914.27, 15.2568, 223.162, 1287.12, 1082.14, 1853.93, -1916.06, 16.4289, 356.89, 0, 1, 0, 7, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(8, 1872.29, -1911.79, 15.2568, 223.162, 1287.12, 1082.14, 1872.2, -1913.34, 16.7208, 356.63, 0, 1, 0, 8, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(9, 1891.88, -1914.4, 15.2568, 223.162, 1287.12, 1082.14, 1891.85, -1916.16, 16.3598, 358.823, 0, 1, 0, 9, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(10, 1913.53, -1911.9, 15.2568, 223.162, 1287.12, 1082.14, 1913.54, -1913.59, 16.5865, 0.389165, 0, 1, 0, 10, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(11, 1928.73, -1915.9, 15.2568, 223.162, 1287.12, 1082.14, 1928.72, -1917.26, 16.7494, 359.484, 0, 1, 0, 11, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(12, 1938.54, -1911.38, 15.2568, 223.162, 1287.12, 1082.14, 1936.86, -1911.34, 16.5985, 268.616, 0, 1, 0, 12, 0, 0, 'El Estado', 0, 0, 0, 90000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(13, 1877.33, -1982.55, 13.5469, 328.108, 1477.84, 1084.44, 1879.02, -1982.6, 14.7716, 88.2993, 0, 15, 0, 13, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(14, 1888.93, -1982.6, 13.5469, 221.828, 1140.52, 1082.61, 1887.57, -1982.6, 14.6635, 270.011, 0, 4, 0, 14, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(15, 1867.81, -1985.4, 13.5469, 221.828, 1140.52, 1082.61, 1867.81, -1986.5, 14.6734, 359.916, 0, 4, 0, 15, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(16, 1867.74, -1998.07, 13.5469, 2333.22, -1077.32, 1049.02, 1867.79, -1996.3, 14.608, 178.204, 0, 6, 0, 16, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(17, 1866.02, -1998.09, 13.5469, 2333.22, -1077.32, 1049.02, 1866.06, -1997.14, 14.7106, 177.577, 0, 6, 0, 17, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(18, 1852.28, -1990.16, 13.5469, 221.828, 1140.52, 1082.61, 1854.06, -1990.2, 14.6404, 88.9027, 0, 4, 0, 18, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(19, 1852.33, -1991.96, 13.5469, 328.108, 1477.84, 1084.44, 1853.59, -1991.94, 14.6463, 91.096, 0, 15, 0, 19, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(20, 1865.98, -1985.46, 13.5469, 328.108, 1477.84, 1084.44, 1865.92, -1987.22, 14.7004, 358.059, 0, 15, 0, 20, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(21, 1858.97, -1982.63, 13.5469, 2333.22, -1077.32, 1049.02, 1857.37, -1982.7, 14.8052, 272.518, 0, 6, 0, 21, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(22, 1849.33, -1983.11, 13.5469, 2333.22, -1077.32, 1049.02, 1849.41, -1981.72, 14.8495, 176.974, 0, 6, 0, 22, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(23, 1835.24, -1977.67, 13.5469, 328.108, 1477.84, 1084.44, 1836.98, -1977.71, 14.7635, 88.6127, 0, 15, 0, 23, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(24, 1846.53, -1990.18, 13.5469, 221.828, 1140.52, 1082.61, 1845.09, -1990.2, 14.7956, 270.661, 0, 4, 0, 24, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(25, 1849.35, -2010.06, 13.5469, 221.828, 1140.52, 1082.61, 1849.32, -2008.46, 14.7965, 182.277, 0, 4, 0, 25, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(26, 1867.89, -2010.06, 13.5469, 328.108, 1477.84, 1084.44, 1867.91, -2008.87, 14.86, 179.144, 0, 15, 0, 26, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(27, 1867.71, -2003.87, 13.5469, 328.108, 1477.84, 1084.44, 1867.63, -2005.31, 14.7507, 356.782, 0, 15, 0, 27, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(28, 1870.76, -2019.65, 13.5469, 328.108, 1477.84, 1084.44, 1872.15, -2019.75, 14.7776, 85.1192, 0, 15, 0, 28, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(29, 1870.76, -2021.31, 13.5469, 2333.22, -1077.32, 1049.02, 1871.89, -2021.3, 14.7561, 90.7592, 0, 6, 0, 29, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(30, 1895.53, -2021.43, 13.5469, 2333.22, -1077.32, 1049.02, 1893.74, -2021.41, 14.5495, 269.338, 0, 6, 0, 30, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(31, 1898.46, -2010.06, 13.5469, 328.108, 1477.84, 1084.44, 1898.52, -2008.93, 14.7199, 176.59, 0, 15, 0, 31, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(32, 1898.56, -2003.84, 13.5469, 221.828, 1140.52, 1082.61, 1898.58, -2004.73, 14.6407, 0.83157, 0, 4, 0, 32, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(33, 1901.33, -2019.53, 13.5469, 221.828, 1140.52, 1082.61, 1902.29, -2019.53, 14.6179, 88.8557, 0, 4, 0, 33, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(34, 1913.96, -2021.44, 13.5469, 221.828, 1140.52, 1082.61, 1912.86, -2021.4, 14.6674, 268.061, 0, 4, 0, 34, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(35, 1907.68, -2035.04, 13.5469, 328.108, 1477.84, 1084.44, 1907.64, -2033.94, 14.6726, 182.206, 0, 15, 0, 35, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(36, 1906.02, -2035.08, 13.5469, -68.8769, 1351.61, 1080.21, 1906.04, -2034.14, 14.629, 178.76, 0, 6, 0, 36, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(37, 1898.41, -1998.06, 13.5469, 2333.22, -1077.32, 1049.02, 1898.43, -1997.26, 14.6053, 178.783, 0, 6, 0, 37, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(38, 1913.91, -1991.65, 13.5469, 328.108, 1477.84, 1084.44, 1912.96, -1991.66, 14.6431, 269.024, 0, 15, 0, 38, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(39, 1916.85, -2010.06, 13.5469, 221.828, 1140.52, 1082.61, 1916.94, -2008.8, 14.6996, 175.336, 0, 4, 0, 39, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(40, 1906.07, -2040.85, 13.5469, 2333.22, -1077.32, 1049.02, 1906.06, -2041.55, 14.6315, 358.928, 0, 6, 0, 40, 0, 0, 'El Estado', 0, 0, 0, 45000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(41, 1858.82, -2040.85, 13.5469, 2333.22, -1077.32, 1049.02, 1858.71, -2042.34, 14.6127, 355.795, 0, 6, 0, 41, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(42, 1857.02, -2035.08, 13.5469, 2333.22, -1077.32, 1049.02, 1856.99, -2033.71, 14.7749, 181.266, 0, 6, 0, 42, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(43, 1863.9, -1597.29, 14.3062, 2270.39, -1210.28, 1047.56, 1863.86, -1599.05, 15.4985, 358.757, 0, 10, 0, 43, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(44, 1909.91, -1597.41, 14.3062, 2270.39, -1210.28, 1047.56, 1909.71, -1599.13, 15.5237, 353.51, 0, 10, 0, 44, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(45, 1848.15, -1593.66, 19.1245, -68.8769, 1351.61, 1080.21, 1846.45, -1593.73, 20.4897, 272.379, 0, 6, 0, 45, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(46, 1848.15, -1593.8, 23.8835, -68.8769, 1351.61, 1080.21, 1846.39, -1594.04, 24.9973, 277.73, 0, 6, 0, 46, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(47, 1497.02, -687.891, 95.5633, 2324.11, -1149.54, 1050.71, 1497.02, -687.631, 96.4542, 175.244, 0, 12, 6, 47, 0, 0, 'El Estado', 0, 0, 0, 450000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(48, 1326.26, -1090.57, 27.9766, 2270.39, -1210.28, 1047.56, 1329.09, -1094.2, 29.0791, 40.519, 0, 10, 0, 48, 0, 0, 'El Estado', 0, 0, 0, 230000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(49, 1325.95, -1067.79, 31.5547, 2270.39, -1210.28, 1047.56, 1327.7, -1067.74, 32.6702, 90.1139, 0, 10, 0, 49, 0, 0, 'El Estado', 0, 0, 0, 230000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(50, 1285.26, -1067.23, 31.6789, 2270.39, -1210.28, 1047.56, 1283.73, -1067.05, 33.2273, 272.093, 0, 10, 0, 50, 0, 0, 'El Estado', 0, 0, 0, 230000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(51, 1285.26, -1090.18, 28.2578, 2270.39, -1210.28, 1047.56, 1283.53, -1090.15, 29.4421, 270.213, 0, 10, 0, 51, 0, 0, 'El Estado', 0, 0, 0, 230000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(52, 1242.26, -1099.46, 27.9766, 2270.39, -1210.28, 1047.56, 1244, -1099.61, 29.1628, 85.0315, 0, 10, 0, 52, 0, 0, 'El Estado', 0, 0, 0, 230000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(53, 1241.95, -1076.49, 31.5547, 2270.39, -1210.28, 1047.56, 1243.64, -1076.47, 32.8308, 92.5516, 0, 10, 0, 53, 0, 0, 'El Estado', 0, 0, 0, 230000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(54, 1183.47, -1076.16, 31.6789, 2270.39, -1210.28, 1047.56, 1181.88, -1076.16, 33.1247, 269.877, 0, 10, 0, 54, 0, 0, 'El Estado', 0, 0, 0, 230000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(55, 1183.48, -1098.86, 28.2578, 2270.39, -1210.28, 1047.56, 1181.67, -1098.68, 29.1503, 268.31, 0, 10, 0, 55, 0, 0, 'El Estado', 0, 0, 0, 230000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(56, 1142.12, -1092.96, 28.1875, 2270.39, -1210.28, 1047.56, 1143.86, -1093, 29.3718, 88.7681, 0, 10, 0, 56, 0, 0, 'El Estado', 0, 0, 0, 230000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(57, 1141.81, -1070.05, 31.7656, 2270.39, -1210.28, 1047.56, 1143.42, -1070.12, 33.2143, 87.5148, 0, 10, 0, 57, 0, 0, 'El Estado', 0, 0, 0, 230000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(58, 1103.39, -1069.47, 31.8899, 2270.39, -1210.28, 1047.56, 1101.7, -1069.28, 33.2103, 263.61, 0, 10, 0, 58, 0, 0, 'El Estado', 0, 0, 0, 230000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(59, 1103.4, -1092.5, 28.4688, 2270.39, -1210.28, 1047.56, 1101.71, -1092.55, 29.7566, 271.757, 0, 10, 0, 59, 0, 0, 'El Estado', 0, 0, 0, 230000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(60, 1128.03, -1021.17, 34.9922, 234.441, 1064.21, 1084.21, 1128.09, -1022.82, 36.3989, 2.20318, 0, 6, 0, 60, 0, 0, 'El Estado', 0, 0, 0, 290000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(61, 1118.09, -1021.17, 34.9922, 234.441, 1064.21, 1084.21, 1118.16, -1023.01, 35.8063, 2.25108, 0, 6, 0, 61, 0, 0, 'El Estado', 0, 0, 0, 360000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(62, 2192.47, -1815.23, 13.5469, -42.5718, 1405.47, 1084.43, 2192.48, -1813.55, 14.4681, 177.223, 0, 8, 0, 62, 1, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(63, 2185.81, -1815.23, 13.5469, 223.162, 1287.12, 1082.14, 2185.75, -1813.41, 14.0064, 182.705, 0, 1, 0, 63, 1, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(64, 2176.42, -1815.22, 13.5469, 223.162, 1287.12, 1082.14, 2177.03, -1813.79, 14.4927, 157.012, 0, 1, 0, 64, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(65, 2168.95, -1815.23, 13.5469, -68.8769, 1351.61, 1080.21, 2169.56, -1813.79, 14.4927, 157.012, 0, 6, 0, 65, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(66, 2162.67, -1815.23, 13.5469, 223.162, 1287.12, 1082.14, 2162.89, -1813.52, 14.4796, 172.679, 0, 1, 0, 66, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(67, 2155.94, -1815.22, 13.5469, 223.162, 1287.12, 1082.14, 2156.39, -1813.44, 14.3785, 165.785, 0, 1, 0, 67, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(68, 2151.04, -1815.11, 13.5498, -42.5718, 1405.47, 1084.43, 2152.7, -1814.92, 14.4719, 96.5379, 0, 8, 0, 68, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(69, 2151.05, -1807.87, 13.5463, -42.5718, 1405.47, 1084.43, 2152.86, -1808.01, 14.3358, 76.7977, 0, 8, 0, 69, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(70, 2145.02, -1801.77, 16.1406, -42.5718, 1405.47, 1084.43, 2145.07, -1803.32, 17.7386, 1.59704, 0, 8, 0, 70, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(71, 2140.93, -1801.89, 16.1475, 223.162, 1287.12, 1082.14, 2142.68, -1801.84, 17.3303, 91.5245, 0, 1, 0, 71, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(72, 2146.52, -1808.54, 16.1406, -68.8769, 1351.61, 1080.21, 2148.11, -1808.54, 17.0495, 79.6177, 0, 6, 0, 72, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(73, 2146.47, -1814.98, 16.1406, 223.162, 1287.12, 1082.14, 2148.29, -1814.66, 16.7802, 99.9846, 0, 1, 0, 73, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(74, 1173.79, -964.088, 42.9375, 260.543, 1237.24, 1084.26, 1172.23, -963.209, 43.8244, 238.668, 0, 9, 0, 74, 1, 0, 'El Estado', 0, 0, 0, 360000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(75, 1093.88, -807.143, 107.42, 376.786, 1417.32, 1081.33, 1093.59, -805.455, 108.678, 189.582, 0, 15, 0, 75, 1, 0, 'El Estado', 0, 0, 0, 1100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(76, -76.1569, -1581.09, 3.4375, 2511.53, -1754.86, 778.998, -74.4594, -1579.71, 5.3049, 129.093, 0, 1, 0, 76, 1, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(77, -75.3547, -1598.11, 2.61719, 2511.53, -1754.86, 778.998, -76.4906, -1599.59, 3.5626, 322.942, 0, 1, 0, 77, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(78, -91.2067, -1592.59, 3.00431, 2511.53, -1754.86, 778.998, -90.3224, -1592.04, 3.8141, 121.803, 0, 1, 0, 78, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(79, -102.449, -1575.96, 2.61719, 2511.53, -1754.86, 778.998, -103.864, -1574.73, 3.5002, 230.531, 0, 1, 0, 79, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(80, -89.1803, -1564.47, 3.00431, 2511.53, -1754.86, 778.998, -88.2681, -1565.34, 3.7656, 46.6261, 0, 1, 0, 80, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(81, -68.6882, -1545.74, 3.00431, 2511.53, -1754.86, 778.998, -69.3785, -1546.64, 3.8015, 322.652, 0, 1, 0, 81, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(82, -55.9984, -1555.84, 2.61072, 2511.53, -1754.86, 778.998, -57.4154, -1554.59, 3.4534, 228.651, 0, 1, 0, 82, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(83, -65.0919, -1573.87, 2.61072, 2511.53, -1754.86, 778.998, -64.6785, -1575.69, 3.5351, 12.7624, 0, 1, 0, 83, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(84, 946.307, -710.686, 122.62, 386.939, 1471.88, 1080.19, 945.426, -709.064, 123.686, 208.509, 0, 15, 0, 84, 1, 0, 'El Estado', 0, 0, 0, 740000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(85, 1295.4, 174.512, 20.9106, 2511.53, -1754.86, 778.998, 1293.73, 175.277, 21.687, 245.301, 0, 1, 0, 85, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(86, 1283.31, 158.381, 20.7934, 2511.53, -1754.86, 778.998, 1284.3, 158.6, 21.4243, 102.42, 0, 1, 0, 86, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(87, 1311.83, 169.552, 20.6311, 2511.53, -1754.86, 778.998, 1312.28, 171.31, 21.5991, 165.714, 0, 1, 0, 87, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(88, 1315.64, 180.195, 20.5546, 2511.53, -1754.86, 778.998, 1317.45, 179.863, 21.2507, 79.5696, 0, 1, 0, 88, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(89, 1303.67, 186.135, 20.5389, 2511.53, -1754.86, 778.998, 1302.9, 187.778, 21.5579, 205.217, 0, 1, 0, 89, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(90, 1300.43, 193.271, 20.5233, 2511.53, -1754.86, 778.998, 1301.14, 191.63, 21.5268, 23.4823, 0, 1, 0, 90, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(91, 1294.51, 157.643, 20.578, 2511.53, -1754.86, 778.998, 1292.76, 157.212, 21.5521, 283.865, 0, 1, 0, 91, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(92, 1468.57, -906.184, 54.8359, 260.866, 1284.57, 1080.26, 1468.61, -904.791, 56.6277, 178.747, 0, 4, 0, 92, 0, 0, 'El Estado', 0, 0, 0, 350000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(93, 1540.47, -851.453, 64.3361, 260.543, 1237.24, 1084.26, 1538.77, -851.413, 65.6139, 268.645, 0, 9, 0, 93, 0, 0, 'El Estado', 0, 0, 0, 320000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(94, 1527.83, -772.59, 80.5781, 260.543, 1237.24, 1084.26, 1526.56, -773.782, 81.769, 313.343, 0, 9, 0, 94, 0, 0, 'El Estado', 0, 0, 0, 320000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(95, 1034.77, -813.201, 101.852, 446.898, 1397.07, 1084.3, 1034.23, -811.583, 103.128, 198.36, 0, 2, 0, 95, 0, 0, 'El Estado', 0, 0, 0, 450000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(96, 2587.4, -1238.08, 48.5644, 223.162, 1287.12, 1082.14, 2585.77, -1238, 50.0177, 267.293, 0, 1, 0, 96, 1, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(97, 2587.4, -1233.61, 49.9621, 2333.22, -1077.32, 1049.02, 2585.59, -1233.69, 50.8829, 272.623, 0, 6, 0, 97, 1, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(98, 2587.4, -1229.3, 51.1906, 223.162, 1287.12, 1082.14, 2585.84, -1229.26, 52.3805, 270.743, 0, 1, 0, 98, 1, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(99, 2587.4, -1224.79, 52.4771, 2333.22, -1077.32, 1049.02, 2585.68, -1224.75, 53.7261, 268.55, 0, 6, 0, 99, 1, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(100, 2587.39, -1220.58, 53.7654, 223.162, 1287.12, 1082.14, 2585.67, -1220.54, 55.019, 268.55, 0, 1, 0, 100, 1, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(101, 2587.4, -1216.35, 55.1144, 2333.22, -1077.32, 1049.02, 2585.68, -1216.31, 56.3633, 268.55, 0, 6, 0, 101, 1, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(102, 2587.4, -1211.79, 56.5144, 223.162, 1287.12, 1082.14, 2585.68, -1211.74, 57.7636, 268.55, 0, 1, 0, 102, 1, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(103, 2587.4, -1207.62, 57.6515, 2333.22, -1077.32, 1049.02, 2585.68, -1207.58, 58.9006, 268.55, 0, 6, 0, 103, 1, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(104, 2587.39, -1203.13, 58.576, 223.162, 1287.12, 1082.14, 2585.57, -1203.24, 59.4592, 273.563, 0, 1, 0, 104, 1, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(105, 2587.39, -1200.17, 59.3578, 2333.22, -1077.32, 1049.02, 2585.57, -1200.29, 60.2419, 273.563, 0, 6, 0, 105, 1, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(106, 2551.03, -1233.79, 49.3318, 260.543, 1237.24, 1084.26, 2551.02, -1235.62, 49.7343, 1.77465, 0, 9, 0, 106, 0, 1, 'Nahuel_Bosch', 0, 0, 1, 115000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(107, 1546.31, 32.3501, 24.1406, 226.614, 1240.03, 1082.14, 1548.08, 32.7133, 25.0539, 100.038, 0, 2, 0, 107, 0, 1, 'Mark_Hawes', 0, 0, 0, 50000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(108, 2178.34, -1660.2, 14.9783, -68.8769, 1351.61, 1080.21, 2179.68, -1661.38, 15.9876, 48.7153, 0, 6, 0, 108, 1, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(109, 2166.02, -1671.11, 15.0732, 260.543, 1237.24, 1084.26, 2167.33, -1672.37, 15.9454, 45.8953, 0, 9, 0, 109, 1, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(110, 2144.53, -1688.9, 15.0859, -68.8769, 1351.61, 1080.21, 2144.7, -1687.07, 15.5153, 174.677, 0, 6, 0, 110, 1, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(111, 2128.04, -1688, 15.0859, -68.8769, 1351.61, 1080.21, 2127.88, -1686.19, 15.9473, 185.017, 0, 6, 0, 111, 1, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(112, 2016.54, -1641.65, 14.1129, 2270.39, -1210.28, 1047.56, 2016.64, -1640.46, 15.1355, 184.109, 0, 10, 0, 112, 0, 1, 'James_Mahoney', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(113, 2018.06, -1629.95, 14.0426, 83.3735, 1322.29, 1083.87, 2016.29, -1629.82, 15.1225, 262.943, 0, 9, 0, 113, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(114, 1122.71, -2036.99, 69.8943, 225.763, 1021.71, 1084.02, 1124.48, -2036.92, 70.9552, 86.7504, 0, 7, 0, 114, 0, 1, 'Josh_Hawes', 0, 0, 0, 2000000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(115, 746.407, 304.975, 20.2344, 223.162, 1287.12, 1082.14, 748.214, 304.889, 20.9891, 86.9582, 0, 1, 0, 115, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(116, 747.175, 278.132, 27.2188, 223.162, 1287.12, 1082.14, 749.032, 278.624, 28.3416, 104.818, 0, 1, 0, 116, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(117, 747.984, 257.233, 27.0859, 223.162, 1287.12, 1082.14, 748.125, 258.951, 28.1249, 175.319, 0, 1, 0, 117, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(118, 748.403, 350.881, 20.5858, 2511.53, -1754.86, 778.998, 749.261, 349.294, 21.5827, 28.3877, 0, 1, 0, 118, 1, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(119, 772.925, 348.243, 20.1527, 223.162, 1287.12, 1082.14, 771.152, 347.921, 21.0945, 280.29, 0, 1, 0, 119, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(120, 1973.09, -1559.72, 13.6399, 223.162, 1287.12, 1082.14, 1974.54, -1560.75, 14.719, 56.9788, 0, 1, 0, 120, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(121, 1958.69, -1560.38, 13.5944, 223.162, 1287.12, 1082.14, 1960.14, -1561.76, 14.5272, 46.3254, 0, 1, 0, 121, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(122, 1967.47, -1633.71, 18.569, 266.503, 304.816, 999.148, 1967.48, -1635.47, 19.6762, 4.675, 0, 2, 0, 122, 1, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(123, 1972.25, -1633.71, 18.569, 266.503, 304.816, 999.148, 1972.17, -1635.52, 19.4601, 355.233, 0, 2, 0, 123, 1, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(124, 1967.43, -1633.71, 15.9688, 266.503, 304.816, 999.148, 1967.2, -1635.54, 16.7354, 359.562, 0, 2, 0, 124, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(125, 1972.32, -1633.71, 15.9688, 266.503, 304.816, 999.148, 1972.23, -1635.54, 16.6842, 0.814933, 0, 2, 0, 125, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(126, 1969.4, -1654.67, 15.9688, 223.162, 1287.12, 1082.14, 1969.32, -1656.47, 16.7026, 357.368, 0, 1, 0, 126, 0, 0, 'El Estado', 0, 0, 0, 50000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(127, 1973.32, -1654.67, 15.9688, 223.162, 1287.12, 1082.14, 1973.23, -1656.49, 16.7043, 357.368, 0, 1, 0, 127, 0, 0, 'El Estado', 0, 0, 0, 50000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(128, 1969.95, -1671.19, 15.9688, 266.503, 304.816, 999.148, 1969.87, -1673.03, 16.7956, 359.875, 0, 2, 0, 128, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(129, 1974.81, -1671.19, 15.9688, 266.503, 304.816, 999.148, 1974.73, -1673.01, 16.7937, 357.368, 0, 2, 0, 129, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(130, 1974.78, -1671.19, 18.5456, 266.503, 304.816, 999.148, 1974.69, -1673.01, 19.3808, 357.995, 0, 2, 0, 130, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(131, 1969.95, -1671.19, 18.5456, 266.503, 304.816, 999.148, 1969.86, -1672.96, 19.374, 357.055, 0, 2, 0, 131, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(132, 1969.25, -1705.14, 15.9688, 223.162, 1287.12, 1082.14, 1969.16, -1706.6, 16.7416, 356.452, 0, 1, 0, 132, 0, 0, 'El Estado', 0, 0, 0, 50000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(133, 1973.33, -1705.14, 15.9688, 223.162, 1287.12, 1082.14, 1973.24, -1706.6, 16.7416, 356.452, 0, 1, 0, 133, 0, 0, 'El Estado', 0, 0, 0, 50000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(134, 2013.58, -1656.41, 14.1363, 260.543, 1237.24, 1084.26, 2011.76, -1656.4, 14.9815, 269.728, 0, 9, 0, 134, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(135, 2018.24, -1703.28, 14.2344, 260.543, 1237.24, 1084.26, 2016.42, -1703.29, 15.0301, 270.166, 0, 9, 0, 135, 0, 0, 'El Estado', 0, 0, 0, 95000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(136, 2016.2, -1717.03, 14.125, 260.543, 1237.24, 1084.26, 2014.35, -1717.04, 14.8113, 271.129, 0, 9, 0, 136, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(137, 2015.35, -1732.56, 14.2344, 260.543, 1237.24, 1084.26, 2013.51, -1732.52, 14.8801, 267.682, 0, 9, 0, 137, 0, 0, 'El Estado', 0, 0, 0, 95000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(138, 1980.38, -1718.88, 17.0303, 23.9293, 1340.26, 1084.38, 1982.12, -1718.92, 18.0325, 88.7673, 0, 10, 0, 138, 1, 0, 'El Estado', 0, 0, 0, 90000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(139, 1980.99, -1682.81, 17.0537, 23.9293, 1340.26, 1084.38, 1982.79, -1682.9, 17.775, 89.9503, 0, 10, 0, 139, 0, 0, 'El Estado', 0, 0, 0, 90000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(140, 1986.69, -1604.95, 13.5321, 266.503, 304.816, 999.148, 1988.11, -1606.05, 14.2824, 52.3733, 0, 2, 0, 140, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(141, 2002.41, -1594, 13.5775, 266.503, 304.816, 999.148, 2003.64, -1595.36, 14.3205, 42.6834, 0, 2, 0, 141, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(142, 2066.74, -1656.48, 14.1328, -68.8769, 1351.61, 1080.21, 2068.56, -1656.56, 15.0469, 87.0779, 0, 6, 0, 142, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(143, 2140.61, -1708.31, 15.0859, -68.8769, 1351.61, 1080.21, 2140.77, -1706.49, 15.9282, 181.079, 0, 6, 0, 143, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(144, 2139.25, -1697.51, 15.0859, -68.8769, 1351.61, 1080.21, 2139.38, -1699.31, 16.0881, 4.09046, 0, 6, 0, 144, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(145, 2155.64, -1698.51, 15.0859, -68.8769, 1351.61, 1080.21, 2155.55, -1700.32, 15.9777, 357.51, 0, 6, 0, 145, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(146, 2157.15, -1709.22, 15.0859, -68.8769, 1351.61, 1080.21, 2157.17, -1707.36, 16.0043, 179.536, 0, 6, 0, 146, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(147, 2307.68, -1785.81, 13.5565, 266.503, 304.816, 999.148, 2305.88, -1785.66, 14.5192, 265.366, 0, 2, 0, 147, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(148, 2290.14, -1795.96, 13.5469, 266.503, 304.816, 999.148, 2291.98, -1796, 14.2799, 88.9577, 0, 2, 0, 148, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(149, 2321.96, -1796, 13.5469, 266.503, 304.816, 999.148, 2323.77, -1796.05, 14.4479, 88.0411, 0, 2, 0, 149, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(150, 2345.58, -1785.81, 13.5469, 266.503, 304.816, 999.148, 2343.76, -1785.88, 14.3883, 272.259, 0, 2, 0, 150, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(151, 2308.88, -1714.33, 14.9801, 2333.22, -1077.32, 1049.02, 2309.09, -1716.15, 15.6618, 6.57364, 0, 6, 0, 151, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(152, 2326.76, -1716.7, 14.2379, 2333.22, -1077.32, 1049.02, 2326.59, -1718.52, 15.0395, 355.92, 0, 6, 0, 152, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(153, 2385.36, -1711.66, 14.2422, 2333.22, -1077.32, 1049.02, 2385.39, -1713.46, 15.2135, 358.137, 0, 6, 0, 153, 0, 0, 'El Estado', 0, 0, 0, 90000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(154, 2380.68, -1785.68, 13.5469, -68.8769, 1351.61, 1080.21, 2378.88, -1785.61, 14.4676, 267.92, 0, 6, 0, 154, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(155, 2359.86, -1795.96, 13.5469, -68.8769, 1351.61, 1080.21, 2361.8, -1796.06, 14.6633, 88.3779, 0, 6, 0, 155, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(156, 2473.1, -1410.34, 29.3131, 328.108, 1477.84, 1084.44, 2473.08, -1408.54, 30.2938, 178.932, 0, 15, 0, 156, 1, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(157, 2476.26, -1410.34, 29.3131, 328.108, 1477.84, 1084.44, 2476.31, -1408.49, 30.0601, 177.124, 0, 15, 0, 157, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(158, 2476.36, -1398.81, 29.3131, 328.108, 1477.84, 1084.44, 2476.3, -1400.6, 30.3374, 358.233, 0, 15, 0, 158, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(159, 2473.19, -1398.81, 29.3131, 328.108, 1477.84, 1084.44, 2473.25, -1400.63, 30.1991, 1.67923, 0, 15, 0, 159, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(160, 2468.36, -1398.81, 29.3131, 328.108, 1477.84, 1084.44, 2468.2, -1400.58, 30.4056, 354.786, 0, 15, 0, 160, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(161, 2487.38, -1398.81, 29.3131, 328.108, 1477.84, 1084.44, 2487.36, -1400.55, 30.5093, 359.486, 0, 15, 0, 161, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(162, 2487.26, -1410.34, 29.3131, -68.8769, 1351.61, 1080.21, 2487.18, -1408.53, 30.1485, 182.451, 0, 6, 0, 162, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(163, 2492.13, -1410.34, 29.3131, -68.8769, 1351.61, 1080.21, 2492.12, -1408.51, 30.1194, 180.571, 0, 6, 0, 163, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(164, 2495.25, -1410.34, 29.3131, -68.8769, 1351.61, 1080.21, 2495.23, -1408.51, 30.1194, 180.571, 0, 6, 0, 164, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(165, 2492.13, -1398.81, 29.3131, -68.8769, 1351.61, 1080.21, 2491.98, -1400.6, 30.2968, 355.099, 0, 6, 0, 165, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(166, 2495.41, -1398.82, 29.3131, -68.8769, 1351.61, 1080.21, 2495.25, -1400.63, 30.3432, 355.413, 0, 6, 0, 166, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(167, 2476.29, -1391.71, 29.3131, -68.8769, 1351.61, 1080.21, 2476.32, -1389.84, 30.4055, 179.341, 0, 6, 0, 167, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(168, 2473.08, -1391.71, 29.3131, -68.8769, 1351.61, 1080.21, 2473.06, -1389.91, 30.2673, 180.594, 0, 6, 0, 168, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(169, 2468.27, -1391.71, 29.3131, -68.8769, 1351.61, 1080.21, 2468.26, -1389.9, 30.2278, 176.834, 0, 6, 0, 169, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(170, 2468.4, -1383.38, 29.3131, -68.8769, 1351.61, 1080.21, 2468.34, -1385.19, 30.2809, 358.233, 0, 6, 0, 170, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(171, 2473.14, -1383.37, 29.3131, -68.8769, 1351.61, 1080.21, 2472.99, -1385.2, 30.1401, 355.099, 0, 6, 0, 171, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(172, 2476.37, -1383.37, 29.3131, -68.8769, 1351.61, 1080.21, 2476.27, -1385.18, 30.218, 356.039, 0, 6, 0, 172, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(173, 2487.32, -1383.37, 29.3131, -68.8769, 1351.61, 1080.21, 2487.04, -1385.14, 30.3472, 354.786, 0, 6, 0, 173, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(174, 2487.27, -1391.71, 29.3131, -68.8769, 1351.61, 1080.21, 2487.36, -1388.02, 29.9513, 178.691, 0, 6, 0, 174, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(175, 2492.05, -1391.71, 29.3131, -68.8769, 1351.61, 1080.21, 2492.09, -1389.89, 30.1684, 179.004, 0, 6, 0, 175, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(176, 2492.11, -1383.37, 29.3131, -68.8769, 1351.61, 1080.21, 2492, -1385.2, 30.1191, 356.353, 0, 6, 0, 176, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(177, 2495.43, -1383.37, 29.3131, -68.8769, 1351.61, 1080.21, 2495.3, -1385.2, 29.9786, 1.99272, 0, 6, 0, 177, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(178, 2495.37, -1391.71, 29.3131, -68.8769, 1351.61, 1080.21, 2495.49, -1389.88, 30.0291, 176.184, 0, 6, 0, 178, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(179, 2439.59, -1357.1, 24.1004, 2365.02, -1135.31, 1050.88, 2441.4, -1357.33, 25.0173, 87.5334, 0, 8, 0, 179, 1, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(180, 2439.59, -1338.86, 24.1016, 2365.02, -1135.31, 1050.88, 2441.41, -1338.95, 24.9238, 87.0638, 0, 8, 0, 180, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(181, 2467.63, -1200.41, 36.8117, 2365.02, -1135.31, 1050.88, 2467.65, -1198.62, 37.8001, 179.32, 0, 8, 0, 181, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(182, 2472.88, -1238.12, 32.5695, 2365.02, -1135.31, 1050.88, 2472.79, -1239.96, 33.2907, 357.295, 0, 8, 0, 182, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(183, 2492.08, -1239.01, 37.9054, 2365.02, -1135.31, 1050.88, 2492, -1240.84, 38.5557, 355.705, 0, 8, 0, 183, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(184, 2536.89, -1235.61, 43.7219, 23.9293, 1340.26, 1084.38, 2536.88, -1233.8, 44.6524, 180.55, 0, 10, 0, 184, 0, 0, 'El Estado', 1, 3000, 1, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(185, 2510.57, -1132.64, 41.6207, 386.939, 1471.88, 1080.19, 2508.75, -1132.45, 42.2008, 263.897, 0, 15, 0, 185, 1, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(186, 2488.03, -1135.24, 39.5859, 2365.02, -1135.31, 1050.88, 2487.91, -1137.04, 40.5653, 356.237, 0, 8, 0, 186, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(187, 2427.39, -1135.77, 34.7109, 386.939, 1471.88, 1080.19, 2427.42, -1137.56, 35.7577, 0.937325, 0, 15, 0, 187, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(188, 2394.9, -1133.54, 30.7188, 2365.02, -1135.31, 1050.88, 2394.83, -1135.38, 31.4277, 357.491, 0, 8, 0, 188, 0, 0, 'El Estado', 0, 0, 0, 90000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(189, 2188.69, -1081.63, 43.8349, 226.614, 1240.03, 1082.14, 2190.13, -1082.77, 44.6656, 51.3845, 0, 2, 0, 189, 1, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(190, 2221.2, -1083.1, 41.7798, 226.614, 1240.03, 1082.14, 2219.64, -1084.1, 42.5349, 302.983, 0, 2, 0, 190, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(191, 2145.29, -1084.69, 25.0368, 226.614, 1240.03, 1082.14, 2144.55, -1086.36, 25.8004, 336.196, 0, 2, 0, 191, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(192, 2140.66, -1082.54, 25.0361, 226.614, 1240.03, 1082.14, 2139.98, -1084.24, 25.8905, 338.39, 0, 2, 0, 192, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(193, 2108.8, -1082.34, 25.4914, 223.162, 1287.12, 1082.14, 2110.05, -1080.99, 26.1643, 137.251, 0, 1, 0, 193, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(194, 2101.58, -1075.83, 25.9306, 223.162, 1287.12, 1082.14, 2102.69, -1074.37, 26.725, 142.265, 0, 1, 0, 194, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(195, 2091.61, -1068.22, 28.0854, 223.162, 1287.12, 1082.14, 2092.87, -1066.92, 28.9077, 135.998, 0, 1, 0, 195, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(196, 2105.54, -1056.08, 27.1445, 223.162, 1287.12, 1082.14, 2104.43, -1057.53, 27.887, 322.723, 0, 1, 0, 196, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(197, 2099.86, -1051.77, 28.8154, 226.614, 1240.03, 1082.14, 2098.75, -1053.23, 29.5588, 322.723, 0, 2, 0, 197, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(198, 2093.83, -1047.36, 30.1081, 226.614, 1240.03, 1082.14, 2092.73, -1048.82, 30.8711, 323.036, 0, 2, 0, 198, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(199, 2083.13, -1039.72, 32.2086, 223.162, 1287.12, 1082.14, 2082.16, -1041.26, 33.0015, 327.736, 0, 1, 0, 199, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(200, 2287.53, -1081.06, 48.2459, 223.162, 1287.12, 1082.14, 2288.22, -1079.4, 49.2588, 153.568, 0, 1, 0, 200, 0, 0, 'El Estado', 0, 0, 0, 45000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(201, 2278.8, -1077.44, 48.2402, 223.162, 1287.12, 1082.14, 2279.54, -1075.76, 49.1055, 156.388, 0, 1, 0, 201, 0, 0, 'El Estado', 0, 0, 0, 45000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(202, 2284.16, -1046.08, 49.8871, 2511.53, -1754.86, 778.998, 2283.63, -1047.03, 50.6876, 330.603, 0, 1, 0, 202, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(203, 2297.68, -1053.06, 49.934, 2511.53, -1754.86, 778.998, 2296.96, -1054.73, 50.7369, 336.557, 0, 1, 0, 203, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(204, 2319.75, -1053.25, 52.4608, 2511.53, -1754.86, 778.998, 2318.02, -1053.87, 53.2759, 289.556, 0, 1, 0, 204, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(205, 2335.14, -1046.01, 52.5529, 2511.53, -1754.86, 778.998, 2335.26, -1044.49, 53.3234, 175.212, 0, 1, 0, 205, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(206, 2362.65, -1046.43, 54.2733, 2511.53, -1754.86, 778.998, 2363.46, -1048.06, 55.1666, 26.4007, 0, 1, 0, 206, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(207, 2370.28, -1034.55, 54.4106, 2511.53, -1754.86, 778.998, 2370.34, -1036.37, 55.2739, 1.96044, 0, 1, 0, 207, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(208, 2389.26, -1037.04, 53.5472, 223.162, 1287.12, 1082.14, 2390.51, -1038.29, 54.4916, 41.4408, 0, 1, 0, 208, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(209, 2440.57, -1057.34, 54.7387, 223.162, 1287.12, 1082.14, 2440.55, -1055.64, 55.4343, 180.852, 0, 1, 0, 209, 0, 0, 'El Estado', 0, 0, 0, 40000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(210, 2249.28, -1060.27, 55.9688, 226.614, 1240.03, 1082.14, 2250.48, -1058.87, 56.7542, 139.515, 0, 2, 0, 210, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(211, 2259.44, -1019.09, 59.2973, 260.543, 1237.24, 1084.26, 2260.79, -1020.3, 59.9494, 48.9609, 0, 9, 0, 211, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(212, 2218.79, -1031.73, 60.2686, 226.614, 1240.03, 1082.14, 2219.78, -1030.17, 60.9017, 147.348, 0, 2, 0, 212, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(213, 2208.04, -1026.57, 61.3511, 226.614, 1240.03, 1082.14, 2208.85, -1024.91, 62.0552, 153.928, 0, 2, 0, 213, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(214, 2154.12, -979.872, 63.2934, 2511.53, -1754.86, 778.998, 2152.42, -979.48, 63.8673, 256.993, 0, 1, 0, 214, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(215, 2142.69, -978.143, 61.3793, 2511.53, -1754.86, 778.998, 2143.7, -978.397, 62.2001, 75.8844, 0, 1, 0, 215, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(216, 2131.93, -974.077, 59.7856, 2511.53, -1754.86, 778.998, 2130.68, -973.794, 60.557, 257.283, 0, 1, 0, 216, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(217, 2122.07, -970.252, 58.2074, 2511.53, -1754.86, 778.998, 2123.4, -970.519, 58.9362, 78.7045, 0, 1, 0, 217, 0, 0, 'El Estado', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(218, 2139.77, -1008.43, 61.9851, 2270.39, -1210.28, 1047.56, 2140.13, -1006.6, 62.6694, 169.235, 0, 10, 0, 218, 1, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(219, 2108.94, -1000.79, 60.5078, 2270.39, -1210.28, 1047.56, 2109.46, -999.041, 61.4219, 159.254, 0, 10, 0, 219, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(220, 2066.09, -993.179, 48.7995, 235.442, 1186.78, 1080.26, 2066.52, -991.423, 49.3624, 166.147, 0, 3, 0, 220, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(221, 2049.14, -987.279, 44.9796, 2270.39, -1210.28, 1047.56, 2049.13, -985.426, 45.796, 180.247, 0, 10, 0, 221, 0, 0, 'El Estado', 0, 0, 0, 95000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(222, 2015.44, -977.648, 36.9531, 226.614, 1240.03, 1082.14, 2016.2, -979.333, 37.7283, 24.229, 0, 2, 0, 222, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(223, 2007.41, -984.535, 34.4609, -68.8769, 1351.61, 1080.21, 2008.8, -985.641, 35.4379, 51.4893, 0, 6, 0, 223, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(224, 2000.29, -991.57, 32.1314, -68.8769, 1351.61, 1080.21, 2001.67, -992.672, 33.1071, 51.4893, 0, 6, 0, 224, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(225, 1954.38, -1074.97, 24.7967, -68.8769, 1351.61, 1080.21, 1956.16, -1075.3, 25.7901, 78.1696, 0, 6, 0, 225, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(226, 1959.6, -1069.96, 24.7967, -68.8769, 1351.61, 1080.21, 1957.83, -1069.6, 25.8225, 258.941, 0, 6, 0, 226, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(227, 1939.25, -1066.58, 24.4184, -68.8769, 1351.61, 1080.21, 1937.42, -1066.34, 25.1728, 262.411, 0, 6, 0, 227, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(228, 1934.06, -1071.43, 24.4157, -68.8769, 1351.61, 1080.21, 1935.89, -1071.7, 25.2212, 81.6163, 0, 6, 0, 228, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(229, 1912.61, -1070.6, 24.2368, -68.8769, 1351.61, 1080.21, 1914.42, -1070.69, 25.1191, 87.2564, 0, 6, 0, 229, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(230, 1916.89, -1064.8, 24.1247, -68.8769, 1351.61, 1080.21, 1915.12, -1064.94, 25.174, 274.295, 0, 6, 0, 230, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(231, 1896.05, -1064.72, 23.9375, -68.8769, 1351.61, 1080.21, 1894.23, -1064.78, 24.9124, 271.811, 0, 6, 0, 231, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(232, 1891.77, -1070.58, 23.9375, -68.8769, 1351.61, 1080.21, 1893.59, -1070.55, 24.8615, 91.0164, 0, 6, 0, 232, 0, 0, 'El Estado', 0, 0, 0, 30000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(233, 1885.88, -1113.69, 26.2758, 226.614, 1240.03, 1082.14, 1887.67, -1113.82, 27.2566, 85.7131, 0, 2, 0, 233, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(234, 1906, -1112.95, 26.6641, 226.614, 1240.03, 1082.14, 1905.85, -1114.78, 27.428, 355.159, 0, 2, 0, 234, 0, 0, 'El Estado', 0, 0, 0, 90000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(235, 1921.3, -1115.2, 27.0883, 226.614, 1240.03, 1082.14, 1923.13, -1115.36, 27.7209, 84.7731, 0, 2, 0, 235, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(236, 1939.06, -1114.49, 27.4523, 260.543, 1237.24, 1084.26, 1939.11, -1116.33, 28.2067, 1.4256, 0, 9, 0, 236, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(237, 1955.12, -1115.41, 27.8305, 223.162, 1287.12, 1082.14, 1956.92, -1115.51, 28.8324, 86.9664, 0, 1, 0, 237, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(238, 251.442, -1220.21, 76.1024, 1261.32, -785.482, 1091.91, 252.461, -1221.71, 76.9756, 34.6627, 0, 5, 0, 238, 0, 1, 'Steve_Cilic', 0, 0, 0, 25000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(239, 416.625, -1154.03, 76.6876, 235.442, 1186.78, 1080.26, 415.738, -1155.58, 77.7274, 328.236, 0, 3, 0, 239, 0, 0, 'El Estado', 0, 0, 0, 155000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(240, 300.28, -1154.49, 81.391, 1261.32, -785.482, 1091.91, 299.016, -1155.76, 82.3682, 314.95, 0, 5, 0, 240, 1, 0, 'El Estado', 0, 0, 0, 1000000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(241, 470.743, -1163.57, 67.2178, 234.441, 1064.21, 1084.21, 471.198, -1165.32, 68.1342, 14.5551, 0, 6, 0, 241, 1, 0, 'El Estado', 0, 0, 0, 600000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(242, 558.733, -1161.11, 54.4297, 223.162, 1287.12, 1082.14, 557.863, -1159.58, 55.3416, 209.577, 0, 1, 0, 242, 0, 0, 'El Estado', 0, 0, 0, 90000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(243, 646.023, -1117.39, 44.207, 386.939, 1471.88, 1080.19, 644.726, -1116.12, 45.0671, 225.58, 0, 15, 0, 243, 1, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(244, 700.352, -1060.17, 49.4217, 386.939, 1471.88, 1080.19, 698.852, -1059.18, 50.3731, 236.416, 0, 15, 0, 244, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(245, 731.271, -1012.84, 52.7379, 386.939, 1471.88, 1080.19, 730.353, -1014.4, 53.6498, 329.453, 0, 15, 0, 245, 0, 0, 'El Estado', 0, 0, 0, 130000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(246, 553.032, -1200.24, 44.8315, 260.543, 1237.24, 1084.26, 552.395, -1198.53, 45.5543, 200.695, 0, 9, 0, 246, 0, 0, 'El Estado', 0, 0, 0, 120000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(247, 673.137, -1020.14, 55.7596, 260.543, 1237.24, 1084.26, 671.593, -1019.2, 56.6863, 239.734, 0, 9, 0, 247, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(248, 648.412, -1058.6, 52.5799, 260.543, 1237.24, 1084.26, 647.005, -1057.47, 53.518, 226.859, 0, 9, 0, 248, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(249, 352.371, -1197.96, 76.5156, 260.543, 1237.24, 1084.26, 351.205, -1196.6, 77.5573, 221.192, 0, 9, 0, 249, 0, 0, 'El Estado', 0, 0, 0, 120000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(250, 653.596, -1713.95, 14.7648, 226.614, 1240.03, 1082.14, 651.769, -1713.98, 15.532, 270.744, 0, 2, 0, 250, 0, 0, 'El Estado', 0, 0, 0, 85000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(251, 652.662, -1694.03, 14.5504, 235.442, 1186.78, 1080.26, 650.835, -1694.14, 15.44, 273.564, 0, 3, 0, 251, 0, 0, 'El Estado', 0, 0, 0, 90000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(252, 657.224, -1652.66, 15.4062, 2365.02, -1135.31, 1050.88, 655.426, -1652.6, 16.4501, 268.424, 0, 8, 0, 252, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(253, 656.006, -1635.87, 15.8617, 226.614, 1240.03, 1082.14, 655.944, -1637.67, 16.8437, 359.292, 0, 2, 0, 253, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(254, 653.241, -1619.78, 15, 490.966, 1398.76, 1080.26, 651.415, -1619.7, 15.9049, 267.484, 0, 2, 0, 254, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(255, 692.91, -1602.77, 15.0469, 386.939, 1471.88, 1080.19, 692.898, -1600.97, 16.071, 180.376, 0, 15, 0, 255, 0, 0, 'El Estado', 0, 0, 0, 115000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(256, 660.47, -1599.85, 15, 235.442, 1186.78, 1080.26, 660.438, -1598.07, 16.0506, 181.002, 0, 3, 0, 256, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(257, 766.923, -1605.85, 13.8039, 260.543, 1237.24, 1084.26, 765.14, -1605.87, 14.833, 270.71, 0, 9, 0, 257, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(258, 206.979, -1768.89, 4.36963, 2270.39, -1210.28, 1047.56, 206.988, -1770.39, 5.4781, 357.549, 0, 10, 0, 258, 1, 0, 'El Estado', 0, 0, 0, 200000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(259, 985.864, -1094.39, 27.6041, 260.543, 1237.24, 1084.26, 985.874, -1096.18, 28.5942, 359.687, 0, 9, 0, 259, 0, 0, 'El Estado', 0, 0, 0, 85000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(260, 791.463, -1753.21, 13.4606, 2270.39, -1210.28, 1047.56, 791.513, -1755.03, 14.1724, 1.54294, 0, 10, 0, 260, 0, 0, 'El Estado', 0, 0, 0, 140000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(261, 769.229, -1696.52, 5.15542, 226.614, 1240.03, 1082.14, 767.425, -1696.54, 6.0865, 270.676, 0, 2, 0, 261, 0, 0, 'El Estado', 0, 0, 0, 95000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(262, 768.079, -1655.86, 5.60938, 226.614, 1240.03, 1082.14, 766.274, -1655.77, 6.5207, 267.229, 0, 2, 0, 262, 0, 0, 'El Estado', 0, 0, 0, 95000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(263, 948.441, -916.352, 45.162, 1261.32, -785.482, 1091.91, 950.247, -916.236, 46.0635, 94.314, 0, 5, 0, 263, 0, 0, 'El Estado', 0, 0, 0, 850000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(264, 2022.92, -1120.26, 26.421, -68.8769, 1351.61, 1080.21, 2022.95, -1122.09, 27.1732, 3.54005, 0, 6, 0, 264, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(265, 2351.91, -1170.67, 28.0747, -68.8769, 1351.61, 1080.21, 2351.82, -1168.84, 28.8268, 183.058, 0, 6, 0, 265, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(266, 2095.36, -1145.17, 26.5929, 226.614, 1240.03, 1082.14, 2093.53, -1145.15, 27.3051, 269.539, 0, 2, 0, 266, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(267, 2388.42, -1279.69, 25.1291, -68.8769, 1351.61, 1080.21, 2386.6, -1279.76, 25.9718, 272.359, 0, 6, 0, 267, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(268, 2387.86, -1328.44, 25.1242, -68.8769, 1351.61, 1080.21, 2386.04, -1328.43, 25.8663, 269.853, 0, 6, 0, 268, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(269, 2389.73, -1346.1, 25.077, -68.8769, 1351.61, 1080.21, 2387.92, -1346.06, 25.9883, 268.599, 0, 6, 0, 269, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(270, 2383.54, -1366.27, 24.4914, -68.8769, 1351.61, 1080.21, 2381.73, -1366.32, 25.3829, 271.42, 0, 6, 0, 270, 0, 0, 'El Estado', 0, 0, 0, 60000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(271, 2075.27, -1081.89, 25.6813, 2270.39, -1210.28, 1047.56, 2074.46, -1083.57, 26.3648, 334.424, 0, 10, 0, 271, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(272, 2082.48, -1085.16, 25.6873, 2270.39, -1210.28, 1047.56, 2081.72, -1086.84, 26.3699, 335.364, 0, 10, 0, 272, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(273, 2061.01, -1075.33, 25.6858, 2270.39, -1210.28, 1047.56, 2060.2, -1076.98, 26.2977, 331.917, 0, 10, 0, 273, 0, 0, 'El Estado', 0, 0, 0, 85000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(274, 2050.77, -1065.66, 25.7836, 223.162, 1287.12, 1082.14, 2052.41, -1066.37, 26.8031, 66.5446, 0, 1, 0, 274, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0);
INSERT INTO `casas` (`id`, `x`, `y`, `z`, `xx`, `yy`, `zz`, `mx`, `my`, `mz`, `ma`, `int`, `int2`, `vw`, `vw2`, `Abierta`, `Comprada`, `Comprador`, `Alquilable`, `PAlquiler`, `Inquilinos`, `Precio`, `Armario`, `Armas`, `Municiones`, `Cerradura`, `Alarma`) VALUES
(275, 2035.84, -1059.27, 25.6508, 223.162, 1287.12, 1082.14, 2037.5, -1060.02, 26.5027, 65.6046, 0, 1, 0, 275, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(276, 2023.04, -1052.88, 25.5961, 223.162, 1287.12, 1082.14, 2024.71, -1053.64, 26.2682, 65.6046, 0, 1, 0, 276, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(277, 2469.18, -1278.33, 30.3664, -42.5718, 1405.47, 1084.43, 2467.36, -1278.28, 31.1568, 268.438, 0, 8, 0, 277, 1, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(278, 2470.37, -1295.44, 30.2332, -42.5718, 1405.47, 1084.43, 2468.54, -1295.42, 30.9946, 269.312, 0, 8, 0, 278, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(279, 2434.8, -1289.34, 25.3479, -42.5718, 1405.47, 1084.43, 2436.62, -1289.43, 26.1486, 88.2036, 0, 8, 0, 279, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(280, 2433.6, -1275.03, 24.7567, -42.5718, 1405.47, 1084.43, 2435.43, -1275.03, 25.4874, 87.8902, 0, 8, 0, 280, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(281, 2334.66, -1204, 27.9766, 2308.62, -1212.93, 1049.02, 2334.7, -1202.17, 28.6973, 178.758, 0, 6, 0, 281, 1, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(282, 2324.36, -1218.84, 27.9766, 2308.62, -1212.93, 1049.02, 2324.18, -1220.65, 28.8083, 359.291, 0, 6, 0, 282, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(283, 2334.62, -1234.66, 27.9766, 2308.62, -1212.93, 1049.02, 2334.57, -1232.85, 28.848, 180.063, 0, 6, 0, 283, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(284, 2324.38, -1249.51, 27.9766, 2308.62, -1212.93, 1049.02, 2324.36, -1251.32, 28.8381, 359.291, 0, 6, 0, 284, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(285, 2334.59, -1266.12, 27.9693, 2308.62, -1212.93, 1049.02, 2334.6, -1264.31, 28.8606, 179.749, 0, 6, 0, 285, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(286, 2324.41, -1280.97, 27.9821, 2308.62, -1212.93, 1049.02, 2324.43, -1282.8, 28.7946, 0.543926, 0, 6, 0, 286, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(287, 2695.34, -2020.55, 14.0223, 2308.62, -1212.93, 1049.02, 2695.39, -2018.74, 14.9235, 178.519, 0, 6, 0, 287, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(288, 2696.37, -1990.36, 14.2229, 2308.62, -1212.93, 1049.02, 2696.39, -1992.18, 15.0047, 0.230699, 0, 6, 0, 288, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(289, 2673.28, -2020.29, 14.1682, 2308.62, -1212.93, 1049.02, 2673.35, -2018.47, 14.98, 177.892, 0, 6, 0, 289, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(290, 2672.81, -1989.47, 14.324, 2308.62, -1212.93, 1049.02, 2672.86, -1991.29, 15.1657, 1.48398, 0, 6, 0, 290, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(291, 2652.85, -1989.42, 13.9988, 2308.62, -1212.93, 1049.02, 2652.88, -1991.25, 14.7508, 0.833921, 0, 6, 0, 291, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(292, 2637.11, -1991.66, 14.324, 2308.62, -1212.93, 1049.02, 2638.41, -1992.96, 14.9658, 45.0143, 0, 6, 0, 292, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(293, 2635.53, -2012.81, 14.1443, 2308.62, -1212.93, 1049.02, 2637.03, -2011.78, 14.9968, 124.602, 0, 6, 0, 293, 0, 0, 'El Estado', 0, 0, 0, 80000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(294, 2690.54, -1238.01, 57.5101, 266.503, 304.816, 999.148, 2692.34, -1238.07, 58.4803, 90.4949, 0, 2, 0, 294, 1, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(295, 2690.54, -1233.51, 58.9073, 266.503, 304.816, 999.148, 2692.36, -1233.47, 59.7274, 90.038, 0, 2, 0, 295, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(296, 2690.54, -1229.2, 60.1369, 266.503, 304.816, 999.148, 2692.37, -1229.19, 60.817, 91.2913, 0, 2, 0, 296, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(297, 2690.54, -1224.74, 61.4224, 266.503, 304.816, 999.148, 2692.36, -1224.72, 62.2822, 90.6646, 0, 2, 0, 297, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(298, 2690.54, -1220.56, 62.7157, 266.503, 304.816, 999.148, 2692.35, -1220.59, 63.6051, 89.098, 0, 2, 0, 298, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(299, 2690.54, -1216.28, 64.065, 266.503, 304.816, 999.148, 2692.37, -1216.33, 64.7752, 89.098, 0, 2, 0, 299, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(300, 2690.54, -1211.77, 65.4543, 266.503, 304.816, 999.148, 2692.36, -1211.77, 66.325, 89.7246, 0, 2, 0, 300, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(301, 2690.54, -1207.58, 66.588, 266.503, 304.816, 999.148, 2692.36, -1207.59, 67.4577, 89.7246, 0, 2, 0, 301, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(302, 2690.54, -1203.02, 67.5221, 266.503, 304.816, 999.148, 2692.36, -1203.03, 68.3919, 89.7246, 0, 2, 0, 302, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(303, 2690.54, -1200.03, 68.2966, 266.503, 304.816, 999.148, 2692.36, -1200.04, 69.1664, 89.7246, 0, 2, 0, 303, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(304, 2700.21, -1200.13, 68.9705, 266.503, 304.816, 999.148, 2698.38, -1200.09, 69.7007, 268.953, 0, 2, 0, 304, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(305, 2700.21, -1203.11, 68.1961, 266.503, 304.816, 999.148, 2698.37, -1203.08, 68.9265, 268.953, 0, 2, 0, 305, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(306, 2700.2, -1207.63, 67.2617, 266.503, 304.816, 999.148, 2698.37, -1207.6, 67.9924, 268.953, 0, 2, 0, 306, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(307, 2700.21, -1211.86, 66.1282, 266.503, 304.816, 999.148, 2698.38, -1211.83, 66.8585, 268.953, 0, 2, 0, 307, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(308, 2700.21, -1216.43, 64.739, 266.503, 304.816, 999.148, 2698.38, -1216.39, 65.4692, 268.953, 0, 2, 0, 308, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(309, 2700.21, -1220.55, 63.3896, 266.503, 304.816, 999.148, 2698.38, -1220.52, 64.1199, 268.953, 0, 2, 0, 309, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(310, 2700.21, -1224.76, 62.0963, 266.503, 304.816, 999.148, 2698.38, -1224.74, 62.8965, 269.266, 0, 2, 0, 310, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(311, 2700.21, -1229.27, 60.8107, 266.503, 304.816, 999.148, 2698.38, -1229.25, 61.6115, 269.266, 0, 2, 0, 311, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(312, 2700.21, -1233.6, 59.5812, 266.503, 304.816, 999.148, 2698.38, -1233.57, 60.382, 269.266, 0, 2, 0, 312, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(313, 2700.21, -1238.08, 58.1841, 266.503, 304.816, 999.148, 2698.32, -1238.06, 58.9878, 269.266, 0, 2, 0, 313, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(314, 2670.28, -1238.04, 55.7298, 266.503, 304.816, 999.148, 2672.1, -1238.05, 56.53, 89.748, 0, 2, 0, 314, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(315, 2670.29, -1233.5, 57.1229, 266.503, 304.816, 999.148, 2672.15, -1233.5, 57.9278, 89.748, 0, 2, 0, 315, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(316, 2670.28, -1229.18, 58.3593, 266.503, 304.816, 999.148, 2672.1, -1229.19, 59.1594, 89.748, 0, 2, 0, 316, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(317, 2670.28, -1224.68, 59.6348, 266.503, 304.816, 999.148, 2672.1, -1224.69, 60.435, 89.748, 0, 2, 0, 317, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(318, 2670.28, -1220.5, 60.9226, 266.503, 304.816, 999.148, 2672.1, -1220.51, 61.7227, 89.748, 0, 2, 0, 318, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(319, 2670.28, -1216.27, 62.2698, 266.503, 304.816, 999.148, 2672.11, -1216.28, 63.0704, 89.748, 0, 2, 0, 319, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(320, 2670.28, -1211.73, 63.6695, 266.503, 304.816, 999.148, 2672.1, -1211.74, 64.4697, 89.748, 0, 2, 0, 320, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(321, 2670.28, -1207.53, 64.8071, 266.503, 304.816, 999.148, 2672.11, -1207.54, 65.608, 89.748, 0, 2, 0, 321, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(322, 2670.28, -1203.06, 65.7272, 266.503, 304.816, 999.148, 2672.13, -1203.07, 66.5301, 89.748, 0, 2, 0, 322, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(323, 2670.28, -1200.07, 66.4934, 266.503, 304.816, 999.148, 2672.1, -1200.07, 67.2937, 89.748, 0, 2, 0, 323, 0, 0, 'El Estado', 0, 0, 0, 35000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(324, 2750.39, -1238.76, 61.5245, 235.442, 1186.78, 1080.26, 2748.58, -1238.85, 62.3943, 272.713, 0, 3, 0, 324, 0, 0, 'El Estado', 0, 0, 0, 120000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(325, 2750.39, -1222.27, 64.6016, 235.442, 1186.78, 1080.26, 2748.57, -1222.23, 65.3718, 268.64, 0, 3, 0, 325, 0, 0, 'El Estado', 0, 0, 0, 120000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(326, 2750.39, -1205.74, 67.4844, 235.442, 1186.78, 1080.26, 2748.55, -1205.72, 68.205, 269.266, 0, 3, 0, 326, 0, 0, 'El Estado', 0, 0, 0, 120000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(327, 1802.03, -2098.94, 14.021, 2308.62, -1212.93, 1049.02, 1802.05, -2100.75, 14.9612, 0.423823, 0, 6, 0, 327, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(328, 1781.47, -2101.27, 14.0566, 2308.62, -1212.93, 1049.02, 1781.41, -2103.09, 14.8568, 358.254, 0, 6, 0, 328, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(329, 1762.5, -2101.98, 13.857, 2308.62, -1212.93, 1049.02, 1762.54, -2103.81, 14.6272, 1.36372, 0, 6, 0, 329, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(330, 1734.07, -2097.98, 14.0366, 2308.62, -1212.93, 1049.02, 1734.06, -2099.8, 14.8567, 359.484, 0, 6, 0, 330, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(331, 1711.68, -2101.23, 14.021, 2308.62, -1212.93, 1049.02, 1711.73, -2103.06, 14.7712, 1.36387, 0, 6, 0, 331, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(332, 1667.55, -2106.94, 14.0723, 2308.62, -1212.93, 1049.02, 1667.54, -2108.77, 14.8631, 359.797, 0, 6, 0, 332, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(333, 1673.63, -2122.41, 14.146, 2308.62, -1212.93, 1049.02, 1674.93, -2121.12, 14.8562, 135.135, 0, 6, 0, 333, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(334, 1695.46, -2125.84, 13.8101, 2308.62, -1212.93, 1049.02, 1695.51, -2124.01, 14.5703, 178.376, 0, 6, 0, 334, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(335, 1715.08, -2125.45, 14.0566, 2308.62, -1212.93, 1049.02, 1715.12, -2123.63, 14.8468, 178.689, 0, 6, 0, 335, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(336, 1734.73, -2130.36, 14.021, 2308.62, -1212.93, 1049.02, 1734.79, -2128.53, 14.7613, 177.749, 0, 6, 0, 336, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(337, 1761.25, -2125.45, 14.0566, 2308.62, -1212.93, 1049.02, 1761.32, -2123.63, 14.8568, 177.749, 0, 6, 0, 337, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(338, 1782.19, -2126.51, 14.0679, 2308.62, -1212.93, 1049.02, 1782.18, -2124.69, 14.8776, 180.256, 0, 6, 0, 338, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(339, 2407.85, -1106.97, 40.2957, 2308.62, -1212.93, 1049.02, 2407.89, -1105.14, 41.0343, 178.796, 0, 6, 0, 339, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(340, 2456.98, -1102.5, 43.8672, 2365.02, -1135.31, 1050.88, 2456.98, -1100.7, 44.795, 180.268, 0, 8, 0, 340, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(341, 2470.67, -1105.32, 44.4879, 2365.02, -1135.31, 1050.88, 2470.67, -1103.51, 45.3463, 179.956, 0, 8, 0, 341, 0, 0, 'El Estado', 0, 0, 0, 75000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(342, 2519.03, -1113.06, 56.5926, 2365.02, -1135.31, 1050.88, 2520.85, -1113.12, 57.4152, 88.1165, 0, 8, 0, 342, 0, 0, 'El Estado', 0, 0, 0, 95000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(343, 2572.33, -1091.82, 67.2257, 2365.02, -1135.31, 1050.88, 2570.99, -1090.59, 68.0163, 227.474, 0, 8, 0, 343, 0, 0, 'El Estado', 0, 0, 0, 85000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(344, 2576.68, -1070.7, 69.8322, 2365.02, -1135.31, 1050.88, 2574.86, -1070.63, 70.6228, 267.782, 0, 8, 0, 344, 0, 0, 'El Estado', 0, 0, 0, 85000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(345, 2579.66, -1033.2, 69.5798, 266.503, 304.816, 999.148, 2579.57, -1034.97, 70.4736, 357.082, 0, 2, 0, 345, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(346, 2562.11, -1034.39, 69.8692, 266.503, 304.816, 999.148, 2560.3, -1034.38, 70.5985, 269.661, 0, 2, 0, 346, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(347, 2549.2, -1032.24, 69.5788, 266.503, 304.816, 999.148, 2551.08, -1032.21, 70.4061, 90.4565, 0, 2, 0, 347, 0, 0, 'El Estado', 0, 0, 0, 50000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(348, 2526.87, -1033.52, 69.5793, 266.503, 304.816, 999.148, 2526.97, -1035.38, 70.4671, 3.03551, 0, 2, 0, 348, 0, 0, 'El Estado', 0, 0, 0, 50000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(349, 2512.79, -1027.16, 70.0859, 223.162, 1287.12, 1082.14, 2512.76, -1028.93, 70.9884, 358.962, 0, 1, 0, 349, 0, 0, 'El Estado', 0, 0, 0, 65000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(350, 2628.1, -1067.87, 69.7156, 2270.39, -1210.28, 1047.56, 2629.91, -1067.89, 70.5755, 89.2379, 0, 10, 0, 350, 0, 0, 'El Estado', 0, 0, 0, 95000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(351, 2627.64, -1085.19, 69.7156, 2270.39, -1210.28, 1047.56, 2629.46, -1085.25, 70.5954, 88.2979, 0, 10, 0, 351, 0, 0, 'El Estado', 0, 0, 0, 95000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(352, 2625.93, -1098.74, 69.3577, 2270.39, -1210.28, 1047.56, 2627.73, -1098.8, 70.3264, 87.9845, 0, 10, 0, 352, 0, 0, 'El Estado', 0, 0, 0, 95000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(353, 2625.94, -1112.59, 67.9953, 2270.39, -1210.28, 1047.56, 2627.76, -1112.63, 68.8553, 88.6112, 0, 10, 0, 353, 0, 0, 'El Estado', 0, 0, 0, 95000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(354, 2250.26, -1280.05, 25.4766, 2365.02, -1135.31, 1050.88, 2250.3, -1281.84, 26.4389, 1.1914, 0, 8, 0, 354, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(355, 2230.09, -1280.07, 25.6285, 2365.02, -1135.31, 1050.88, 2230.07, -1281.88, 26.5624, 359.288, 0, 8, 0, 355, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(356, 2207.9, -1280.82, 25.1207, 2365.02, -1135.31, 1050.88, 2207.86, -1282.64, 26.005, 358.661, 0, 8, 0, 356, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(357, 2148.51, -1320.08, 26.0738, 2365.02, -1135.31, 1050.88, 2148.51, -1318.26, 26.8884, 180.396, 0, 8, 0, 357, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(358, 2126.72, -1320.87, 26.6241, 2270.39, -1210.28, 1047.56, 2126.76, -1319.09, 27.5221, 181.023, 0, 10, 0, 358, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(359, 2132.27, -1280.05, 25.8906, 2365.02, -1135.31, 1050.88, 2132.28, -1281.87, 26.6845, 0.228141, 0, 8, 0, 359, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(360, 2100.9, -1321.89, 25.9531, 2365.02, -1135.31, 1050.88, 2100.95, -1320.07, 26.7669, 178.18, 0, 8, 0, 360, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(361, 2151.18, -1400.68, 26.1285, 2365.02, -1135.31, 1050.88, 2149.38, -1400.68, 27.0416, 269.987, 0, 8, 0, 361, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(362, 2150.92, -1419.06, 25.9219, 2365.02, -1135.31, 1050.88, 2149.1, -1419.05, 26.7257, 269.674, 0, 8, 0, 362, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(363, 2149.86, -1433.7, 26.0703, 2365.02, -1135.31, 1050.88, 2148.04, -1433.67, 26.904, 269.047, 0, 8, 0, 363, 1, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(364, 2152.22, -1446.4, 26.1051, 2365.02, -1135.31, 1050.88, 2150.4, -1446.5, 26.9478, 271.802, 0, 8, 0, 364, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(365, 2146.8, -1470.46, 26.0426, 2365.02, -1135.31, 1050.88, 2145.03, -1470.47, 27.1405, 269.922, 0, 8, 0, 365, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(366, 2148.94, -1484.88, 26.6241, 2270.39, -1210.28, 1047.56, 2147.17, -1484.88, 27.56, 270.235, 0, 10, 0, 366, 0, 0, 'El Estado', 0, 0, 0, 120000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(367, 161.452, -1455.95, 32.845, 260.543, 1237.24, 1084.26, 162.907, -1457.04, 33.6769, 52.4303, 0, 9, 0, 367, 0, 0, 'El Estado', 0, 0, 0, 350000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(368, 228.027, -1405.48, 51.6094, 260.543, 1237.24, 1084.26, 228.795, -1403.81, 52.2523, 155.244, 0, 9, 0, 368, 0, 0, 'El Estado', 0, 0, 0, 400000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(369, 2230.37, -1397.24, 24.5738, 2365.02, -1135.31, 1050.88, 2230.32, -1395.43, 25.4351, 181.015, 0, 8, 0, 369, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(370, 2243.57, -1397.24, 24.5738, 2365.02, -1135.31, 1050.88, 2243.54, -1395.42, 25.3355, 181.014, 0, 8, 0, 370, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(371, 2256.49, -1397.24, 24.5738, 2365.02, -1135.31, 1050.88, 2256.5, -1395.42, 25.3654, 179.761, 0, 8, 0, 371, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(372, 2263.91, -1469.33, 24.3707, 2365.02, -1135.31, 1050.88, 2263.98, -1471.14, 25.3112, 2.09938, 0, 8, 0, 372, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(373, 2247.75, -1469.34, 24.4801, 2365.02, -1135.31, 1050.88, 2247.72, -1471.14, 25.381, 358.966, 0, 8, 0, 373, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(374, 2232.62, -1469.34, 24.5816, 2365.02, -1135.31, 1050.88, 2232.57, -1471.14, 25.5232, 1.47273, 0, 8, 0, 374, 0, 0, 'El Estado', 0, 0, 0, 100000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(375, 2190.45, -1470.35, 25.9141, 2365.02, -1135.31, 1050.88, 2192.27, -1470.35, 26.7163, 89.8336, 0, 8, 0, 375, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(376, 2191.1, -1455.81, 26, 2365.02, -1135.31, 1050.88, 2192.94, -1455.83, 26.7828, 89.2069, 0, 8, 0, 376, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(377, 2194.35, -1442.92, 26.0738, 2365.02, -1135.31, 1050.88, 2196.16, -1442.94, 27.0253, 92.027, 0, 8, 0, 377, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(378, 2196.21, -1404.07, 25.9488, 2365.02, -1135.31, 1050.88, 2198.02, -1404.16, 26.8299, 87.3269, 0, 8, 0, 378, 0, 0, 'El Estado', 0, 0, 0, 110000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(379, 1411.18, -920.873, 38.4219, 226.553, 1114.1, 1080.99, 1410.94, -922.652, 39.3953, 352.212, 0, 5, 0, 379, 1, 0, 'El Estado', 0, 0, 0, 400000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(380, 1440.61, -926.128, 39.6477, 226.553, 1114.1, 1080.99, 1440.29, -927.88, 40.5432, 349.847, 0, 5, 0, 380, 1, 0, 'El Estado', 0, 0, 0, 400000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(381, 2284.68, -1906.6, 14.9297, 2308.62, -1212.93, 1049.02, 2284.63, -1904.78, 15.7541, 181.591, 0, 6, 0, 381, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(382, 2261.47, -1906.76, 14.9375, 2308.62, -1212.93, 1049.02, 2261.43, -1904.95, 15.8213, 180.965, 0, 6, 0, 382, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(383, 253.216, -1269.99, 74.4307, 1261.32, -785.482, 1091.91, 252.18, -1268.53, 75.4302, 215.348, 0, 5, 0, 383, 0, 0, 'El Estado', 0, 0, 0, 800000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(384, 1097.9, -330.997, 74.8184, 1261.32, -785.482, 1091.91, 1096.07, -331.025, 75.3993, 270.567, 0, 5, 0, 384, 0, 0, 'El Estado', 0, 0, 0, 1800000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(385, -1061.35, -1205.51, 129.756, 226.614, 1240.03, 1082.14, -1059.57, -1205.53, 130.782, 89.1106, 0, 2, 0, 385, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(386, -1068.22, -1205.49, 129.756, 226.614, 1240.03, 1082.14, -1070.05, -1205.49, 130.435, 269.929, 0, 2, 0, 386, 1, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0),
(387, -1075.8, -1190.58, 129.756, 226.614, 1240.03, 1082.14, -1075.49, -1188.78, 130.124, 180, 0, 2, 0, 387, 0, 0, 'El Estado', 0, 0, 0, 70000, 0, '0,0,0,0,0', '0,0,0,0,0', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentasbancarias`
--

CREATE TABLE IF NOT EXISTS `cuentasbancarias` (
  `numerocuenta` int(10) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `PIN` int(4) NOT NULL DEFAULT '0',
  `saldo` int(11) NOT NULL DEFAULT '0',
  `propietario` int(11) NOT NULL DEFAULT '0',
  `creacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ult_jugador` int(11) NOT NULL DEFAULT '0',
  `ult_fecha` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cuentasbancarias`
--

INSERT INTO `cuentasbancarias` (`numerocuenta`, `descripcion`, `PIN`, `saldo`, `propietario`, `creacion`, `ult_jugador`, `ult_fecha`) VALUES
(1109192667, 'Ruut Callejon', 1212, 700, 97, '30/12/2015 - 15:12:05', 0, ''),
(1112861865, 'Uso personal', 8451, 0, 72, '29/12/2015 - 16:02:43', 0, ''),
(1113332641, 'henso ', 9340, 0, 37, '19/01/2016 - 11:04:08', 0, ''),
(1115510631, 'Pesos', 9340, 900, 1, '22/07/2015 - 22:31:53', 0, ''),
(1121556703, '1772 Block Inglewood', 1999, 6582, 47, '29/12/2015 - 07:33:25', 0, ''),
(1121702837, 'Joseph', 1234, 600, 74, '01/01/2016 - 10:25:22', 0, ''),
(1125689688, 'chenso', 1105, 800, 89, '19/01/2016 - 11:04:43', 0, ''),
(1128155580, 'Meyer', 1324, 200, 106, '30/12/2015 - 15:11:01', 0, ''),
(1130456082, 'Disunga', 9340, 8800, 37, '12/01/2016 - 04:04:05', 0, ''),
(1130965996, 'Faso', 7777, 3400, 187, '16/01/2016 - 06:54:02', 0, ''),
(1133792398, 'Para mí.', 1111, 500, 195, '19/01/2016 - 11:04:21', 0, ''),
(1134935758, 'AhoSimplemente es una cuenta propia para colocar mi dinero.', 1722, 1061, 94, '30/12/2015 - 12:00:37', 0, ''),
(1135033959, 'Cuenta en dólares', 9340, 500, 37, '16/12/2015 - 18:16:31', 0, ''),
(1135089561, 'Ahorros', 9340, 0, 37, '16/12/2015 - 18:19:09', 0, ''),
(1136279411, 'trabÿÿo', 1794, 665, 51, '29/12/2015 - 17:55:01', 0, ''),
(1136526545, 'Business', 1305, 15020, 104, '30/12/2015 - 15:52:56', 0, ''),
(1138256613, 'Cuenta Corriente', 4834, 25840, 86, '21/01/2016 - 04:48:05', 0, ''),
(1141800089, 'Ahorros', 9340, 0, 37, '13/01/2016 - 01:28:33', 0, ''),
(1153802578, 'Prueba', 9340, 0, 37, '13/01/2016 - 01:48:00', 0, ''),
(1154737213, 'Ahorros', 1234, 100, 79, '31/12/2015 - 09:09:45', 0, ''),
(1157841770, 'Reservas del Tortu — SDB', 4401, 100, 95, '30/12/2015 - 07:11:54', 0, ''),
(1158562336, 'Terrorismo', 1305, 500, 40, '16/12/2015 - 18:17:02', 0, ''),
(1160321843, 'Cuenta Corriente', 3317, 12470, 173, '21/01/2016 - 04:47:50', 0, ''),
(1166868281, 'Faso', 7777, 3500, 181, '14/01/2016 - 06:57:22', 0, ''),
(1170000425, 'Ahorros', 9723, 3570, 182, '20/01/2016 - 11:11:22', 0, ''),
(1177831480, 'Gastos cualquiera', 6060, 100, 109, '30/12/2015 - 15:53:28', 0, ''),
(1180184717, 'Janowicz', 8077, 0, 92, '30/12/2015 - 04:14:10', 0, ''),
(1181043850, 'Dólares', 9340, 1140, 37, '01/01/2016 - 21:45:57', 0, ''),
(1186944063, 'cuenta principal', 1305, 700000, 7, '22/07/2015 - 22:31:55', 0, ''),
(1193640657, 'Simplemente es una cuenta propia para colocar mi dinero.', 1598, 24340, 39, '30/12/2015 - 12:01:05', 0, ''),
(1194635370, 'Cubanito', 0, -160, 56, '01/01/2016 - 21:01:05', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delitos`
--

CREATE TABLE IF NOT EXISTS `delitos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(35) NOT NULL,
  `Informacion` varchar(256) NOT NULL,
  `Fecha` varchar(35) NOT NULL,
  `Resuelto` int(11) NOT NULL DEFAULT '0',
  `Reportador` varchar(35) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `delitos`
--

INSERT INTO `delitos` (`id`, `Nombre`, `Informacion`, `Fecha`, `Resuelto`, `Reportador`) VALUES
(1, 'James', 'Mahoney a', '21/01/2016 - 04:40:03', 0, 'Michael Cutler'),
(2, 'James', 'Mahoney', '21/01/2016 - 04:40:12', 0, 'Michael Cutler');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dinero`
--

CREATE TABLE IF NOT EXISTS `dinero` (
  `id_movimiento` int(50) NOT NULL,
  `UsuarioPago` int(11) NOT NULL DEFAULT '0',
  `UsuarioRecibio` int(11) NOT NULL DEFAULT '0',
  `Monto` int(7) NOT NULL DEFAULT '0',
  `Fecha` varchar(75) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dinero`
--

INSERT INTO `dinero` (`id_movimiento`, `UsuarioPago`, `UsuarioRecibio`, `Monto`, `Fecha`) VALUES
(3, 37, 86, 10000, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expulsiones`
--

CREATE TABLE IF NOT EXISTS `expulsiones` (
  `id` int(11) NOT NULL,
  `Expulsado` varchar(35) NOT NULL,
  `Expulsador` varchar(35) NOT NULL,
  `Razon` varchar(75) NOT NULL,
  `Fecha` varchar(75) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=838 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facciones`
--

CREATE TABLE IF NOT EXISTS `facciones` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Rango1` varchar(35) NOT NULL,
  `Rango2` varchar(35) NOT NULL,
  `Rango3` varchar(35) NOT NULL,
  `Rango4` varchar(35) NOT NULL,
  `Rango5` varchar(35) NOT NULL,
  `Rango6` varchar(35) NOT NULL,
  `Rango7` varchar(35) NOT NULL,
  `Rango8` varchar(35) NOT NULL,
  `Sueldo1` int(11) NOT NULL,
  `Sueldo2` int(11) NOT NULL,
  `Sueldo3` int(11) NOT NULL,
  `Sueldo4` int(11) NOT NULL,
  `Sueldo5` int(11) NOT NULL,
  `Sueldo6` int(11) NOT NULL,
  `Sueldo7` int(11) NOT NULL,
  `Sueldo8` int(11) NOT NULL,
  `Lider` int(11) NOT NULL DEFAULT '0',
  `tipo` smallint(1) NOT NULL DEFAULT '0',
  `estado` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facciones`
--

INSERT INTO `facciones` (`id`, `Nombre`, `Rango1`, `Rango2`, `Rango3`, `Rango4`, `Rango5`, `Rango6`, `Rango7`, `Rango8`, `Sueldo1`, `Sueldo2`, `Sueldo3`, `Sueldo4`, `Sueldo5`, `Sueldo6`, `Sueldo7`, `Sueldo8`, `Lider`, `tipo`, `estado`) VALUES
(0, 'No_Tocar', '0', '0', '0', '0', '0', '00', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(1, 'LSPD', 'Cadete', 'Oficial', 'Detective I', 'Detective II', 'Sargento', 'Teniente', 'Capitán', 'Jefe de Policía', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'LSMD', 'Paramedico', 'Paramedico', 'Paramedico', 'Paramedico', 'Paramedico', 'Paramedico', 'Paramedico', 'Paramedico', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(3, 'LSFD', 'Conductor', 'Conductor', 'Conductor', 'Conductor', 'Conductor', 'Conductor', 'Conductor', 'Jefe', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(4, 'Gobierno', 'Editar', 'Editar', 'Editar', 'Editar', 'Editar', 'Editar', 'Vice', 'Alcalde', 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0),
(5, 'LSRTV', 'Movil', 'Locutor', 'Panelista', 'Periodista', 'Periodista', 'Productor', 'Jefe', 'CEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_admin_info_files`
--

CREATE TABLE IF NOT EXISTS `forum_admin_info_files` (
  `id_file` tinyint(4) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `parameters` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `filetype` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_approval_queue`
--

CREATE TABLE IF NOT EXISTS `forum_approval_queue` (
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_attach` int(10) unsigned NOT NULL DEFAULT '0',
  `id_event` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_attachments`
--

CREATE TABLE IF NOT EXISTS `forum_attachments` (
  `id_attach` int(10) unsigned NOT NULL,
  `id_thumb` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_folder` tinyint(3) NOT NULL DEFAULT '1',
  `attachment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `file_hash` varchar(40) NOT NULL DEFAULT '',
  `fileext` varchar(8) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `width` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `height` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(20) NOT NULL DEFAULT '',
  `approved` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_ban_groups`
--

CREATE TABLE IF NOT EXISTS `forum_ban_groups` (
  `id_ban_group` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ban_time` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned DEFAULT NULL,
  `cannot_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_post` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_login` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_ban_items`
--

CREATE TABLE IF NOT EXISTS `forum_ban_items` (
  `id_ban` mediumint(8) unsigned NOT NULL,
  `id_ban_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_low1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hostname` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forum_ban_items`
--

INSERT INTO `forum_ban_items` (`id_ban`, `id_ban_group`, `ip_low1`, `ip_high1`, `ip_low2`, `ip_high2`, `ip_low3`, `ip_high3`, `ip_low4`, `ip_high4`, `hostname`, `email_address`, `id_member`, `hits`) VALUES
(1, 1, 71, 71, 229, 229, 101, 101, 126, 126, '', '', 0, 0),
(2, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 'correolsrp@gmail.com', 0, 0),
(3, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 148, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_boards`
--

CREATE TABLE IF NOT EXISTS `forum_boards` (
  `id_board` smallint(5) unsigned NOT NULL,
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `child_level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `board_order` smallint(5) NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `member_groups` varchar(255) NOT NULL DEFAULT '-1,0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `num_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count_posts` tinyint(4) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `override_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `unapproved_topics` smallint(5) NOT NULL DEFAULT '0',
  `redirect` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_board_permissions`
--

CREATE TABLE IF NOT EXISTS `forum_board_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_calendar`
--

CREATE TABLE IF NOT EXISTS `forum_calendar` (
  `id_event` smallint(5) unsigned NOT NULL,
  `start_date` date NOT NULL DEFAULT '0001-01-01',
  `end_date` date NOT NULL DEFAULT '0001-01-01',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_calendar_holidays`
--

CREATE TABLE IF NOT EXISTS `forum_calendar_holidays` (
  `id_holiday` smallint(5) unsigned NOT NULL,
  `event_date` date NOT NULL DEFAULT '0001-01-01',
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_categories`
--

CREATE TABLE IF NOT EXISTS `forum_categories` (
  `id_cat` tinyint(4) unsigned NOT NULL,
  `cat_order` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `can_collapse` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forum_categories`
--

INSERT INTO `forum_categories` (`id_cat`, `cat_order`, `name`, `can_collapse`) VALUES
(4, 1, 'Reportes y solicitudes', 1),
(2, 2, 'Facciones', 1),
(3, 0, 'General', 0),
(5, 3, 'Facciones no oficiales', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_collapsed_categories`
--

CREATE TABLE IF NOT EXISTS `forum_collapsed_categories` (
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_custom_fields`
--

CREATE TABLE IF NOT EXISTS `forum_custom_fields` (
  `id_field` smallint(5) NOT NULL,
  `col_name` varchar(12) NOT NULL DEFAULT '',
  `field_name` varchar(40) NOT NULL DEFAULT '',
  `field_desc` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(8) NOT NULL DEFAULT 'text',
  `field_length` smallint(5) NOT NULL DEFAULT '255',
  `field_options` text NOT NULL,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `show_reg` tinyint(3) NOT NULL DEFAULT '0',
  `show_display` tinyint(3) NOT NULL DEFAULT '0',
  `show_profile` varchar(20) NOT NULL DEFAULT 'forumprofile',
  `private` tinyint(3) NOT NULL DEFAULT '0',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `bbc` tinyint(3) NOT NULL DEFAULT '0',
  `can_search` tinyint(3) NOT NULL DEFAULT '0',
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `enclose` text NOT NULL,
  `placement` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_group_moderators`
--

CREATE TABLE IF NOT EXISTS `forum_group_moderators` (
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_actions`
--

CREATE TABLE IF NOT EXISTS `forum_log_actions` (
  `id_action` int(10) unsigned NOT NULL,
  `id_log` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_activity`
--

CREATE TABLE IF NOT EXISTS `forum_log_activity` (
  `date` date NOT NULL DEFAULT '0001-01-01',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topics` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `registers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `most_on` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_banned`
--

CREATE TABLE IF NOT EXISTS `forum_log_banned` (
  `id_ban_log` mediumint(8) unsigned NOT NULL,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_boards`
--

CREATE TABLE IF NOT EXISTS `forum_log_boards` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_comments`
--

CREATE TABLE IF NOT EXISTS `forum_log_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `comment_type` varchar(8) NOT NULL DEFAULT 'warning',
  `id_recipient` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_notice` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `counter` tinyint(3) NOT NULL DEFAULT '0',
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_digest`
--

CREATE TABLE IF NOT EXISTS `forum_log_digest` (
  `id_topic` mediumint(8) unsigned NOT NULL,
  `id_msg` int(10) unsigned NOT NULL,
  `note_type` varchar(10) NOT NULL DEFAULT 'post',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exclude` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_errors`
--

CREATE TABLE IF NOT EXISTS `forum_log_errors` (
  `id_error` mediumint(8) unsigned NOT NULL,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `message` text NOT NULL,
  `session` char(32) NOT NULL DEFAULT '',
  `error_type` char(15) NOT NULL DEFAULT 'general',
  `file` varchar(255) NOT NULL DEFAULT '',
  `line` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_floodcontrol`
--

CREATE TABLE IF NOT EXISTS `forum_log_floodcontrol` (
  `ip` char(16) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `log_type` varchar(8) NOT NULL DEFAULT 'post'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forum_log_floodcontrol`
--

INSERT INTO `forum_log_floodcontrol` (`ip`, `log_time`, `log_type`) VALUES
('187.156.176.255', 1461358875, 'login'),
('', 1448403332, 'register'),
('167.56.243.219', 1451766147, 'reporttm'),
('167.60.24.207', 1451448754, 'search'),
('190.39.101.230', 1453323725, 'sendmail'),
('190.134.130.128', 1453683283, 'login'),
('167.56.152.51', 1453684589, 'post'),
('179.56.244.84', 1453683678, 'pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_group_requests`
--

CREATE TABLE IF NOT EXISTS `forum_log_group_requests` (
  `id_request` mediumint(8) unsigned NOT NULL,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_applied` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_karma`
--

CREATE TABLE IF NOT EXISTS `forum_log_karma` (
  `id_target` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_executor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forum_log_karma`
--

INSERT INTO `forum_log_karma` (`id_target`, `id_executor`, `log_time`, `action`) VALUES
(100, 10, 1451607245, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_mark_read`
--

CREATE TABLE IF NOT EXISTS `forum_log_mark_read` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_member_notices`
--

CREATE TABLE IF NOT EXISTS `forum_log_member_notices` (
  `id_notice` mediumint(8) unsigned NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_notify`
--

CREATE TABLE IF NOT EXISTS `forum_log_notify` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sent` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_online`
--

CREATE TABLE IF NOT EXISTS `forum_log_online` (
  `session` varchar(32) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_packages`
--

CREATE TABLE IF NOT EXISTS `forum_log_packages` (
  `id_install` int(10) NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `package_id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `id_member_installed` mediumint(8) NOT NULL DEFAULT '0',
  `member_installed` varchar(255) NOT NULL DEFAULT '',
  `time_installed` int(10) NOT NULL DEFAULT '0',
  `id_member_removed` mediumint(8) NOT NULL DEFAULT '0',
  `member_removed` varchar(255) NOT NULL DEFAULT '',
  `time_removed` int(10) NOT NULL DEFAULT '0',
  `install_state` tinyint(3) NOT NULL DEFAULT '1',
  `failed_steps` text NOT NULL,
  `themes_installed` varchar(255) NOT NULL DEFAULT '',
  `db_changes` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forum_log_packages`
--

INSERT INTO `forum_log_packages` (`id_install`, `filename`, `package_id`, `name`, `version`, `id_member_installed`, `member_installed`, `time_installed`, `id_member_removed`, `member_removed`, `time_removed`, `install_state`, `failed_steps`, `themes_installed`, `db_changes`) VALUES
(1, 'EmbedBBCode20.zip', 'nikan:embedbbcode', 'Embed BBCode', '2.0', 8, 'Josh Hawes', 1453230792, 0, '0', 0, 1, 'a:0:{}', '1', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_polls`
--

CREATE TABLE IF NOT EXISTS `forum_log_polls` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_reported`
--

CREATE TABLE IF NOT EXISTS `forum_log_reported` (
  `id_report` mediumint(8) unsigned NOT NULL,
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `membername` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `time_started` int(10) NOT NULL DEFAULT '0',
  `time_updated` int(10) NOT NULL DEFAULT '0',
  `num_reports` mediumint(6) NOT NULL DEFAULT '0',
  `closed` tinyint(3) NOT NULL DEFAULT '0',
  `ignore_all` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_reported_comments`
--

CREATE TABLE IF NOT EXISTS `forum_log_reported_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL,
  `id_report` mediumint(8) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL,
  `membername` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `time_sent` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_scheduled_tasks`
--

CREATE TABLE IF NOT EXISTS `forum_log_scheduled_tasks` (
  `id_log` mediumint(8) NOT NULL,
  `id_task` smallint(5) NOT NULL DEFAULT '0',
  `time_run` int(10) NOT NULL DEFAULT '0',
  `time_taken` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_search_messages`
--

CREATE TABLE IF NOT EXISTS `forum_log_search_messages` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_search_results`
--

CREATE TABLE IF NOT EXISTS `forum_log_search_results` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `relevance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num_matches` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_search_subjects`
--

CREATE TABLE IF NOT EXISTS `forum_log_search_subjects` (
  `word` varchar(20) NOT NULL DEFAULT '',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_search_topics`
--

CREATE TABLE IF NOT EXISTS `forum_log_search_topics` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_spider_hits`
--

CREATE TABLE IF NOT EXISTS `forum_log_spider_hits` (
  `id_hit` int(10) unsigned NOT NULL,
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `processed` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_spider_stats`
--

CREATE TABLE IF NOT EXISTS `forum_log_spider_stats` (
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `page_hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_seen` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_date` date NOT NULL DEFAULT '0001-01-01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_subscribed`
--

CREATE TABLE IF NOT EXISTS `forum_log_subscribed` (
  `id_sublog` int(10) unsigned NOT NULL,
  `id_subscribe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` int(10) NOT NULL DEFAULT '0',
  `old_id_group` smallint(5) NOT NULL DEFAULT '0',
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `payments_pending` tinyint(3) NOT NULL DEFAULT '0',
  `pending_details` text NOT NULL,
  `reminder_sent` tinyint(3) NOT NULL DEFAULT '0',
  `vendor_ref` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_log_topics`
--

CREATE TABLE IF NOT EXISTS `forum_log_topics` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_mail_queue`
--

CREATE TABLE IF NOT EXISTS `forum_mail_queue` (
  `id_mail` int(10) unsigned NOT NULL,
  `time_sent` int(10) NOT NULL DEFAULT '0',
  `recipient` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `headers` text NOT NULL,
  `send_html` tinyint(3) NOT NULL DEFAULT '0',
  `priority` tinyint(3) NOT NULL DEFAULT '1',
  `private` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_membergroups`
--

CREATE TABLE IF NOT EXISTS `forum_membergroups` (
  `id_group` smallint(5) unsigned NOT NULL,
  `group_name` varchar(80) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `online_color` varchar(20) NOT NULL DEFAULT '',
  `min_posts` mediumint(9) NOT NULL DEFAULT '-1',
  `max_messages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stars` varchar(255) NOT NULL DEFAULT '',
  `group_type` tinyint(3) NOT NULL DEFAULT '0',
  `hidden` tinyint(3) NOT NULL DEFAULT '0',
  `id_parent` smallint(5) NOT NULL DEFAULT '-2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_members`
--

CREATE TABLE IF NOT EXISTS `forum_members` (
  `id_member` mediumint(8) unsigned NOT NULL,
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `date_registered` int(10) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lngfile` varchar(255) NOT NULL DEFAULT '',
  `last_login` int(10) unsigned NOT NULL DEFAULT '0',
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `instant_messages` smallint(5) NOT NULL DEFAULT '0',
  `unread_messages` smallint(5) NOT NULL DEFAULT '0',
  `new_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `buddy_list` text NOT NULL,
  `pm_ignore_list` varchar(255) NOT NULL DEFAULT '',
  `pm_prefs` mediumint(8) NOT NULL DEFAULT '0',
  `mod_prefs` varchar(20) NOT NULL DEFAULT '',
  `message_labels` text NOT NULL,
  `passwd` varchar(64) NOT NULL DEFAULT '',
  `openid_uri` text NOT NULL,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `personal_text` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `website_title` varchar(255) NOT NULL DEFAULT '',
  `website_url` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `icq` varchar(255) NOT NULL DEFAULT '',
  `aim` varchar(255) NOT NULL DEFAULT '',
  `yim` varchar(32) NOT NULL DEFAULT '',
  `msn` varchar(255) NOT NULL DEFAULT '',
  `hide_email` tinyint(4) NOT NULL DEFAULT '0',
  `show_online` tinyint(4) NOT NULL DEFAULT '1',
  `time_format` varchar(80) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `time_offset` float NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `pm_email_notify` tinyint(4) NOT NULL DEFAULT '0',
  `karma_bad` smallint(5) unsigned NOT NULL DEFAULT '0',
  `karma_good` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usertitle` varchar(255) NOT NULL DEFAULT '',
  `notify_announcements` tinyint(4) NOT NULL DEFAULT '1',
  `notify_regularity` tinyint(4) NOT NULL DEFAULT '1',
  `notify_send_body` tinyint(4) NOT NULL DEFAULT '0',
  `notify_types` tinyint(4) NOT NULL DEFAULT '2',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `member_ip2` varchar(255) NOT NULL DEFAULT '',
  `secret_question` varchar(255) NOT NULL DEFAULT '',
  `secret_answer` varchar(64) NOT NULL DEFAULT '',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `validation_code` varchar(10) NOT NULL DEFAULT '',
  `id_msg_last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `additional_groups` varchar(255) NOT NULL DEFAULT '',
  `smiley_set` varchar(48) NOT NULL DEFAULT '',
  `id_post_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_time_logged_in` int(10) unsigned NOT NULL DEFAULT '0',
  `password_salt` varchar(255) NOT NULL DEFAULT '',
  `ignore_boards` text NOT NULL,
  `warning` tinyint(4) NOT NULL DEFAULT '0',
  `passwd_flood` varchar(12) NOT NULL DEFAULT '',
  `pm_receive_from` tinyint(4) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_messages`
--

CREATE TABLE IF NOT EXISTS `forum_messages` (
  `id_msg` int(10) unsigned NOT NULL,
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `poster_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg_modified` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  `poster_email` varchar(255) NOT NULL DEFAULT '',
  `poster_ip` varchar(255) NOT NULL DEFAULT '',
  `smileys_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `modified_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_name` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `icon` varchar(16) NOT NULL DEFAULT 'xx',
  `approved` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_message_icons`
--

CREATE TABLE IF NOT EXISTS `forum_message_icons` (
  `id_icon` smallint(5) unsigned NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `filename` varchar(80) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon_order` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_moderators`
--

CREATE TABLE IF NOT EXISTS `forum_moderators` (
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_openid_assoc`
--

CREATE TABLE IF NOT EXISTS `forum_openid_assoc` (
  `server_url` text NOT NULL,
  `handle` varchar(255) NOT NULL DEFAULT '',
  `secret` text NOT NULL,
  `issued` int(10) NOT NULL DEFAULT '0',
  `expires` int(10) NOT NULL DEFAULT '0',
  `assoc_type` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_package_servers`
--

CREATE TABLE IF NOT EXISTS `forum_package_servers` (
  `id_server` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forum_package_servers`
--

INSERT INTO `forum_package_servers` (`id_server`, `name`, `url`) VALUES
(1, 'Simple Machines Third-party Mod Site', 'http://custom.simplemachines.org/packages/mods');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_permissions`
--

CREATE TABLE IF NOT EXISTS `forum_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forum_permissions`
--

INSERT INTO `forum_permissions` (`id_group`, `permission`, `add_deny`) VALUES
(-1, 'search_posts', 1),
(-1, 'calendar_view', 1),
(-1, 'view_stats', 1),
(-1, 'profile_view_any', 1),
(0, 'pm_send', 1),
(0, 'profile_view_own', 1),
(0, 'profile_view_any', 1),
(0, 'karma_edit', 1),
(0, 'calendar_view', 1),
(0, 'who_view', 1),
(2, 'karma_edit', 1),
(2, 'profile_view_any', 1),
(2, 'calendar_edit_any', 1),
(2, 'access_mod_center', 1),
(2, 'calendar_view', 1),
(2, 'search_posts', 1),
(2, 'who_view', 1),
(2, 'view_stats', 1),
(0, 'profile_identity_own', 1),
(0, 'view_stats', 1),
(0, 'view_mlist', 1),
(2, 'profile_view_own', 1),
(2, 'view_mlist', 1),
(0, 'pm_read', 1),
(10, 'profile_view_own', 1),
(9, 'profile_view_own', 1),
(11, 'profile_view_any', 1),
(10, 'profile_view_any', 1),
(9, 'profile_view_any', 1),
(11, 'profile_identity_own', 1),
(10, 'profile_identity_own', 1),
(9, 'profile_identity_own', 1),
(11, 'profile_extra_own', 1),
(10, 'profile_extra_own', 1),
(9, 'profile_extra_own', 1),
(11, 'pm_send', 1),
(10, 'pm_send', 1),
(9, 'pm_send', 1),
(11, 'pm_read', 1),
(10, 'pm_read', 1),
(9, 'pm_read', 1),
(11, 'karma_edit', 1),
(10, 'karma_edit', 1),
(9, 'karma_edit', 1),
(11, 'calendar_view', 1),
(10, 'calendar_view', 1),
(9, 'calendar_view', 1),
(0, 'profile_extra_own', 1),
(11, 'profile_view_own', 1),
(9, 'view_mlist', 1),
(10, 'view_mlist', 1),
(11, 'view_mlist', 1),
(9, 'view_stats', 1),
(10, 'view_stats', 1),
(11, 'view_stats', 1),
(9, 'who_view', 1),
(10, 'who_view', 1),
(11, 'who_view', 1),
(2, 'pm_read', 1),
(2, 'pm_send', 1),
(2, 'calendar_post', 1),
(2, 'profile_identity_own', 1),
(2, 'profile_extra_own', 1),
(2, 'profile_title_own', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_permission_profiles`
--

CREATE TABLE IF NOT EXISTS `forum_permission_profiles` (
  `id_profile` smallint(5) NOT NULL,
  `profile_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forum_permission_profiles`
--

INSERT INTO `forum_permission_profiles` (`id_profile`, `profile_name`) VALUES
(1, 'default'),
(2, 'no_polls'),
(3, 'reply_only'),
(4, 'read_only');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_personal_messages`
--

CREATE TABLE IF NOT EXISTS `forum_personal_messages` (
  `id_pm` int(10) unsigned NOT NULL,
  `id_pm_head` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `deleted_by_sender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `msgtime` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_pm_recipients`
--

CREATE TABLE IF NOT EXISTS `forum_pm_recipients` (
  `id_pm` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `labels` varchar(60) NOT NULL DEFAULT '-1',
  `bcc` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_pm_rules`
--

CREATE TABLE IF NOT EXISTS `forum_pm_rules` (
  `id_rule` int(10) unsigned NOT NULL,
  `id_member` int(10) unsigned NOT NULL DEFAULT '0',
  `rule_name` varchar(60) NOT NULL,
  `criteria` text NOT NULL,
  `actions` text NOT NULL,
  `delete_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_or` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_polls`
--

CREATE TABLE IF NOT EXISTS `forum_polls` (
  `id_poll` mediumint(8) unsigned NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `voting_locked` tinyint(1) NOT NULL DEFAULT '0',
  `max_votes` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `hide_results` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `change_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `num_guest_voters` int(10) unsigned NOT NULL DEFAULT '0',
  `reset_poll` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `poster_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_poll_choices`
--

CREATE TABLE IF NOT EXISTS `forum_poll_choices` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `votes` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_scheduled_tasks`
--

CREATE TABLE IF NOT EXISTS `forum_scheduled_tasks` (
  `id_task` smallint(5) NOT NULL,
  `next_time` int(10) NOT NULL DEFAULT '0',
  `time_offset` int(10) NOT NULL DEFAULT '0',
  `time_regularity` smallint(5) NOT NULL DEFAULT '0',
  `time_unit` varchar(1) NOT NULL DEFAULT 'h',
  `disabled` tinyint(3) NOT NULL DEFAULT '0',
  `task` varchar(24) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forum_scheduled_tasks`
--

INSERT INTO `forum_scheduled_tasks` (`id_task`, `next_time`, `time_offset`, `time_regularity`, `time_unit`, `disabled`, `task`) VALUES
(1, 1453690800, 0, 2, 'h', 0, 'approval_notification'),
(2, 1454281200, 0, 7, 'd', 0, 'auto_optimize'),
(3, 1453762860, 60, 1, 'd', 0, 'daily_maintenance'),
(5, 1453762800, 0, 1, 'd', 0, 'daily_digest'),
(6, 1454281200, 0, 1, 'w', 0, 'weekly_digest'),
(7, 1453762620, 86244, 1, 'd', 0, 'fetchSMfiles'),
(8, 0, 0, 1, 'd', 1, 'birthdayemails'),
(9, 1454281200, 0, 1, 'w', 0, 'weekly_maintenance'),
(10, 1451170920, 120, 1, 'd', 1, 'paid_subscriptions');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_sessions`
--

CREATE TABLE IF NOT EXISTS `forum_sessions` (
  `session_id` char(32) NOT NULL,
  `last_update` int(10) unsigned NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_settings`
--

CREATE TABLE IF NOT EXISTS `forum_settings` (
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forum_settings`
--

INSERT INTO `forum_settings` (`variable`, `value`) VALUES
('rand_seed', '2037504752'),
('integrate_login', 'callbackLogin'),
('next_task_time', '1463146599'),
('smfVersion', '2.0.11'),
('news', 'SMF - Just Installed!'),
('compactTopicPagesContiguous', '5'),
('compactTopicPagesEnable', '1'),
('enableStickyTopics', '1'),
('todayMod', '1'),
('karmaMode', ''),
('karmaTimeRestrictAdmins', '1'),
('enablePreviousNext', '1'),
('pollMode', '1'),
('enableVBStyleLogin', '1'),
('enableCompressedOutput', '1'),
('karmaWaitTime', '24'),
('karmaMinPosts', '50'),
('karmaLabel', 'Reputación:'),
('karmaSmiteLabel', '- Reputación'),
('karmaApplaudLabel', '+ Reputación'),
('attachmentSizeLimit', '128'),
('attachmentPostLimit', '192'),
('attachmentNumPerPostLimit', '4'),
('attachmentDirSizeLimit', '10240'),
('attachmentUploadDir', '/foro/attachments'),
('attachmentExtensions', 'doc,gif,jpg,mpg,pdf,png,txt,zip'),
('attachmentCheckExtensions', '0'),
('attachmentShowImages', '1'),
('attachmentEnable', '1'),
('attachmentEncryptFilenames', '1'),
('attachmentThumbnails', '1'),
('attachmentThumbWidth', '150'),
('attachmentThumbHeight', '150'),
('censorIgnoreCase', '1'),
('mostOnline', '19'),
('mostOnlineToday', '1'),
('mostDate', '1451534119'),
('allow_disableAnnounce', '1'),
('trackStats', '1'),
('userLanguage', '1'),
('titlesEnable', '1'),
('topicSummaryPosts', '15'),
('enableErrorLogging', '1'),
('max_image_width', '0'),
('max_image_height', '0'),
('onlineEnable', '1'),
('cal_enabled', '0'),
('cal_maxyear', '2020'),
('cal_minyear', '2008'),
('cal_daysaslink', '0'),
('cal_defaultboard', ''),
('cal_showholidays', '1'),
('cal_showbdays', '1'),
('cal_showevents', '1'),
('cal_showweeknum', '0'),
('cal_maxspan', '7'),
('smtp_host', ''),
('smtp_port', '25'),
('smtp_username', ''),
('smtp_password', ''),
('mail_type', '0'),
('timeLoadPageEnable', '0'),
('totalMembers', '133'),
('totalTopics', '102'),
('totalMessages', '861'),
('simpleSearch', '0'),
('censor_vulgar', 'kanox\nfenixzone\nforcegamers\nciudadaventura\nForce\ns1.fenixzone.com:7777\ns2.fenixzone.com:7777\ns3.fenixzone.com:7777\ns4.fenixzone.com:7777\n66.150.121.104:7777\nsamp.southangeles-rp.es:7777\n167.114.57.236:7777\nCiudadAventura\nUniversal\nHorizon\nVertigo\nfz\nlsrp\nls-rp\nls.rp'),
('censor_proper', '.\nSPAM\nSPAM\nSPAM\nSPAM\nSPAM\nSPAM\nSPAM\nSPAM\nSPAM\nSPAM\nSPAM\nSPAM\n\nSPAM\n\nSPAM\n\n\n'),
('enablePostHTML', '0'),
('theme_allow', '0'),
('theme_default', '1'),
('theme_guests', '4'),
('enableEmbeddedFlash', '0'),
('xmlnews_enable', '1'),
('xmlnews_maxlen', '255'),
('hotTopicPosts', '15'),
('hotTopicVeryPosts', '25'),
('registration_method', '3'),
('send_validation_onChange', '0'),
('send_welcomeEmail', '0'),
('allow_editDisplayName', '0'),
('allow_hideOnline', '0'),
('guest_hideContacts', '1'),
('spamWaitTime', '60'),
('pm_spam_settings', '10,0,20'),
('reserveWord', '0'),
('reserveCase', '1'),
('reserveUser', '1'),
('reserveName', '1'),
('reserveNames', 'Admin\nWebmaster\nGuest\nroot\nKanox\nOsvaldo_Pingote\nFenixZone\nFenix_Zone'),
('autoLinkUrls', '1'),
('banLastUpdated', '1452636082'),
('smileys_dir', '/foro/Smileys'),
('smileys_url', 'http://wattsrp.com/foro/Smileys'),
('avatar_directory', '/foro/avatars'),
('avatar_url', 'http://wattsrp.com/foro/avatars'),
('avatar_max_height_external', '65'),
('avatar_max_width_external', '65'),
('avatar_action_too_large', 'option_html_resize'),
('avatar_max_height_upload', '65'),
('avatar_max_width_upload', '65'),
('avatar_resize_upload', '1'),
('avatar_download_png', '1'),
('failed_login_threshold', '3'),
('oldTopicDays', '120'),
('edit_wait_time', '60'),
('edit_disable_time', '0'),
('autoFixDatabase', '1'),
('allow_guestAccess', '1'),
('time_format', '%B %d, %Y, %I:%M:%S %p'),
('number_format', '1234.00'),
('enableBBC', '1'),
('max_messageLength', '30000'),
('signature_settings', '1,500,0,1,0,0,0,0:'),
('autoOptMaxOnline', '0'),
('defaultMaxMessages', '15'),
('defaultMaxTopics', '20'),
('defaultMaxMembers', '30'),
('enableParticipation', '1'),
('recycle_enable', '0'),
('recycle_board', '0'),
('maxMsgID', '949'),
('enableAllMessages', '0'),
('fixLongWords', '0'),
('knownThemes', '1,2,3,4'),
('who_enabled', '1'),
('time_offset', '0'),
('cookieTime', '60'),
('lastActive', '60'),
('smiley_sets_known', 'default,aaron,akyhne'),
('smiley_sets_names', 'Alienine''s Set\nAaron''s Set\nAkyhne''s Set'),
('smiley_sets_default', 'default'),
('cal_days_for_index', '7'),
('requireAgreement', '1'),
('unapprovedMembers', '0'),
('default_personal_text', ''),
('package_make_backups', '1'),
('databaseSession_enable', '1'),
('databaseSession_loose', '1'),
('databaseSession_lifetime', '2880'),
('search_cache_size', '50'),
('search_results_per_page', '30'),
('search_weight_frequency', '30'),
('search_weight_age', '25'),
('search_weight_length', '20'),
('search_weight_subject', '15'),
('search_weight_first_message', '10'),
('search_max_results', '1200'),
('search_floodcontrol_time', '5'),
('permission_enable_deny', '0'),
('permission_enable_postgroups', '0'),
('mail_next_send', '0'),
('mail_recent', '0000000000|0'),
('settings_updated', '1453579651'),
('mostOnlineUpdated', '2016-07-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_smileys`
--

CREATE TABLE IF NOT EXISTS `forum_smileys` (
  `id_smiley` smallint(5) unsigned NOT NULL,
  `code` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(48) NOT NULL DEFAULT '',
  `description` varchar(80) NOT NULL DEFAULT '',
  `smiley_row` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_spiders`
--

CREATE TABLE IF NOT EXISTS `forum_spiders` (
  `id_spider` smallint(5) unsigned NOT NULL,
  `spider_name` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `ip_info` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_subscriptions`
--

CREATE TABLE IF NOT EXISTS `forum_subscriptions` (
  `id_subscribe` mediumint(8) unsigned NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `cost` text NOT NULL,
  `length` varchar(6) NOT NULL DEFAULT '',
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `add_groups` varchar(40) NOT NULL DEFAULT '',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `repeatable` tinyint(3) NOT NULL DEFAULT '0',
  `allow_partial` tinyint(3) NOT NULL DEFAULT '0',
  `reminder` tinyint(3) NOT NULL DEFAULT '0',
  `email_complete` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_themes`
--

CREATE TABLE IF NOT EXISTS `forum_themes` (
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_topics`
--

CREATE TABLE IF NOT EXISTS `forum_topics` (
  `id_topic` mediumint(8) unsigned NOT NULL,
  `is_sticky` tinyint(4) NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_first_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_started` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member_updated` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_previous_board` smallint(5) NOT NULL DEFAULT '0',
  `id_previous_topic` mediumint(8) NOT NULL DEFAULT '0',
  `num_replies` int(10) unsigned NOT NULL DEFAULT '0',
  `num_views` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `approved` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garajes`
--

CREATE TABLE IF NOT EXISTS `garajes` (
  `id` int(11) NOT NULL,
  `Casa` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `a` float NOT NULL,
  `VW` int(11) NOT NULL,
  `Abierto` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `int` int(11) NOT NULL,
  `vw` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Negocio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `muebles`
--

CREATE TABLE IF NOT EXISTS `muebles` (
  `id_mueble` int(11) NOT NULL,
  `casa` int(11) NOT NULL,
  `modelo` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `xx` float NOT NULL,
  `yy` float NOT NULL,
  `zz` float NOT NULL,
  `interior` int(11) NOT NULL,
  `virtualworld` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `negocios`
--

CREATE TABLE IF NOT EXISTS `negocios` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `EX` float NOT NULL,
  `EY` float NOT NULL,
  `EZ` float NOT NULL,
  `IX` float NOT NULL,
  `IY` float NOT NULL,
  `IZ` float NOT NULL,
  `Interior` int(11) NOT NULL,
  `IntExt` int(11) NOT NULL,
  `VW` int(11) NOT NULL,
  `Comprada` int(11) NOT NULL,
  `Comprador` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cerrada` int(11) NOT NULL,
  `Dinero` int(11) NOT NULL,
  `PSolidos` int(11) NOT NULL,
  `PLiquidos` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL DEFAULT '1',
  `Cerradura` int(11) NOT NULL,
  `Alarma` int(11) NOT NULL,
  `Camara` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pcu_cambiosnombre`
--

CREATE TABLE IF NOT EXISTS `pcu_cambiosnombre` (
  `CNameID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL DEFAULT '0',
  `nombre_viejo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_nuevo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pcu_certificacion`
--

CREATE TABLE IF NOT EXISTS `pcu_certificacion` (
  `CertID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL DEFAULT '0',
  `pregunta_1` text COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_1` text COLLATE utf8_unicode_ci NOT NULL,
  `pregunta_2` text COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_2` text COLLATE utf8_unicode_ci NOT NULL,
  `pregunta_3` text COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_3` text COLLATE utf8_unicode_ci NOT NULL,
  `pregunta_4` text COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_4` text COLLATE utf8_unicode_ci NOT NULL,
  `pregunta_5` text COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_5` text COLLATE utf8_unicode_ci NOT NULL,
  `pregunta_6` text COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_6` text COLLATE utf8_unicode_ci NOT NULL,
  `certificador` int(11) NOT NULL DEFAULT '0',
  `comentario` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pcu_certificar`
--

CREATE TABLE IF NOT EXISTS `pcu_certificar` (
  `CertificarID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `pregunta_1` text COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_1` text COLLATE utf8_unicode_ci NOT NULL,
  `pregunta_2` text COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_2` text COLLATE utf8_unicode_ci NOT NULL,
  `pregunta_3` text COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_3` text COLLATE utf8_unicode_ci NOT NULL,
  `pregunta_4` text COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_4` text COLLATE utf8_unicode_ci NOT NULL,
  `pregunta_5` text COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_5` text COLLATE utf8_unicode_ci NOT NULL,
  `pregunta_6` text COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_6` text COLLATE utf8_unicode_ci NOT NULL,
  `corregida` int(11) NOT NULL DEFAULT '0',
  `comentario` text COLLATE utf8_unicode_ci NOT NULL,
  `certificador` int(11) NOT NULL DEFAULT '0',
  `fecha` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pcu_confirmar`
--

CREATE TABLE IF NOT EXISTS `pcu_confirmar` (
  `ConfID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `codigo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` int(11) NOT NULL DEFAULT '0',
  `fecha` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `valor` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pcu_pregcerts`
--

CREATE TABLE IF NOT EXISTS `pcu_pregcerts` (
  `PreID` int(11) NOT NULL,
  `pregunta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `autor` int(11) NOT NULL DEFAULT '0',
  `estado` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pcu_pregtest`
--

CREATE TABLE IF NOT EXISTS `pcu_pregtest` (
  `TestID` int(11) NOT NULL,
  `pregunta` text COLLATE utf8_unicode_ci NOT NULL,
  `A` text COLLATE utf8_unicode_ci NOT NULL,
  `B` text COLLATE utf8_unicode_ci NOT NULL,
  `C` text COLLATE utf8_unicode_ci NOT NULL,
  `D` text COLLATE utf8_unicode_ci NOT NULL,
  `resultado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `autor` int(11) NOT NULL DEFAULT '0',
  `estado` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pcu_skins`
--

CREATE TABLE IF NOT EXISTS `pcu_skins` (
  `SkinID` int(11) NOT NULL,
  `sexo` smallint(1) NOT NULL DEFAULT '0',
  `estado` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pcu_skinstrabajo`
--

CREATE TABLE IF NOT EXISTS `pcu_skinstrabajo` (
  `id_skintrabajo` int(11) NOT NULL,
  `id_faccion` int(11) NOT NULL DEFAULT '0',
  `SkinID` int(11) NOT NULL DEFAULT '0',
  `estado` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pcu_usuarios`
--

CREATE TABLE IF NOT EXISTS `pcu_usuarios` (
  `UsuarioID` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ingreso` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ult_juego` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ult_pcu` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `sub_admin` int(11) NOT NULL,
  `int_test` int(11) NOT NULL DEFAULT '0',
  `int_cert` int(11) NOT NULL DEFAULT '0',
  `raza` smallint(1) NOT NULL DEFAULT '-1',
  `altura` smallint(3) NOT NULL DEFAULT '0',
  `peso` smallint(3) NOT NULL DEFAULT '0',
  `colorojos` smallint(2) NOT NULL DEFAULT '-1',
  `colorpelo` smallint(2) NOT NULL DEFAULT '-1',
  `procedencia` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `descfisica` text COLLATE utf8_spanish_ci NOT NULL,
  `descpsico` text COLLATE utf8_spanish_ci NOT NULL,
  `historia` text COLLATE utf8_spanish_ci NOT NULL,
  `comollegaste` text COLLATE utf8_spanish_ci NOT NULL,
  `cambio_nombre` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantaciones`
--

CREATE TABLE IF NOT EXISTS `plantaciones` (
  `id` int(11) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Tiempo` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `senales`
--

CREATE TABLE IF NOT EXISTS `senales` (
  `id` int(11) NOT NULL,
  `id_senal` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rz` float NOT NULL,
  `texto` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talleres`
--

CREATE TABLE IF NOT EXISTS `talleres` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Negocio` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `Int` int(11) NOT NULL DEFAULT '0',
  `Vw` int(11) NOT NULL DEFAULT '0',
  `txx` float NOT NULL,
  `tyy` float NOT NULL,
  `tzz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(35) NOT NULL,
  `Apodo` varchar(255) NOT NULL,
  `Password` varchar(35) NOT NULL,
  `Posiciones` varchar(150) NOT NULL DEFAULT '1642.1908,-2334.3503,13.5469,358.0489,0,0',
  `Datos` varchar(50) NOT NULL DEFAULT '0,1,1,1,1',
  `Admin` int(2) NOT NULL DEFAULT '0',
  `Dinero` varchar(10) NOT NULL DEFAULT '1000,2500',
  `Casas` varchar(50) NOT NULL DEFAULT '-1,-1,-1',
  `Negocio` int(5) NOT NULL DEFAULT '-1',
  `Coches` varchar(150) NOT NULL DEFAULT '-1,-1,-1,-1,-1,-1',
  `Faccion` varchar(20) NOT NULL DEFAULT '0,0,0',
  `Carcel` varchar(25) NOT NULL DEFAULT '0,0',
  `Medicos` varchar(25) NOT NULL DEFAULT '0,0,0',
  `Necesidades` varchar(20) NOT NULL DEFAULT '0,100,0',
  `Baneado` int(2) NOT NULL DEFAULT '0',
  `TBan` int(50) NOT NULL DEFAULT '0',
  `Skin` int(3) NOT NULL DEFAULT '26',
  `Uniforme` int(3) NOT NULL DEFAULT '26',
  `Vida` float NOT NULL DEFAULT '100',
  `Chaleco` float NOT NULL DEFAULT '0',
  `CuentaPrincipal` varchar(64) NOT NULL DEFAULT '-1',
  `Documentacion` varchar(30) NOT NULL DEFAULT '0,0',
  `PlacaPolicia` int(10) NOT NULL DEFAULT '0',
  `Trabajo` varchar(20) NOT NULL DEFAULT '0,0,0',
  `Servicio` varchar(20) NOT NULL DEFAULT '0,29',
  `Jugando` int(1) NOT NULL DEFAULT '0',
  `Licencias` varchar(50) NOT NULL DEFAULT '0,0,0,0,0,0,0,0',
  `DocFalsa` varchar(50) NOT NULL DEFAULT 'Ninguno,0',
  `LicenciasFalsas` varchar(50) NOT NULL DEFAULT '0,0,0,0,0,0,0,0',
  `Lenguajes` varchar(120) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0',
  `Premium` varchar(20) NOT NULL DEFAULT '0,0',
  `Advertencias` int(11) NOT NULL DEFAULT '0',
  `PuntosRol` varchar(20) NOT NULL DEFAULT '0,0',
  `Habilidad` varchar(120) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0',
  `Almacen` int(11) NOT NULL DEFAULT '-1',
  `Taller` int(11) NOT NULL DEFAULT '-1',
  `Heridas` varchar(35) NOT NULL DEFAULT '0,0,0,0,0,0,0',
  `Fisico` varchar(35) NOT NULL DEFAULT '0,0',
  `HorasJugadas` int(11) NOT NULL DEFAULT '1',
  `EspecialID` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0,0',
  `EspecialCan` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0,0',
  `EspecialTipo` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0,0',
  `Herido` int(11) NOT NULL DEFAULT '0',
  `CuentasBancarias` varchar(255) NOT NULL DEFAULT '-1,-1,-1,-1,-1',
  `BolsilloID` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0',
  `BolsilloCantidad` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0''',
  `BolsilloTipo` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0'''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `varios`
--

CREATE TABLE IF NOT EXISTS `varios` (
  `id` int(11) NOT NULL,
  `ImpuestosCasa` int(11) NOT NULL DEFAULT '30',
  `ImpuestosNegocio` int(11) NOT NULL DEFAULT '70',
  `ImpuestosCoche` int(11) NOT NULL DEFAULT '25',
  `CajaGobierno` int(11) NOT NULL DEFAULT '500000',
  `CajaLSRTV` int(11) NOT NULL DEFAULT '5000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE IF NOT EXISTS `vehiculos` (
  `ID` mediumint(9) NOT NULL,
  `Modelo` int(4) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Angle` float NOT NULL,
  `Color1` int(4) NOT NULL,
  `Color2` int(4) NOT NULL,
  `FaccionID` int(4) NOT NULL,
  `Interior` int(4) NOT NULL,
  `Virtual` int(11) NOT NULL DEFAULT '0',
  `Vida` float NOT NULL,
  `panels` int(4) NOT NULL,
  `doors` int(4) NOT NULL,
  `lights` int(4) NOT NULL,
  `tires` int(4) NOT NULL,
  `Gasolina` int(4) NOT NULL,
  `Job` int(4) NOT NULL,
  `Paintjob` int(2) NOT NULL,
  `Componentes` varchar(92) NOT NULL,
  `Dueno` char(32) NOT NULL,
  `Motor` int(4) NOT NULL DEFAULT '0',
  `Cerrado` int(4) NOT NULL DEFAULT '0',
  `Roto` int(4) NOT NULL DEFAULT '0',
  `Mal` int(11) NOT NULL DEFAULT '0',
  `Multa` int(11) NOT NULL DEFAULT '0',
  `Bloqueado` int(1) NOT NULL DEFAULT '0',
  `Descripcion` varchar(50) NOT NULL DEFAULT 'Admin',
  `MalID` varchar(128) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0',
  `MalCantidad` varchar(128) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0',
  `MalTipo` varchar(128) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesos`
--
ALTER TABLE `accesos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `actualizaciones`
--
ALTER TABLE `actualizaciones`
  ADD PRIMARY KEY (`id_actualizar`);

--
-- Indices de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `armaslegales`
--
ALTER TABLE `armaslegales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id_ban`);

--
-- Indices de la tabla `basuras`
--
ALTER TABLE `basuras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `casas`
--
ALTER TABLE `casas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuentasbancarias`
--
ALTER TABLE `cuentasbancarias`
  ADD PRIMARY KEY (`numerocuenta`);

--
-- Indices de la tabla `delitos`
--
ALTER TABLE `delitos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dinero`
--
ALTER TABLE `dinero`
  ADD PRIMARY KEY (`id_movimiento`);

--
-- Indices de la tabla `expulsiones`
--
ALTER TABLE `expulsiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facciones`
--
ALTER TABLE `facciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `forum_admin_info_files`
--
ALTER TABLE `forum_admin_info_files`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `filename` (`filename`(30));

--
-- Indices de la tabla `forum_attachments`
--
ALTER TABLE `forum_attachments`
  ADD PRIMARY KEY (`id_attach`),
  ADD UNIQUE KEY `id_member` (`id_member`,`id_attach`),
  ADD KEY `id_msg` (`id_msg`),
  ADD KEY `attachment_type` (`attachment_type`);

--
-- Indices de la tabla `forum_ban_groups`
--
ALTER TABLE `forum_ban_groups`
  ADD PRIMARY KEY (`id_ban_group`);

--
-- Indices de la tabla `forum_ban_items`
--
ALTER TABLE `forum_ban_items`
  ADD PRIMARY KEY (`id_ban`),
  ADD KEY `id_ban_group` (`id_ban_group`);

--
-- Indices de la tabla `forum_boards`
--
ALTER TABLE `forum_boards`
  ADD PRIMARY KEY (`id_board`),
  ADD UNIQUE KEY `categories` (`id_cat`,`id_board`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `id_msg_updated` (`id_msg_updated`),
  ADD KEY `member_groups` (`member_groups`(48));

--
-- Indices de la tabla `forum_board_permissions`
--
ALTER TABLE `forum_board_permissions`
  ADD PRIMARY KEY (`id_group`,`id_profile`,`permission`);

--
-- Indices de la tabla `forum_calendar`
--
ALTER TABLE `forum_calendar`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `start_date` (`start_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `topic` (`id_topic`,`id_member`);

--
-- Indices de la tabla `forum_calendar_holidays`
--
ALTER TABLE `forum_calendar_holidays`
  ADD PRIMARY KEY (`id_holiday`),
  ADD KEY `event_date` (`event_date`);

--
-- Indices de la tabla `forum_categories`
--
ALTER TABLE `forum_categories`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indices de la tabla `forum_collapsed_categories`
--
ALTER TABLE `forum_collapsed_categories`
  ADD PRIMARY KEY (`id_cat`,`id_member`);

--
-- Indices de la tabla `forum_custom_fields`
--
ALTER TABLE `forum_custom_fields`
  ADD PRIMARY KEY (`id_field`),
  ADD UNIQUE KEY `col_name` (`col_name`);

--
-- Indices de la tabla `forum_group_moderators`
--
ALTER TABLE `forum_group_moderators`
  ADD PRIMARY KEY (`id_group`,`id_member`);

--
-- Indices de la tabla `forum_log_actions`
--
ALTER TABLE `forum_log_actions`
  ADD PRIMARY KEY (`id_action`),
  ADD KEY `id_log` (`id_log`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_board` (`id_board`),
  ADD KEY `id_msg` (`id_msg`);

--
-- Indices de la tabla `forum_log_activity`
--
ALTER TABLE `forum_log_activity`
  ADD PRIMARY KEY (`date`),
  ADD KEY `most_on` (`most_on`);

--
-- Indices de la tabla `forum_log_banned`
--
ALTER TABLE `forum_log_banned`
  ADD PRIMARY KEY (`id_ban_log`),
  ADD KEY `log_time` (`log_time`);

--
-- Indices de la tabla `forum_log_boards`
--
ALTER TABLE `forum_log_boards`
  ADD PRIMARY KEY (`id_member`,`id_board`);

--
-- Indices de la tabla `forum_log_comments`
--
ALTER TABLE `forum_log_comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_recipient` (`id_recipient`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `comment_type` (`comment_type`);

--
-- Indices de la tabla `forum_log_errors`
--
ALTER TABLE `forum_log_errors`
  ADD PRIMARY KEY (`id_error`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `ip` (`ip`);

--
-- Indices de la tabla `forum_log_floodcontrol`
--
ALTER TABLE `forum_log_floodcontrol`
  ADD PRIMARY KEY (`ip`,`log_type`);

--
-- Indices de la tabla `forum_log_group_requests`
--
ALTER TABLE `forum_log_group_requests`
  ADD PRIMARY KEY (`id_request`),
  ADD UNIQUE KEY `id_member` (`id_member`,`id_group`);

--
-- Indices de la tabla `forum_log_karma`
--
ALTER TABLE `forum_log_karma`
  ADD PRIMARY KEY (`id_target`,`id_executor`),
  ADD KEY `log_time` (`log_time`);

--
-- Indices de la tabla `forum_log_mark_read`
--
ALTER TABLE `forum_log_mark_read`
  ADD PRIMARY KEY (`id_member`,`id_board`);

--
-- Indices de la tabla `forum_log_member_notices`
--
ALTER TABLE `forum_log_member_notices`
  ADD PRIMARY KEY (`id_notice`);

--
-- Indices de la tabla `forum_log_notify`
--
ALTER TABLE `forum_log_notify`
  ADD PRIMARY KEY (`id_member`,`id_topic`,`id_board`),
  ADD KEY `id_topic` (`id_topic`,`id_member`);

--
-- Indices de la tabla `forum_log_online`
--
ALTER TABLE `forum_log_online`
  ADD PRIMARY KEY (`session`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `id_member` (`id_member`);

--
-- Indices de la tabla `forum_log_packages`
--
ALTER TABLE `forum_log_packages`
  ADD PRIMARY KEY (`id_install`),
  ADD KEY `filename` (`filename`(15));

--
-- Indices de la tabla `forum_log_polls`
--
ALTER TABLE `forum_log_polls`
  ADD KEY `id_poll` (`id_poll`,`id_member`,`id_choice`);

--
-- Indices de la tabla `forum_log_reported`
--
ALTER TABLE `forum_log_reported`
  ADD PRIMARY KEY (`id_report`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_topic` (`id_topic`),
  ADD KEY `closed` (`closed`),
  ADD KEY `time_started` (`time_started`),
  ADD KEY `id_msg` (`id_msg`);

--
-- Indices de la tabla `forum_log_reported_comments`
--
ALTER TABLE `forum_log_reported_comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_report` (`id_report`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `time_sent` (`time_sent`);

--
-- Indices de la tabla `forum_log_scheduled_tasks`
--
ALTER TABLE `forum_log_scheduled_tasks`
  ADD PRIMARY KEY (`id_log`);

--
-- Indices de la tabla `forum_log_search_messages`
--
ALTER TABLE `forum_log_search_messages`
  ADD PRIMARY KEY (`id_search`,`id_msg`);

--
-- Indices de la tabla `forum_log_search_results`
--
ALTER TABLE `forum_log_search_results`
  ADD PRIMARY KEY (`id_search`,`id_topic`);

--
-- Indices de la tabla `forum_log_search_subjects`
--
ALTER TABLE `forum_log_search_subjects`
  ADD PRIMARY KEY (`word`,`id_topic`),
  ADD KEY `id_topic` (`id_topic`);

--
-- Indices de la tabla `forum_log_search_topics`
--
ALTER TABLE `forum_log_search_topics`
  ADD PRIMARY KEY (`id_search`,`id_topic`);

--
-- Indices de la tabla `forum_log_spider_hits`
--
ALTER TABLE `forum_log_spider_hits`
  ADD PRIMARY KEY (`id_hit`),
  ADD KEY `id_spider` (`id_spider`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `processed` (`processed`);

--
-- Indices de la tabla `forum_log_spider_stats`
--
ALTER TABLE `forum_log_spider_stats`
  ADD PRIMARY KEY (`stat_date`,`id_spider`);

--
-- Indices de la tabla `forum_log_subscribed`
--
ALTER TABLE `forum_log_subscribed`
  ADD PRIMARY KEY (`id_sublog`),
  ADD UNIQUE KEY `id_subscribe` (`id_subscribe`,`id_member`),
  ADD KEY `end_time` (`end_time`),
  ADD KEY `reminder_sent` (`reminder_sent`),
  ADD KEY `payments_pending` (`payments_pending`),
  ADD KEY `status` (`status`),
  ADD KEY `id_member` (`id_member`);

--
-- Indices de la tabla `forum_log_topics`
--
ALTER TABLE `forum_log_topics`
  ADD PRIMARY KEY (`id_member`,`id_topic`),
  ADD KEY `id_topic` (`id_topic`);

--
-- Indices de la tabla `forum_mail_queue`
--
ALTER TABLE `forum_mail_queue`
  ADD PRIMARY KEY (`id_mail`),
  ADD KEY `time_sent` (`time_sent`),
  ADD KEY `mail_priority` (`priority`,`id_mail`);

--
-- Indices de la tabla `forum_membergroups`
--
ALTER TABLE `forum_membergroups`
  ADD PRIMARY KEY (`id_group`),
  ADD KEY `min_posts` (`min_posts`);

--
-- Indices de la tabla `forum_members`
--
ALTER TABLE `forum_members`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `real_name` (`real_name`),
  ADD KEY `date_registered` (`date_registered`),
  ADD KEY `id_group` (`id_group`),
  ADD KEY `birthdate` (`birthdate`),
  ADD KEY `posts` (`posts`),
  ADD KEY `last_login` (`last_login`),
  ADD KEY `lngfile` (`lngfile`(30)),
  ADD KEY `id_post_group` (`id_post_group`),
  ADD KEY `warning` (`warning`),
  ADD KEY `total_time_logged_in` (`total_time_logged_in`),
  ADD KEY `id_theme` (`id_theme`);

--
-- Indices de la tabla `forum_messages`
--
ALTER TABLE `forum_messages`
  ADD PRIMARY KEY (`id_msg`),
  ADD UNIQUE KEY `topic` (`id_topic`,`id_msg`),
  ADD UNIQUE KEY `id_board` (`id_board`,`id_msg`),
  ADD UNIQUE KEY `id_member` (`id_member`,`id_msg`),
  ADD KEY `approved` (`approved`),
  ADD KEY `ip_index` (`poster_ip`(15),`id_topic`),
  ADD KEY `participation` (`id_member`,`id_topic`),
  ADD KEY `show_posts` (`id_member`,`id_board`),
  ADD KEY `id_topic` (`id_topic`),
  ADD KEY `id_member_msg` (`id_member`,`approved`,`id_msg`),
  ADD KEY `current_topic` (`id_topic`,`id_msg`,`id_member`,`approved`),
  ADD KEY `related_ip` (`id_member`,`poster_ip`,`id_msg`);

--
-- Indices de la tabla `forum_message_icons`
--
ALTER TABLE `forum_message_icons`
  ADD PRIMARY KEY (`id_icon`),
  ADD KEY `id_board` (`id_board`);

--
-- Indices de la tabla `forum_moderators`
--
ALTER TABLE `forum_moderators`
  ADD PRIMARY KEY (`id_board`,`id_member`);

--
-- Indices de la tabla `forum_openid_assoc`
--
ALTER TABLE `forum_openid_assoc`
  ADD PRIMARY KEY (`server_url`(125),`handle`(125)),
  ADD KEY `expires` (`expires`);

--
-- Indices de la tabla `forum_package_servers`
--
ALTER TABLE `forum_package_servers`
  ADD PRIMARY KEY (`id_server`);

--
-- Indices de la tabla `forum_permissions`
--
ALTER TABLE `forum_permissions`
  ADD PRIMARY KEY (`id_group`,`permission`);

--
-- Indices de la tabla `forum_permission_profiles`
--
ALTER TABLE `forum_permission_profiles`
  ADD PRIMARY KEY (`id_profile`);

--
-- Indices de la tabla `forum_personal_messages`
--
ALTER TABLE `forum_personal_messages`
  ADD PRIMARY KEY (`id_pm`),
  ADD KEY `id_member` (`id_member_from`,`deleted_by_sender`),
  ADD KEY `msgtime` (`msgtime`),
  ADD KEY `id_pm_head` (`id_pm_head`);

--
-- Indices de la tabla `forum_pm_recipients`
--
ALTER TABLE `forum_pm_recipients`
  ADD PRIMARY KEY (`id_pm`,`id_member`),
  ADD UNIQUE KEY `id_member` (`id_member`,`deleted`,`id_pm`);

--
-- Indices de la tabla `forum_pm_rules`
--
ALTER TABLE `forum_pm_rules`
  ADD PRIMARY KEY (`id_rule`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `delete_pm` (`delete_pm`);

--
-- Indices de la tabla `forum_polls`
--
ALTER TABLE `forum_polls`
  ADD PRIMARY KEY (`id_poll`);

--
-- Indices de la tabla `forum_poll_choices`
--
ALTER TABLE `forum_poll_choices`
  ADD PRIMARY KEY (`id_poll`,`id_choice`);

--
-- Indices de la tabla `forum_scheduled_tasks`
--
ALTER TABLE `forum_scheduled_tasks`
  ADD PRIMARY KEY (`id_task`),
  ADD UNIQUE KEY `task` (`task`),
  ADD KEY `next_time` (`next_time`),
  ADD KEY `disabled` (`disabled`);

--
-- Indices de la tabla `forum_sessions`
--
ALTER TABLE `forum_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indices de la tabla `forum_settings`
--
ALTER TABLE `forum_settings`
  ADD PRIMARY KEY (`variable`(30));

--
-- Indices de la tabla `forum_smileys`
--
ALTER TABLE `forum_smileys`
  ADD PRIMARY KEY (`id_smiley`);

--
-- Indices de la tabla `forum_spiders`
--
ALTER TABLE `forum_spiders`
  ADD PRIMARY KEY (`id_spider`);

--
-- Indices de la tabla `forum_subscriptions`
--
ALTER TABLE `forum_subscriptions`
  ADD PRIMARY KEY (`id_subscribe`),
  ADD KEY `active` (`active`);

--
-- Indices de la tabla `forum_themes`
--
ALTER TABLE `forum_themes`
  ADD PRIMARY KEY (`id_theme`,`id_member`,`variable`(30)),
  ADD KEY `id_member` (`id_member`);

--
-- Indices de la tabla `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id_topic`),
  ADD UNIQUE KEY `last_message` (`id_last_msg`,`id_board`),
  ADD UNIQUE KEY `first_message` (`id_first_msg`,`id_board`),
  ADD UNIQUE KEY `poll` (`id_poll`,`id_topic`),
  ADD KEY `is_sticky` (`is_sticky`),
  ADD KEY `approved` (`approved`),
  ADD KEY `id_board` (`id_board`),
  ADD KEY `member_started` (`id_member_started`,`id_board`),
  ADD KEY `last_message_sticky` (`id_board`,`is_sticky`,`id_last_msg`),
  ADD KEY `board_news` (`id_board`,`id_first_msg`);

--
-- Indices de la tabla `garajes`
--
ALTER TABLE `garajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `muebles`
--
ALTER TABLE `muebles`
  ADD PRIMARY KEY (`id_mueble`);

--
-- Indices de la tabla `negocios`
--
ALTER TABLE `negocios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pcu_cambiosnombre`
--
ALTER TABLE `pcu_cambiosnombre`
  ADD PRIMARY KEY (`CNameID`);

--
-- Indices de la tabla `pcu_certificacion`
--
ALTER TABLE `pcu_certificacion`
  ADD PRIMARY KEY (`CertID`),
  ADD UNIQUE KEY `UsuarioID` (`UsuarioID`);

--
-- Indices de la tabla `pcu_certificar`
--
ALTER TABLE `pcu_certificar`
  ADD PRIMARY KEY (`CertificarID`),
  ADD UNIQUE KEY `UsuarioID` (`UsuarioID`);

--
-- Indices de la tabla `pcu_confirmar`
--
ALTER TABLE `pcu_confirmar`
  ADD PRIMARY KEY (`ConfID`);

--
-- Indices de la tabla `pcu_pregcerts`
--
ALTER TABLE `pcu_pregcerts`
  ADD PRIMARY KEY (`PreID`);

--
-- Indices de la tabla `pcu_pregtest`
--
ALTER TABLE `pcu_pregtest`
  ADD PRIMARY KEY (`TestID`);

--
-- Indices de la tabla `pcu_skinstrabajo`
--
ALTER TABLE `pcu_skinstrabajo`
  ADD PRIMARY KEY (`id_skintrabajo`);

--
-- Indices de la tabla `pcu_usuarios`
--
ALTER TABLE `pcu_usuarios`
  ADD PRIMARY KEY (`UsuarioID`);

--
-- Indices de la tabla `plantaciones`
--
ALTER TABLE `plantaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `senales`
--
ALTER TABLE `senales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `talleres`
--
ALTER TABLE `talleres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `varios`
--
ALTER TABLE `varios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesos`
--
ALTER TABLE `accesos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1977;
--
-- AUTO_INCREMENT de la tabla `actualizaciones`
--
ALTER TABLE `actualizaciones`
  MODIFY `id_actualizar` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `armaslegales`
--
ALTER TABLE `armaslegales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT de la tabla `bans`
--
ALTER TABLE `bans`
  MODIFY `id_ban` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `basuras`
--
ALTER TABLE `basuras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `casas`
--
ALTER TABLE `casas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=388;
--
-- AUTO_INCREMENT de la tabla `delitos`
--
ALTER TABLE `delitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `dinero`
--
ALTER TABLE `dinero`
  MODIFY `id_movimiento` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `expulsiones`
--
ALTER TABLE `expulsiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=838;
--
-- AUTO_INCREMENT de la tabla `facciones`
--
ALTER TABLE `facciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `forum_admin_info_files`
--
ALTER TABLE `forum_admin_info_files`
  MODIFY `id_file` tinyint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_attachments`
--
ALTER TABLE `forum_attachments`
  MODIFY `id_attach` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_ban_groups`
--
ALTER TABLE `forum_ban_groups`
  MODIFY `id_ban_group` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_ban_items`
--
ALTER TABLE `forum_ban_items`
  MODIFY `id_ban` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `forum_boards`
--
ALTER TABLE `forum_boards`
  MODIFY `id_board` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_calendar`
--
ALTER TABLE `forum_calendar`
  MODIFY `id_event` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_calendar_holidays`
--
ALTER TABLE `forum_calendar_holidays`
  MODIFY `id_holiday` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_categories`
--
ALTER TABLE `forum_categories`
  MODIFY `id_cat` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `forum_custom_fields`
--
ALTER TABLE `forum_custom_fields`
  MODIFY `id_field` smallint(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_log_actions`
--
ALTER TABLE `forum_log_actions`
  MODIFY `id_action` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_log_banned`
--
ALTER TABLE `forum_log_banned`
  MODIFY `id_ban_log` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_log_comments`
--
ALTER TABLE `forum_log_comments`
  MODIFY `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_log_errors`
--
ALTER TABLE `forum_log_errors`
  MODIFY `id_error` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_log_group_requests`
--
ALTER TABLE `forum_log_group_requests`
  MODIFY `id_request` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_log_member_notices`
--
ALTER TABLE `forum_log_member_notices`
  MODIFY `id_notice` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_log_packages`
--
ALTER TABLE `forum_log_packages`
  MODIFY `id_install` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `forum_log_reported`
--
ALTER TABLE `forum_log_reported`
  MODIFY `id_report` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_log_reported_comments`
--
ALTER TABLE `forum_log_reported_comments`
  MODIFY `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_log_scheduled_tasks`
--
ALTER TABLE `forum_log_scheduled_tasks`
  MODIFY `id_log` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_log_spider_hits`
--
ALTER TABLE `forum_log_spider_hits`
  MODIFY `id_hit` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_log_subscribed`
--
ALTER TABLE `forum_log_subscribed`
  MODIFY `id_sublog` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_mail_queue`
--
ALTER TABLE `forum_mail_queue`
  MODIFY `id_mail` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_membergroups`
--
ALTER TABLE `forum_membergroups`
  MODIFY `id_group` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_members`
--
ALTER TABLE `forum_members`
  MODIFY `id_member` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_messages`
--
ALTER TABLE `forum_messages`
  MODIFY `id_msg` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_message_icons`
--
ALTER TABLE `forum_message_icons`
  MODIFY `id_icon` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_package_servers`
--
ALTER TABLE `forum_package_servers`
  MODIFY `id_server` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `forum_permission_profiles`
--
ALTER TABLE `forum_permission_profiles`
  MODIFY `id_profile` smallint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `forum_personal_messages`
--
ALTER TABLE `forum_personal_messages`
  MODIFY `id_pm` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_pm_rules`
--
ALTER TABLE `forum_pm_rules`
  MODIFY `id_rule` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_polls`
--
ALTER TABLE `forum_polls`
  MODIFY `id_poll` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_scheduled_tasks`
--
ALTER TABLE `forum_scheduled_tasks`
  MODIFY `id_task` smallint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `forum_smileys`
--
ALTER TABLE `forum_smileys`
  MODIFY `id_smiley` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_spiders`
--
ALTER TABLE `forum_spiders`
  MODIFY `id_spider` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_subscriptions`
--
ALTER TABLE `forum_subscriptions`
  MODIFY `id_subscribe` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id_topic` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `garajes`
--
ALTER TABLE `garajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `muebles`
--
ALTER TABLE `muebles`
  MODIFY `id_mueble` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `negocios`
--
ALTER TABLE `negocios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pcu_cambiosnombre`
--
ALTER TABLE `pcu_cambiosnombre`
  MODIFY `CNameID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pcu_certificacion`
--
ALTER TABLE `pcu_certificacion`
  MODIFY `CertID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pcu_certificar`
--
ALTER TABLE `pcu_certificar`
  MODIFY `CertificarID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pcu_confirmar`
--
ALTER TABLE `pcu_confirmar`
  MODIFY `ConfID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pcu_pregcerts`
--
ALTER TABLE `pcu_pregcerts`
  MODIFY `PreID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pcu_pregtest`
--
ALTER TABLE `pcu_pregtest`
  MODIFY `TestID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pcu_skinstrabajo`
--
ALTER TABLE `pcu_skinstrabajo`
  MODIFY `id_skintrabajo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `plantaciones`
--
ALTER TABLE `plantaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `senales`
--
ALTER TABLE `senales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `talleres`
--
ALTER TABLE `talleres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `varios`
--
ALTER TABLE `varios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
