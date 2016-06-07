-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: tempojobs
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `abstract_usuario`
--

DROP TABLE IF EXISTS `abstract_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abstract_usuario` (
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
  KEY `FK_2vlqps9hwpv6df2ubgahb765d` (`empresa`),
  CONSTRAINT `FK_2vlqps9hwpv6df2ubgahb765d` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FK_n8elc9ijgfblp157cgypi10i9` FOREIGN KEY (`oferta`) REFERENCES `oferta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abstract_usuario`
--

LOCK TABLES `abstract_usuario` WRITE;
/*!40000 ALTER TABLE `abstract_usuario` DISABLE KEYS */;
INSERT INTO `abstract_usuario` VALUES ('Admin',1,'Admin','admin','admin','localhost','admin@localhost','1980-01-01 00:00:00','localhost','Admin','roo','000 000 000',0,NULL,NULL,NULL,NULL,NULL),('Admin',2,'diazag','matias','matiasdiag','direccion','email@example','1984-08-27 00:00:00','localidad','matias','provincia','0123456789',0,NULL,NULL,NULL,NULL,NULL),('UsuarioEmpresa',3,'apel','usuario1','usuario1234','localhost','usuario1@email','2000-01-01 00:00:00','th1','usuario1','th1','000 000 000',0,NULL,NULL,NULL,NULL,NULL),('UsuarioEmpresa',4,'usuarioempresa','usuarioempresa','tempojobs','direccion','usuarioempresa@tempojobs.com','1980-01-01 00:00:00','localidad','usuarioempresa','prov','000 000 000',0,NULL,NULL,NULL,NULL,NULL),('Empleado',5,'empleado','empleado','tempojobs','direccion','empleado@tempojobs.com','1980-01-01 00:00:00','localidad','empleado','prov','000 000 000',0,'2016-12-31 00:00:00','2016-01-01 00:00:00',NULL,NULL,NULL),('Demandante',6,'demandante','demandante','tempojobs','direccion','demandante@tempojobs.com','1980-01-01 00:00:00','localidad','demandante','prov','000 000 000',0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `abstract_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abstract_usuario_formaciones`
--

DROP TABLE IF EXISTS `abstract_usuario_formaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abstract_usuario_formaciones` (
  `abstract_usuario` bigint(20) NOT NULL,
  `formaciones` bigint(20) NOT NULL,
  PRIMARY KEY (`abstract_usuario`,`formaciones`),
  KEY `FK_4kbudje9ro6av6gwkildu48vc` (`formaciones`),
  CONSTRAINT `FK_4kbudje9ro6av6gwkildu48vc` FOREIGN KEY (`formaciones`) REFERENCES `formacion` (`id`),
  CONSTRAINT `FK_nkl2opyf608354gk2oit5v3hm` FOREIGN KEY (`abstract_usuario`) REFERENCES `abstract_usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abstract_usuario_formaciones`
--

LOCK TABLES `abstract_usuario_formaciones` WRITE;
/*!40000 ALTER TABLE `abstract_usuario_formaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `abstract_usuario_formaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abstract_usuario_perfiles`
--

DROP TABLE IF EXISTS `abstract_usuario_perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abstract_usuario_perfiles` (
  `abstract_usuario` bigint(20) NOT NULL,
  `perfiles` bigint(20) NOT NULL,
  PRIMARY KEY (`abstract_usuario`,`perfiles`),
  KEY `FK_jehf2txurl4ggn89wrkllrhwf` (`perfiles`),
  CONSTRAINT `FK_a16x39bbt6m000w3x1lya6i6o` FOREIGN KEY (`abstract_usuario`) REFERENCES `abstract_usuario` (`id`),
  CONSTRAINT `FK_jehf2txurl4ggn89wrkllrhwf` FOREIGN KEY (`perfiles`) REFERENCES `perfil` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abstract_usuario_perfiles`
--

LOCK TABLES `abstract_usuario_perfiles` WRITE;
/*!40000 ALTER TABLE `abstract_usuario_perfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `abstract_usuario_perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actividad_profesional` varchar(64) NOT NULL,
  `cif` varchar(16) NOT NULL,
  `empleados` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_ofertas`
--

DROP TABLE IF EXISTS `empresa_ofertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa_ofertas` (
  `empresa` bigint(20) NOT NULL,
  `ofertas` bigint(20) NOT NULL,
  PRIMARY KEY (`empresa`,`ofertas`),
  KEY `FK_lke4ptljdpq9qub5p55blob8s` (`ofertas`),
  CONSTRAINT `FK_5em233ramnftmckh6wkmv9w9n` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FK_lke4ptljdpq9qub5p55blob8s` FOREIGN KEY (`ofertas`) REFERENCES `oferta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_ofertas`
--

LOCK TABLES `empresa_ofertas` WRITE;
/*!40000 ALTER TABLE `empresa_ofertas` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_ofertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_sedes`
--

DROP TABLE IF EXISTS `empresa_sedes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa_sedes` (
  `empresa` bigint(20) NOT NULL,
  `sedes` bigint(20) NOT NULL,
  PRIMARY KEY (`empresa`,`sedes`),
  KEY `FK_2tbahdylp6w4su8jjc9p2xtjq` (`sedes`),
  CONSTRAINT `FK_48qm7s2es2a53nkno5ptruy86` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FK_2tbahdylp6w4su8jjc9p2xtjq` FOREIGN KEY (`sedes`) REFERENCES `sede` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_sedes`
--

LOCK TABLES `empresa_sedes` WRITE;
/*!40000 ALTER TABLE `empresa_sedes` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_sedes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_usuarioempresas`
--

DROP TABLE IF EXISTS `empresa_usuarioempresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa_usuarioempresas` (
  `empresa` bigint(20) NOT NULL,
  `usuarioempresas` bigint(20) NOT NULL,
  PRIMARY KEY (`empresa`,`usuarioempresas`),
  KEY `FK_px8y298adyqen4kotx80gb3an` (`usuarioempresas`),
  CONSTRAINT `FK_j5plf0oafv3a65xu6gr977pg` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FK_px8y298adyqen4kotx80gb3an` FOREIGN KEY (`usuarioempresas`) REFERENCES `abstract_usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_usuarioempresas`
--

LOCK TABLES `empresa_usuarioempresas` WRITE;
/*!40000 ALTER TABLE `empresa_usuarioempresas` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_usuarioempresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(16) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia`
--

DROP TABLE IF EXISTS `experiencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiencia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(32) NOT NULL,
  `fecha_final` datetime NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `version` int(11) DEFAULT NULL,
  `puesto` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hy1mg5bxn2ea3rtgu89ssefuu` (`puesto`),
  CONSTRAINT `FK_hy1mg5bxn2ea3rtgu89ssefuu` FOREIGN KEY (`puesto`) REFERENCES `puesto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia`
--

LOCK TABLES `experiencia` WRITE;
/*!40000 ALTER TABLE `experiencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacion`
--

DROP TABLE IF EXISTS `formacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_final` datetime NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `titulo` varchar(64) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacion`
--

LOCK TABLES `formacion` WRITE;
/*!40000 ALTER TABLE `formacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `formacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion`
--

DROP TABLE IF EXISTS `inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscripcion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_inscripcion` datetime NOT NULL,
  `version` int(11) DEFAULT NULL,
  `estado` bigint(20) DEFAULT NULL,
  `oferta` bigint(20) DEFAULT NULL,
  `perfil` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_19g5h8odqdmgyee0tlbsndn2p` (`estado`),
  KEY `FK_jtwnnskbxax0f2q8butty5yj` (`oferta`),
  KEY `FK_3cl7pp3ohx5jnla8yd9gqtux9` (`perfil`),
  CONSTRAINT `FK_3cl7pp3ohx5jnla8yd9gqtux9` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`),
  CONSTRAINT `FK_19g5h8odqdmgyee0tlbsndn2p` FOREIGN KEY (`estado`) REFERENCES `estado` (`id`),
  CONSTRAINT `FK_jtwnnskbxax0f2q8butty5yj` FOREIGN KEY (`oferta`) REFERENCES `oferta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion`
--

LOCK TABLES `inscripcion` WRITE;
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oferta`
--

DROP TABLE IF EXISTS `oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oferta` (
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
  `empleado` bigint(20) DEFAULT NULL,
  `empresa` bigint(20) DEFAULT NULL,
  `estado` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2wf3up4p1j56xlxjgmnb9ygui` (`empleado`),
  KEY `FK_5p5cq9yp4r32f9gpmfrp6x9ca` (`empresa`),
  KEY `FK_reijy3liaa9m6sw7jlkb2xjdo` (`estado`),
  CONSTRAINT `FK_reijy3liaa9m6sw7jlkb2xjdo` FOREIGN KEY (`estado`) REFERENCES `estado` (`id`),
  CONSTRAINT `FK_2wf3up4p1j56xlxjgmnb9ygui` FOREIGN KEY (`empleado`) REFERENCES `abstract_usuario` (`id`),
  CONSTRAINT `FK_5p5cq9yp4r32f9gpmfrp6x9ca` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oferta`
--

LOCK TABLES `oferta` WRITE;
/*!40000 ALTER TABLE `oferta` DISABLE KEYS */;
/*!40000 ALTER TABLE `oferta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oferta_inscripciones`
--

DROP TABLE IF EXISTS `oferta_inscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oferta_inscripciones` (
  `oferta` bigint(20) NOT NULL,
  `inscripciones` bigint(20) NOT NULL,
  PRIMARY KEY (`oferta`,`inscripciones`),
  KEY `FK_5bvu3jmh9tl7tdfu8rvtko2jh` (`inscripciones`),
  CONSTRAINT `FK_jk9h66cj8caue3v9yy1qqw7r3` FOREIGN KEY (`oferta`) REFERENCES `oferta` (`id`),
  CONSTRAINT `FK_5bvu3jmh9tl7tdfu8rvtko2jh` FOREIGN KEY (`inscripciones`) REFERENCES `inscripcion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oferta_inscripciones`
--

LOCK TABLES `oferta_inscripciones` WRITE;
/*!40000 ALTER TABLE `oferta_inscripciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `oferta_inscripciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(16) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `demandante` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3y3sjar26im4jj93eo6f46u81` (`demandante`),
  CONSTRAINT `FK_3y3sjar26im4jj93eo6f46u81` FOREIGN KEY (`demandante`) REFERENCES `abstract_usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_experiencias`
--

DROP TABLE IF EXISTS `perfil_experiencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_experiencias` (
  `perfil` bigint(20) NOT NULL,
  `experiencias` bigint(20) NOT NULL,
  PRIMARY KEY (`perfil`,`experiencias`),
  KEY `FK_49bu5gi8v74k6ixlrqrinnlyp` (`experiencias`),
  CONSTRAINT `FK_565ghxpw5p5nv86pa8ppdt93` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`),
  CONSTRAINT `FK_49bu5gi8v74k6ixlrqrinnlyp` FOREIGN KEY (`experiencias`) REFERENCES `experiencia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_experiencias`
--

LOCK TABLES `perfil_experiencias` WRITE;
/*!40000 ALTER TABLE `perfil_experiencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil_experiencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_formaciones`
--

DROP TABLE IF EXISTS `perfil_formaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_formaciones` (
  `perfil` bigint(20) NOT NULL,
  `formaciones` bigint(20) NOT NULL,
  PRIMARY KEY (`perfil`,`formaciones`),
  KEY `FK_1y9r84r9rnecul6rl431ir45o` (`formaciones`),
  CONSTRAINT `FK_3uk543dwyjhbitdr4iwfm5pdw` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`),
  CONSTRAINT `FK_1y9r84r9rnecul6rl431ir45o` FOREIGN KEY (`formaciones`) REFERENCES `formacion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_formaciones`
--

LOCK TABLES `perfil_formaciones` WRITE;
/*!40000 ALTER TABLE `perfil_formaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil_formaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_inscripciones`
--

DROP TABLE IF EXISTS `perfil_inscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_inscripciones` (
  `perfil` bigint(20) NOT NULL,
  `inscripciones` bigint(20) NOT NULL,
  PRIMARY KEY (`perfil`,`inscripciones`),
  KEY `FK_trf3mhagocxujr9kwdg9obooi` (`inscripciones`),
  CONSTRAINT `FK_ei2tnredvwbs5bs0w703xmd0t` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`),
  CONSTRAINT `FK_trf3mhagocxujr9kwdg9obooi` FOREIGN KEY (`inscripciones`) REFERENCES `inscripcion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_inscripciones`
--

LOCK TABLES `perfil_inscripciones` WRITE;
/*!40000 ALTER TABLE `perfil_inscripciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil_inscripciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_puestos`
--

DROP TABLE IF EXISTS `perfil_puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_puestos` (
  `perfil` bigint(20) NOT NULL,
  `puestos` bigint(20) NOT NULL,
  PRIMARY KEY (`perfil`,`puestos`),
  KEY `FK_5nmcmk684168mc9htydncomsc` (`puestos`),
  CONSTRAINT `FK_5nmcmk684168mc9htydncomsc` FOREIGN KEY (`puestos`) REFERENCES `puesto` (`id`),
  CONSTRAINT `FK_trerxpv0cg0wngb2jpum1c6sh` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_puestos`
--

LOCK TABLES `perfil_puestos` WRITE;
/*!40000 ALTER TABLE `perfil_puestos` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil_puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto`
--

DROP TABLE IF EXISTS `puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puesto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto`
--

LOCK TABLES `puesto` WRITE;
/*!40000 ALTER TABLE `puesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sede`
--

DROP TABLE IF EXISTS `sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sede` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(128) NOT NULL,
  `localidad` varchar(64) NOT NULL,
  `nombre` varchar(16) NOT NULL,
  `pais` varchar(32) NOT NULL,
  `provincia` varchar(16) NOT NULL,
  `telefono` varchar(16) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `empresa` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qmi306u2v89ll29t2vudytt9i` (`empresa`),
  CONSTRAINT `FK_qmi306u2v89ll29t2vudytt9i` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sede`
--

LOCK TABLES `sede` WRITE;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-08  0:02:24
