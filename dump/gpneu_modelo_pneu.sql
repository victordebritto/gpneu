CREATE DATABASE  IF NOT EXISTS `gpneu` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gpneu`;
-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gpneu
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.10.1

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
-- Table structure for table `modelo_pneu`
--

DROP TABLE IF EXISTS `modelo_pneu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelo_pneu` (
  `id_modelo_pneu` int(11) NOT NULL AUTO_INCREMENT,
  `id_marca_pneu` int(11) NOT NULL,
  `id_medida` int(11) NOT NULL,
  `profundidade` double NOT NULL,
  `profundade_reforma` double NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id_modelo_pneu`),
  KEY `modelo_pneu_4daa993f` (`id_marca_pneu`),
  KEY `modelo_pneu_da7f30ef` (`id_medida`),
  CONSTRAINT `id_marca_pneu_refs_id_marca_pneu_119071d2` FOREIGN KEY (`id_marca_pneu`) REFERENCES `marca_pneu` (`id_marca_pneu`),
  CONSTRAINT `id_medida_refs_id_medida_ef27934f` FOREIGN KEY (`id_medida`) REFERENCES `medida` (`id_medida`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_pneu`
--

LOCK TABLES `modelo_pneu` WRITE;
/*!40000 ALTER TABLE `modelo_pneu` DISABLE KEYS */;
INSERT INTO `modelo_pneu` VALUES (1,1,1,19.9,6,'LK2635');
/*!40000 ALTER TABLE `modelo_pneu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-26 14:36:17
