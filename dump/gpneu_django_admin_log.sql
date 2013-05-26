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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-04-24 00:03:47',1,8,'1','Teste',1,''),(6,'2013-04-24 00:22:52',1,8,'1','teste',1,''),(7,'2013-04-27 20:44:47',1,13,'1','Mercedes-benz',1,''),(8,'2013-04-27 20:44:59',1,13,'2','Volkswagen',1,''),(9,'2013-04-27 20:45:20',1,13,'3','Volvo',1,''),(10,'2013-04-27 20:45:33',1,13,'4','Scania',1,''),(11,'2013-04-27 20:47:31',1,18,'1','2x6',1,''),(12,'2013-04-27 20:47:36',1,18,'2','4x4',1,''),(13,'2013-04-27 20:48:47',1,19,'1','Mb 1113',1,''),(15,'2013-04-27 20:51:39',1,11,'2','MG',1,''),(16,'2013-04-27 20:52:05',1,12,'1','Belo Horizonte',1,''),(17,'2013-04-27 20:53:54',1,8,'1','Escritorio Central',1,''),(19,'2013-04-27 20:55:49',1,21,'1','958866951',1,''),(20,'2013-04-29 14:47:12',1,21,'2','132435',1,''),(22,'2013-04-29 14:50:22',1,21,'3','456',1,''),(23,'2013-05-03 01:21:35',1,22,'1','GoodYear',1,''),(24,'2013-05-03 21:09:19',1,23,'1','1100R22',1,''),(25,'2013-05-03 21:11:25',1,24,'1','G686 MSS',1,''),(26,'2013-05-03 21:12:31',1,11,'1','MG',1,''),(27,'2013-05-03 21:12:49',1,11,'1','MG',2,'Modificado nome.'),(28,'2013-05-03 21:13:05',1,12,'1','Belo Horizonte',1,''),(29,'2013-05-03 21:13:22',1,13,'1','Mercedes-benz',1,''),(30,'2013-05-03 21:13:48',1,18,'1','2x6',1,''),(31,'2013-05-03 21:14:16',1,19,'1','Mb 1113',1,''),(32,'2013-05-03 21:15:53',1,8,'1','Escritorio Central',1,''),(33,'2013-05-03 21:16:32',1,8,'2','Teste',1,''),(35,'2013-05-03 21:21:13',1,21,'1','21345',1,''),(36,'2013-05-03 21:22:49',1,25,'1','32145',1,''),(37,'2013-05-03 21:25:53',1,2,'1','Teste',1,''),(38,'2013-05-03 21:26:32',1,3,'2','teste',1,''),(39,'2013-05-03 21:27:12',1,3,'2','teste',2,'Modificado password, first_name, last_name e groups.'),(40,'2013-05-03 21:30:39',1,3,'2','teste',2,'Modificado password e email.'),(41,'2013-05-03 21:31:46',1,2,'1','Teste',3,''),(42,'2013-05-03 21:31:59',1,3,'2','teste',3,''),(43,'2013-05-03 22:05:51',1,21,'2','7654336',1,''),(44,'2013-05-03 22:13:29',1,25,'2','21456',1,''),(45,'2013-05-10 18:33:38',1,18,'1','2x6',3,''),(47,'2013-05-10 18:34:14',1,13,'1','Mercedes-benz',3,''),(48,'2013-05-10 18:34:36',1,22,'1','GoodYear',3,''),(49,'2013-05-10 18:34:47',1,23,'1','1100R22',3,''),(50,'2013-05-10 18:36:18',1,18,'2','6X4',1,''),(51,'2013-05-10 18:36:28',1,18,'3','8X4',1,''),(52,'2013-05-10 18:37:04',1,13,'2','Mercedes benz',1,''),(53,'2013-05-10 18:37:32',1,13,'3','Scania',1,''),(54,'2013-05-10 18:38:13',1,13,'4','Caterpillar',1,''),(55,'2013-05-10 18:38:21',1,13,'5','JCB',1,''),(56,'2013-05-10 18:38:37',1,13,'6','Dynapac',1,''),(57,'2013-05-10 18:38:55',1,13,'7','New Holland',1,''),(58,'2013-05-10 18:39:57',1,13,'8','Massey Fergusson',1,''),(59,'2013-05-10 18:41:01',1,13,'9','Bobcat',1,''),(60,'2013-05-10 18:41:55',1,13,'10','Ciber',1,''),(61,'2013-05-10 18:43:29',1,19,'2','LK2638',1,''),(62,'2013-05-10 18:44:00',1,19,'3','LK2635',1,''),(63,'2013-05-10 18:44:17',1,19,'4','AXOR 3340',1,''),(64,'2013-05-10 18:44:31',1,19,'5','AXOR 4144',1,''),(65,'2013-05-10 18:44:52',1,19,'6','LK1520',1,''),(66,'2013-05-10 18:45:01',1,19,'7','710',1,''),(67,'2013-05-10 18:45:52',1,18,'4','2X2',1,''),(68,'2013-05-10 18:46:15',1,19,'7','710',2,'Modificado id_tracao.'),(69,'2013-05-10 18:47:38',1,19,'7','710',3,''),(70,'2013-05-10 18:49:18',1,8,'3','Oficina Central',1,''),(71,'2013-05-24 21:47:36',1,13,'1','Volvo',1,''),(72,'2013-05-24 21:47:46',1,13,'2','Caterpillar',1,''),(73,'2013-05-24 21:48:02',1,18,'1','6X4',1,''),(74,'2013-05-24 21:48:06',1,18,'2','8X4',1,''),(75,'2013-05-24 21:49:39',1,13,'3','Mercedes',1,''),(76,'2013-05-24 21:51:06',1,19,'1','AXOR 3340',1,''),(77,'2013-05-24 21:51:50',1,19,'2','LK2635',1,''),(78,'2013-05-24 21:52:28',1,11,'1','MG',1,''),(79,'2013-05-24 21:52:45',1,12,'1','Belo Horizonte',1,''),(80,'2013-05-24 21:54:20',1,8,'1','Escritorio Central',1,''),(81,'2013-05-24 21:55:47',1,29,'4','Caminhao Basculante',1,''),(82,'2013-05-24 21:56:14',1,29,'5','Caminhao Carroceria',1,''),(83,'2013-05-24 21:58:22',1,21,'1','21345',1,''),(84,'2013-05-24 22:00:50',1,22,'1','Michelin',1,''),(85,'2013-05-24 22:01:07',1,22,'2','Goodyear',1,''),(86,'2013-05-24 22:01:28',1,23,'1','1100R22',1,''),(87,'2013-05-24 22:03:16',1,24,'1','LK2635',1,''),(88,'2013-05-24 22:05:18',1,25,'1','21456',1,''),(89,'2013-05-24 22:06:07',1,27,'1','21456',1,''),(90,'2013-05-24 22:07:58',1,28,'1','21456',1,''),(91,'2013-05-24 22:55:44',1,27,'2','21456',1,''),(92,'2013-05-24 22:56:01',1,27,'2','21456',3,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
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
