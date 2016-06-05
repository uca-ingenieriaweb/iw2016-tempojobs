-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-06-2016 a las 09:22:27
-- Versión del servidor: 5.5.49-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tempojobs`
--
USE tempojobs;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abstract_usuario`
--

CREATE TABLE IF NOT EXISTS `abstract_usuario` (
  `dtype` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(32) NOT NULL,
  `apodo` varchar(16) NOT NULL,
  `clave` varchar(16) NOT NULL,
  `direccion` varchar(128) NOT NULL,
  `email` varchar(64) NOT NULL,
  `fecha_nac` datetime NOT NULL,
  `localidad` varchar(64) NOT NULL,
  `nombre` varchar(16) NOT NULL,
  `provincia` varchar(16) NOT NULL,
  `telefono` varchar(16) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `fecha_final` datetime DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `puesto` varchar(32) DEFAULT NULL,
  `oferta` bigint(20) DEFAULT NULL,
  `empresa` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cn86ef7rs9ndjsds53de23tsm` (`apodo`),
  KEY `FK_n8elc9ijgfblp157cgypi10i9` (`oferta`),
  KEY `FK_2vlqps9hwpv6df2ubgahb765d` (`empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `abstract_usuario`
--

INSERT INTO `abstract_usuario` (`dtype`, `id`, `apellidos`, `apodo`, `clave`, `direccion`, `email`, `fecha_nac`, `localidad`, `nombre`, `provincia`, `telefono`, `version`, `fecha_final`, `fecha_inicio`, `puesto`, `oferta`, `empresa`) VALUES
('Admin', 1, 'Admin', 'admin', 'administrador', 'localhost', 'admin@localhost', '1980-01-01 00:00:00', 'localhost', 'Admin', 'roo', '000 000 000', 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abstract_usuario_formaciones`
--

CREATE TABLE IF NOT EXISTS `abstract_usuario_formaciones` (
  `abstract_usuario` bigint(20) NOT NULL,
  `formaciones` bigint(20) NOT NULL,
  PRIMARY KEY (`abstract_usuario`,`formaciones`),
  KEY `FK_4kbudje9ro6av6gwkildu48vc` (`formaciones`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abstract_usuario_perfiles`
--

CREATE TABLE IF NOT EXISTS `abstract_usuario_perfiles` (
  `abstract_usuario` bigint(20) NOT NULL,
  `perfiles` bigint(20) NOT NULL,
  PRIMARY KEY (`abstract_usuario`,`perfiles`),
  KEY `FK_jehf2txurl4ggn89wrkllrhwf` (`perfiles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actividad_profesional` varchar(64) NOT NULL,
  `cif` varchar(16) NOT NULL,
  `empleados` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_ofertas`
--

CREATE TABLE IF NOT EXISTS `empresa_ofertas` (
  `empresa` bigint(20) NOT NULL,
  `ofertas` bigint(20) NOT NULL,
  PRIMARY KEY (`empresa`,`ofertas`),
  KEY `FK_lke4ptljdpq9qub5p55blob8s` (`ofertas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_sedes`
--

CREATE TABLE IF NOT EXISTS `empresa_sedes` (
  `empresa` bigint(20) NOT NULL,
  `sedes` bigint(20) NOT NULL,
  PRIMARY KEY (`empresa`,`sedes`),
  KEY `FK_2tbahdylp6w4su8jjc9p2xtjq` (`sedes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(16) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE IF NOT EXISTS `experiencia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(32) NOT NULL,
  `fecha_final` datetime NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `puesto` varchar(32) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion`
--

CREATE TABLE IF NOT EXISTS `formacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_final` datetime NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `titulo` varchar(64) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE IF NOT EXISTS `inscripcion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_inscripcion` datetime NOT NULL,
  `version` int(11) DEFAULT NULL,
  `estado` bigint(20) DEFAULT NULL,
  `oferta` bigint(20) DEFAULT NULL,
  `perfil` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_19g5h8odqdmgyee0tlbsndn2p` (`estado`),
  KEY `FK_jtwnnskbxax0f2q8butty5yj` (`oferta`),
  KEY `FK_3cl7pp3ohx5jnla8yd9gqtux9` (`perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--

CREATE TABLE IF NOT EXISTS `oferta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `experiencia` varchar(64) NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `formacion` varchar(256) NOT NULL,
  `inicio_actividad` datetime NOT NULL,
  `sueldo_bruto` double NOT NULL,
  `tipo_contrato` varchar(32) NOT NULL,
  `vacantes` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `empresa` bigint(20) DEFAULT NULL,
  `estado` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5p5cq9yp4r32f9gpmfrp6x9ca` (`empresa`),
  KEY `FK_reijy3liaa9m6sw7jlkb2xjdo` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta_inscripciones`
--

CREATE TABLE IF NOT EXISTS `oferta_inscripciones` (
  `oferta` bigint(20) NOT NULL,
  `inscripciones` bigint(20) NOT NULL,
  PRIMARY KEY (`oferta`,`inscripciones`),
  KEY `FK_5bvu3jmh9tl7tdfu8rvtko2jh` (`inscripciones`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `foto` varchar(128) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_experiencias`
--

CREATE TABLE IF NOT EXISTS `perfil_experiencias` (
  `perfil` bigint(20) NOT NULL,
  `experiencias` bigint(20) NOT NULL,
  PRIMARY KEY (`perfil`,`experiencias`),
  KEY `FK_49bu5gi8v74k6ixlrqrinnlyp` (`experiencias`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_inscripciones`
--

CREATE TABLE IF NOT EXISTS `perfil_inscripciones` (
  `perfil` bigint(20) NOT NULL,
  `inscripciones` bigint(20) NOT NULL,
  PRIMARY KEY (`perfil`,`inscripciones`),
  KEY `FK_trf3mhagocxujr9kwdg9obooi` (`inscripciones`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_puestos`
--

CREATE TABLE IF NOT EXISTS `perfil_puestos` (
  `perfil` bigint(20) NOT NULL,
  `puestos` bigint(20) NOT NULL,
  PRIMARY KEY (`perfil`,`puestos`),
  KEY `FK_5nmcmk684168mc9htydncomsc` (`puestos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE IF NOT EXISTS `puesto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE IF NOT EXISTS `sede` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(128) NOT NULL,
  `localidad` varchar(64) NOT NULL,
  `nombre` varchar(16) NOT NULL,
  `pais` varchar(32) NOT NULL,
  `provincia` varchar(16) NOT NULL,
  `telefono` varchar(16) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `abstract_usuario`
--
ALTER TABLE `abstract_usuario`
  ADD CONSTRAINT `FK_2vlqps9hwpv6df2ubgahb765d` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_n8elc9ijgfblp157cgypi10i9` FOREIGN KEY (`oferta`) REFERENCES `oferta` (`id`);

--
-- Filtros para la tabla `abstract_usuario_formaciones`
--
ALTER TABLE `abstract_usuario_formaciones`
  ADD CONSTRAINT `FK_4kbudje9ro6av6gwkildu48vc` FOREIGN KEY (`formaciones`) REFERENCES `formacion` (`id`),
  ADD CONSTRAINT `FK_nkl2opyf608354gk2oit5v3hm` FOREIGN KEY (`abstract_usuario`) REFERENCES `abstract_usuario` (`id`);

--
-- Filtros para la tabla `abstract_usuario_perfiles`
--
ALTER TABLE `abstract_usuario_perfiles`
  ADD CONSTRAINT `FK_a16x39bbt6m000w3x1lya6i6o` FOREIGN KEY (`abstract_usuario`) REFERENCES `abstract_usuario` (`id`),
  ADD CONSTRAINT `FK_jehf2txurl4ggn89wrkllrhwf` FOREIGN KEY (`perfiles`) REFERENCES `perfil` (`id`);

--
-- Filtros para la tabla `empresa_ofertas`
--
ALTER TABLE `empresa_ofertas`
  ADD CONSTRAINT `FK_5em233ramnftmckh6wkmv9w9n` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_lke4ptljdpq9qub5p55blob8s` FOREIGN KEY (`ofertas`) REFERENCES `oferta` (`id`);

--
-- Filtros para la tabla `empresa_sedes`
--
ALTER TABLE `empresa_sedes`
  ADD CONSTRAINT `FK_2tbahdylp6w4su8jjc9p2xtjq` FOREIGN KEY (`sedes`) REFERENCES `sede` (`id`),
  ADD CONSTRAINT `FK_48qm7s2es2a53nkno5ptruy86` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`);

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `FK_19g5h8odqdmgyee0tlbsndn2p` FOREIGN KEY (`estado`) REFERENCES `estado` (`id`),
  ADD CONSTRAINT `FK_3cl7pp3ohx5jnla8yd9gqtux9` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`),
  ADD CONSTRAINT `FK_jtwnnskbxax0f2q8butty5yj` FOREIGN KEY (`oferta`) REFERENCES `oferta` (`id`);

--
-- Filtros para la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD CONSTRAINT `FK_5p5cq9yp4r32f9gpmfrp6x9ca` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_reijy3liaa9m6sw7jlkb2xjdo` FOREIGN KEY (`estado`) REFERENCES `estado` (`id`);

--
-- Filtros para la tabla `oferta_inscripciones`
--
ALTER TABLE `oferta_inscripciones`
  ADD CONSTRAINT `FK_5bvu3jmh9tl7tdfu8rvtko2jh` FOREIGN KEY (`inscripciones`) REFERENCES `inscripcion` (`id`),
  ADD CONSTRAINT `FK_jk9h66cj8caue3v9yy1qqw7r3` FOREIGN KEY (`oferta`) REFERENCES `oferta` (`id`);

--
-- Filtros para la tabla `perfil_experiencias`
--
ALTER TABLE `perfil_experiencias`
  ADD CONSTRAINT `FK_49bu5gi8v74k6ixlrqrinnlyp` FOREIGN KEY (`experiencias`) REFERENCES `experiencia` (`id`),
  ADD CONSTRAINT `FK_565ghxpw5p5nv86pa8ppdt93` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`);

--
-- Filtros para la tabla `perfil_inscripciones`
--
ALTER TABLE `perfil_inscripciones`
  ADD CONSTRAINT `FK_ei2tnredvwbs5bs0w703xmd0t` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`),
  ADD CONSTRAINT `FK_trf3mhagocxujr9kwdg9obooi` FOREIGN KEY (`inscripciones`) REFERENCES `inscripcion` (`id`);

--
-- Filtros para la tabla `perfil_puestos`
--
ALTER TABLE `perfil_puestos`
  ADD CONSTRAINT `FK_5nmcmk684168mc9htydncomsc` FOREIGN KEY (`puestos`) REFERENCES `puesto` (`id`),
  ADD CONSTRAINT `FK_trerxpv0cg0wngb2jpum1c6sh` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
