-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2018 a las 13:40:16
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sgpp`
--
CREATE DATABASE IF NOT EXISTS `sgpp` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `sgpp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_conocimiento`
--

DROP TABLE IF EXISTS `areas_conocimiento`;
CREATE TABLE `areas_conocimiento` (
  `id` int(11) NOT NULL COMMENT 'id de are de conocimiento',
  `nombre_area` varchar(200) COLLATE utf8_spanish_ci NOT NULL COMMENT 'nombre de area de conocimiento'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `areas_conocimiento`
--

INSERT INTO `areas_conocimiento` (`id`, `nombre_area`) VALUES
(1, 'Arte y Arquitectura'),
(2, 'Economía, Administración y Comercio'),
(3, 'Salud'),
(4, 'Ciencia'),
(5, 'Agropecuaria y Medio Ambiente'),
(6, 'Derecho'),
(7, 'Humanidades'),
(8, 'Tecnología'),
(9, 'Educación'),
(10, 'Ciencias Sociales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronogramas`
--

DROP TABLE IF EXISTS `cronogramas`;
CREATE TABLE `cronogramas` (
  `id_cronograma` int(11) NOT NULL COMMENT 'id de cronograma que pertence a un proyecto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

DROP TABLE IF EXISTS `facultades`;
CREATE TABLE `facultades` (
  `id_faacultad` int(11) NOT NULL COMMENT 'id de la facultad',
  `nombre_facultad` varchar(200) COLLATE utf8_spanish_ci NOT NULL COMMENT 'nombre de facultad '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadores`
--

DROP TABLE IF EXISTS `indicadores`;
CREATE TABLE `indicadores` (
  `id_indicadores` int(11) NOT NULL COMMENT 'id de indicador',
  `id_matriz` int(11) NOT NULL COMMENT 'id de matriz a la que pertenece el indicador',
  `nombre_indicador` int(11) NOT NULL COMMENT 'nombre del indicador',
  `objetivo` int(11) NOT NULL COMMENT 'objetivo del indicador',
  `medio_verificacion` int(11) NOT NULL COMMENT 'medio de verificacion del indicador',
  `supuesto` int(11) NOT NULL COMMENT 'supuesto del indicador'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas`
--

DROP TABLE IF EXISTS `lineas`;
CREATE TABLE `lineas` (
  `id_linea` int(11) NOT NULL COMMENT 'id de linea',
  `nombre_linea` varchar(200) COLLATE utf8_spanish_ci NOT NULL COMMENT 'nobre de linea'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriz`
--

DROP TABLE IF EXISTS `matriz`;
CREATE TABLE `matriz` (
  `id_matriz` int(11) NOT NULL COMMENT 'id de matriz que pertenece a un proyecto',
  `id_proyecto` int(11) NOT NULL COMMENT 'id de proyecto al que pertenece la matriz'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivos_desarrollos`
--

DROP TABLE IF EXISTS `objetivos_desarrollos`;
CREATE TABLE `objetivos_desarrollos` (
  `id_objetivo` int(11) NOT NULL COMMENT 'id de objetivo de desarrollo',
  `nombre_objetuvo` varchar(200) COLLATE utf8_spanish_ci NOT NULL COMMENT 'nombre de objetivo de desarrollo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

DROP TABLE IF EXISTS `perfil`;
CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL COMMENT 'id de perfil ',
  `id_proyecto` int(11) NOT NULL COMMENT 'id de proyecto al que pertenece el perfil',
  `id_facultad` int(11) NOT NULL COMMENT 'id de facultad a la que pertenece el proyecto',
  `decano` varchar(100) COLLATE utf8_spanish_ci NOT NULL COMMENT 'decano de la facultad que ejecuta el proyecto',
  `id_area_conocimiento` int(11) NOT NULL COMMENT 'id de area de conocimiento',
  `coordinador_proyecto` varchar(200) COLLATE utf8_spanish_ci NOT NULL COMMENT 'coordinador del proyecto',
  `equipo_responsable` varchar(600) COLLATE utf8_spanish_ci NOT NULL COMMENT 'personas responsables en la ejecucion del proyecto',
  `institucion_contraparte` varchar(300) COLLATE utf8_spanish_ci NOT NULL COMMENT 'institucion que trabaja en conjunto para la ejecucion del proyecto',
  `nombre_proyecto` varchar(500) COLLATE utf8_spanish_ci NOT NULL COMMENT 'nombre del proyecto',
  `id_linea` int(11) NOT NULL COMMENT 'id de linea',
  `id_ods` int(11) NOT NULL COMMENT 'id de ods',
  `total_poblacion` int(11) NOT NULL COMMENT 'total de poblacion beneficiada ',
  `p_hombres` int(11) NOT NULL COMMENT 'porcentaje de hombre de la poblacion beneficiada',
  `p_mujeres` int(11) NOT NULL COMMENT 'porcentaje de mujeres de la poblacion beneficiada',
  `area_geografica` varchar(600) COLLATE utf8_spanish_ci NOT NULL COMMENT 'area geografic dondese ejecuta el proyecto',
  `presentacion` varchar(2000) COLLATE utf8_spanish_ci NOT NULL COMMENT 'presentacion del proyecto',
  `antecedentes` varchar(1500) COLLATE utf8_spanish_ci NOT NULL COMMENT 'antecedentes del proyecto',
  `justificacion` varchar(4500) COLLATE utf8_spanish_ci NOT NULL COMMENT 'justificacion del proyecto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `id_matriz` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `id_cronograma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

DROP TABLE IF EXISTS `resultados`;
CREATE TABLE `resultados` (
  `id_resultado` int(11) NOT NULL COMMENT 'id de resultado',
  `nombre_resultado` varchar(200) COLLATE utf8_spanish_ci NOT NULL COMMENT 'nombre de resultado',
  `id_matriz` int(11) NOT NULL COMMENT 'id de matriz'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id_roles` int(11) NOT NULL COMMENT 'id de rol',
  `nombre_rol` int(11) NOT NULL COMMENT 'nombre de rol',
  `descripcion` int(11) NOT NULL COMMENT 'descripción del rol'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `apellido` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas_conocimiento`
--
ALTER TABLE `areas_conocimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cronogramas`
--
ALTER TABLE `cronogramas`
  ADD PRIMARY KEY (`id_cronograma`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`id_faacultad`);

--
-- Indices de la tabla `indicadores`
--
ALTER TABLE `indicadores`
  ADD PRIMARY KEY (`id_indicadores`),
  ADD KEY `fk_indicador_matriz` (`id_matriz`);

--
-- Indices de la tabla `lineas`
--
ALTER TABLE `lineas`
  ADD PRIMARY KEY (`id_linea`);

--
-- Indices de la tabla `matriz`
--
ALTER TABLE `matriz`
  ADD PRIMARY KEY (`id_matriz`),
  ADD KEY `fk_proyecto_matriz` (`id_proyecto`);

--
-- Indices de la tabla `objetivos_desarrollos`
--
ALTER TABLE `objetivos_desarrollos`
  ADD PRIMARY KEY (`id_objetivo`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`),
  ADD KEY `fk_perfil_proyecto` (`id_proyecto`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id_resultado`),
  ADD KEY `fk_resultado_matriz` (`id_matriz`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_roles`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_usuario_roles` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas_conocimiento`
--
ALTER TABLE `areas_conocimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de are de conocimiento', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cronogramas`
--
ALTER TABLE `cronogramas`
  MODIFY `id_cronograma` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de cronograma que pertence a un proyecto';

--
-- AUTO_INCREMENT de la tabla `facultades`
--
ALTER TABLE `facultades`
  MODIFY `id_faacultad` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de la facultad';

--
-- AUTO_INCREMENT de la tabla `indicadores`
--
ALTER TABLE `indicadores`
  MODIFY `id_indicadores` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de indicador';

--
-- AUTO_INCREMENT de la tabla `lineas`
--
ALTER TABLE `lineas`
  MODIFY `id_linea` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de linea';

--
-- AUTO_INCREMENT de la tabla `matriz`
--
ALTER TABLE `matriz`
  MODIFY `id_matriz` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de matriz que pertenece a un proyecto';

--
-- AUTO_INCREMENT de la tabla `objetivos_desarrollos`
--
ALTER TABLE `objetivos_desarrollos`
  MODIFY `id_objetivo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de objetivo de desarrollo';

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de perfil ';

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id_resultado` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de resultado';

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_roles` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de rol';

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `indicadores`
--
ALTER TABLE `indicadores`
  ADD CONSTRAINT `fk_indicador_matriz` FOREIGN KEY (`id_matriz`) REFERENCES `matriz` (`id_matriz`);

--
-- Filtros para la tabla `matriz`
--
ALTER TABLE `matriz`
  ADD CONSTRAINT `fk_proyecto_matriz` FOREIGN KEY (`id_proyecto`) REFERENCES `proyectos` (`id_proyecto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD CONSTRAINT `fk_perfil_proyecto` FOREIGN KEY (`id_proyecto`) REFERENCES `proyectos` (`id_proyecto`);

--
-- Filtros para la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `fk_resultado_matriz` FOREIGN KEY (`id_matriz`) REFERENCES `matriz` (`id_matriz`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuario_roles` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_roles`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
