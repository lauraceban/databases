-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: techreturners-database.cpddzah7z3a3.eu-west-1.rds.amazonaws.com    Database: to_do_list
-- ------------------------------------------------------
-- Server version	5.7.26-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='';

--
-- Current Database: `to_do_list`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `to_do_list` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `to_do_list`;

--
-- Table structure for table `List_of_tasks`
--

DROP TABLE IF EXISTS `List_of_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `List_of_tasks` (
  `taskId` int(11) NOT NULL AUTO_INCREMENT,
  `taskName` mediumtext,
  `deadline` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `List_of_tasks`
--

LOCK TABLES `List_of_tasks` WRITE;
/*!40000 ALTER TABLE `List_of_tasks` DISABLE KEYS */;
INSERT INTO `List_of_tasks` VALUES (1,'Do the weekly shopping','2019-12-30',2),(2,'Attend medical appointment','2019-12-30',2),(3,'Apply for travelling visa','2019-09-11',1),(4,'Attend the opera performance','2019-11-01',4),(5,'Study','2020-01-03',5),(6,'Complete homework','2020-01-05',5),(7,'Submit homework','2020-01-06',3);
/*!40000 ALTER TABLE `List_of_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_details`
--

DROP TABLE IF EXISTS `User_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_details` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `address` mediumtext,
  `phoneNumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_details`
--

LOCK TABLES `User_details` WRITE;
/*!40000 ALTER TABLE `User_details` DISABLE KEYS */;
INSERT INTO `User_details` VALUES (1,'Alice','Watson','1, Copperfield Drive, Old Town, Utopia','0145008','book_master73@yellowplanet.ut'),(2,'Samuel','Gardner','15, Mansion Street, New Town, Utopia','0687903','denimboy365@magicmind.net'),(3,'Michael','Taylor','86, Willow Tree Lane, Old Town, Utopia','0124848','callme_mike247@yellowplanet.ut'),(4,'Bobby','Smith','3, Mountain Way, Greener Fields, Utopia','0195134','loneworf_710@yellowplanet.ut'),(5,'Jennifer','Summers','22, Blossom Way, Greener Fields, Utopia','0197600','fields_of_gold_girl2302@magicmind.net');
/*!40000 ALTER TABLE `User_details` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-23 15:18:15
