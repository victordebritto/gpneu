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
-- Table structure for table `pneu`
--

DROP TABLE IF EXISTS `pneu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pneu` (
  `id_pneu` int(11) NOT NULL AUTO_INCREMENT,
  `id_filial` int(11) NOT NULL,
  `id_modelo_pneu` int(11) NOT NULL,
  `num_fogo` int(11) NOT NULL,
  `situacao` int(11) NOT NULL,
  `data_cadastro` date NOT NULL,
  PRIMARY KEY (`id_pneu`),
  KEY `pneu_456821e0` (`id_filial`),
  KEY `pneu_90e918af` (`id_modelo_pneu`),
  CONSTRAINT `id_filial_refs_id_filial_4918900b` FOREIGN KEY (`id_filial`) REFERENCES `filial` (`id_filial`),
  CONSTRAINT `id_modelo_pneu_refs_id_modelo_pneu_39b66558` FOREIGN KEY (`id_modelo_pneu`) REFERENCES `modelo_pneu` (`id_modelo_pneu`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pneu`
--

LOCK TABLES `pneu` WRITE;
/*!40000 ALTER TABLE `pneu` DISABLE KEYS */;
INSERT INTO `pneu` VALUES (1,1,1,21456,1,'2013-05-24');
/*!40000 ALTER TABLE `pneu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-26 14:36:18
