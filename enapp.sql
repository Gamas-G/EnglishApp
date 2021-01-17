-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2020 a las 19:37:52
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `enapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `USER` varchar(30) NOT NULL,
  `PASS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`ID`, `USER`, `PASS`) VALUES
(1, 'teacher_palomo', 'englishClass'),
(2, 'user', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examples`
--

CREATE TABLE `examples` (
  `ID` int(11) NOT NULL,
  `simplePresent` text CHARACTER SET latin1 NOT NULL,
  `simplePast` text CHARACTER SET latin1 NOT NULL,
  `pastParticiple` text CHARACTER SET latin1 NOT NULL,
  `type` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `examples`
--

INSERT INTO `examples` (`ID`, `simplePresent`, `simplePast`, `pastParticiple`, `type`) VALUES
(1, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(2, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(3, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(4, 'vacio', 'vacio', 'vacio\r', 'REGULAR'),
(5, 'vacio', 'vacio', 'vacio', 'IRREGULAR'),
(6, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(7, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(8, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(9, 'vacio', 'vacio', 'vacio\r', 'REGULAR'),
(10, 'vacio', 'vacio', 'vacio', 'IRREGULAR'),
(11, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(12, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(13, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(14, 'vacio', 'vacio', 'vacio\r', 'REGULAR'),
(15, 'vacio', 'vacio', 'vacio', 'IRREGULAR'),
(16, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(17, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(18, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(19, 'vacio', 'vacio', 'vacio\r', 'REGULAR'),
(20, 'vacio', 'vacio', 'vacio', 'IRREGULAR'),
(21, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(22, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(23, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(24, 'vacio', 'vacio', 'vacio\r', 'REGULAR'),
(25, 'vacio', 'vacio', 'vacio', 'IRREGULAR'),
(26, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(27, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(28, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(29, 'vacio', 'vacio', 'vacio\r', 'REGULAR'),
(30, 'vacio', 'vacio', 'vacio', 'IRREGULAR'),
(31, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(32, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(33, 'vacio', 'vacio', 'vacio\r', 'IRREGULAR'),
(34, 'vacio', 'vacio', 'vacio\r', 'REGULAR'),
(35, 'vacio', 'vacio', 'vacio', 'IRREGULAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fuente`
--

CREATE TABLE `fuente` (
  `id` int(3) NOT NULL,
  `infinitive` varchar(8) DEFAULT NULL,
  `past` varchar(9) DEFAULT NULL,
  `pronunciation` varchar(2) DEFAULT NULL,
  `pastParticiple` varchar(12) DEFAULT NULL,
  `gerund` varchar(10) DEFAULT NULL,
  `spanish` varchar(11) DEFAULT NULL,
  `type` varchar(9) DEFAULT NULL,
  `imagen` varchar(25) DEFAULT NULL,
  `idUnit` int(1) DEFAULT NULL,
  `exampleSimplePresent` text NOT NULL,
  `exampleSimplePast` text NOT NULL,
  `examplePastParticiple` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fuente`
--

INSERT INTO `fuente` (`id`, `infinitive`, `past`, `pronunciation`, `pastParticiple`, `gerund`, `spanish`, `type`, `imagen`, `idUnit`, `exampleSimplePresent`, `exampleSimplePast`, `examplePastParticiple`) VALUES
(1, 'RUN', 'RAN', '0', 'RUN', 'RUNNING', 'CORRER', 'IRREGULAR', 'RUN.png', 3, 'vacio', 'vacio', 'vacio\r'),
(2, 'RUN', 'RAN', '0', 'RUN', 'RUNNING', 'CORRER', 'IRREGULAR', 'RUN.png', 1, 'vacio', 'vacio', 'vacio\r'),
(3, 'RUN', 'RAN', '0', 'RUN', 'RUNNING', 'CORRER', 'IRREGULAR', 'RUN.png', 2, 'vacio', 'vacio', 'vacio\r'),
(4, 'SWIM', 'SWIM', '0', 'SWIM', 'SWIM', 'NADAR', 'REGULAR', 'SWIM.png', 2, 'vacio', 'vacio', 'vacio\r'),
(5, 'SING', 'SANG', '0', 'SUNG', 'SINGING', 'CANTAR', 'IRREGULAR', 'SING.jpg', 3, 'vacio', 'vacio', 'vacio');

--
-- Disparadores `fuente`
--
DELIMITER $$
CREATE TRIGGER `triggerFuente` AFTER INSERT ON `fuente` FOR EACH ROW INSERT INTO verbs(verbs.infinitive, verbs.past, verbs.pronunciation, verbs.pastParticiple,verbs.gerund, verbs.spanish, verbs.type, verbs.imagen) SELECT  fuente.infinitive, fuente.past, fuente.pronunciation, fuente.pastParticiple, fuente.gerund, fuente.spanish, fuente.type, fuente.imagen FROM fuente
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relation`
--

CREATE TABLE `relation` (
  `IdVerb` int(11) NOT NULL,
  `IdTri` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `relation`
--

INSERT INTO `relation` (`IdVerb`, `IdTri`) VALUES
(1, 3),
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(1, 3),
(1, 3),
(1, 1),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 3),
(1, 1),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 3),
(1, 1),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 3),
(1, 1),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 3),
(1, 1),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 3),
(1, 1),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 1),
(1, 2),
(1, 3),
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `verbs`
--

CREATE TABLE `verbs` (
  `ID` int(11) NOT NULL,
  `infinitive` varchar(40) CHARACTER SET latin1 NOT NULL,
  `past` varchar(40) CHARACTER SET latin1 NOT NULL,
  `pronunciation` varchar(40) CHARACTER SET latin1 NOT NULL,
  `pastParticiple` varchar(40) CHARACTER SET latin1 NOT NULL,
  `gerund` varchar(40) CHARACTER SET latin1 NOT NULL,
  `spanish` varchar(40) CHARACTER SET latin1 NOT NULL,
  `type` varchar(10) CHARACTER SET latin1 NOT NULL,
  `imagen` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `verbs`
--

INSERT INTO `verbs` (`ID`, `infinitive`, `past`, `pronunciation`, `pastParticiple`, `gerund`, `spanish`, `type`, `imagen`) VALUES
(1, 'RUN', 'RAN', '0', 'RUN', 'RUNNING', 'CORRER', 'IRREGULAR', 'RUN.png'),
(2, 'SWIM', 'SWIM', '0', 'SWIM', 'SWIM', 'NADAR', 'REGULAR', 'SWIM.png'),
(3, 'SING', 'SANG', '0', 'SUNG', 'SINGING', 'CANTAR', 'IRREGULAR', 'SING.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `examples`
--
ALTER TABLE `examples`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `fuente`
--
ALTER TABLE `fuente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `verbs`
--
ALTER TABLE `verbs`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `examples`
--
ALTER TABLE `examples`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `fuente`
--
ALTER TABLE `fuente`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `verbs`
--
ALTER TABLE `verbs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
