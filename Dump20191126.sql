-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: crudapi
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `tbl_employee`
--

DROP TABLE IF EXISTS `tbl_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employee`
--

LOCK TABLES `tbl_employee` WRITE;
/*!40000 ALTER TABLE `tbl_employee` DISABLE KEYS */;
INSERT INTO `tbl_employee` VALUES (1,'Laxman naidu','Male','Development','1989-06-20','laxman@gmail.com','1755955730f649695767c934264215559d11a7a6'),(2,'Ravi','Male','Support','1999-01-20','ravi@gmail.com','1755955730f649695767c934264215559d11a7a6'),(3,'Manu','Male','Testing','2019-09-03','manu@gmail.com','1755955730f649695767c934264215559d11a7a6'),(4,'Ravi','Male','Support','2019-10-10','raju@gmail.com','1755955730f649695767c934264215559d11a7a6'),(11,'Lucky','Male','IT','1970-01-01','plakshunnaidu@gmail.com','1755955730f649695767c934264215559d11a7a6'),(18,'Laxman','Male','IT','1970-01-01','naidu8242@gmail.com','1755955730f649695767c934264215559d11a7a6'),(19,'Laxman','Male','IT','1970-01-01','naidu8242@gmail.com','1755955730f649695767c934264215559d11a7a6'),(20,'Lucky','Male','IT','1970-01-01','plakshunaid@sdjf.com','6b9e747428c36b4f2541e37a42153ae41e5dcdd2'),(41,'Rajesh Kumar','Male','IT','1970-01-01','plakshunnaidu@gmail.com','1755955730f649695767c934264215559d11a7a6'),(42,'Srinivas','Male','IT','1970-01-01','plakshunnaidu@gmail.com','d7d35dc7123a50e4c14e9bd3552ddef1e6243e13');
/*!40000 ALTER TABLE `tbl_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'crudapi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-26  9:59:18
