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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add Filial',8,'add_filial'),(23,'Can change Filial',8,'change_filial'),(24,'Can delete Filial',8,'delete_filial'),(31,'Can add Estado',11,'add_estado'),(32,'Can change Estado',11,'change_estado'),(33,'Can delete Estado',11,'delete_estado'),(34,'Can add Cidade',12,'add_cidade'),(35,'Can change Cidade',12,'change_cidade'),(36,'Can delete Cidade',12,'delete_cidade'),(37,'Can add Marca Equipamento',13,'add_marcaequipamento'),(38,'Can change Marca Equipamento',13,'change_marcaequipamento'),(39,'Can delete Marca Equipamento',13,'delete_marcaequipamento'),(52,'Can add Tração',18,'add_tracao'),(53,'Can change Tração',18,'change_tracao'),(54,'Can delete Tração',18,'delete_tracao'),(55,'Can add Modelo do Equipamento',19,'add_modeloequipamento'),(56,'Can change Modelo do Equipamento',19,'change_modeloequipamento'),(57,'Can delete Modelo do Equipamento',19,'delete_modeloequipamento'),(61,'Can add Modelo do Equipamento',21,'add_equipamento'),(62,'Can change Modelo do Equipamento',21,'change_equipamento'),(63,'Can delete Modelo do Equipamento',21,'delete_equipamento'),(64,'Can add Marca',22,'add_marcapneu'),(65,'Can change Marca',22,'change_marcapneu'),(66,'Can delete Marca',22,'delete_marcapneu'),(67,'Can add Medida',23,'add_medida'),(68,'Can change Medida',23,'change_medida'),(69,'Can delete Medida',23,'delete_medida'),(70,'Can add Modelo',24,'add_modelopneu'),(71,'Can change Modelo',24,'change_modelopneu'),(72,'Can delete Modelo',24,'delete_modelopneu'),(73,'Can add Pneu',25,'add_pneu'),(74,'Can change Pneu',25,'change_pneu'),(75,'Can delete Pneu',25,'delete_pneu'),(76,'Can add Medição',26,'add_medicao'),(77,'Can change Medição',26,'change_medicao'),(78,'Can delete Medição',26,'delete_medicao'),(79,'Can add Descarte',27,'add_descarte'),(80,'Can change Descarte',27,'change_descarte'),(81,'Can delete Descarte',27,'delete_descarte'),(82,'Can add Descarte',28,'add_reforma'),(83,'Can change Descarte',28,'change_reforma'),(84,'Can delete Descarte',28,'delete_reforma'),(85,'Can add Familia',29,'add_familia'),(86,'Can change Familia',29,'change_familia'),(87,'Can delete Familia',29,'delete_familia');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-26 14:36:16
