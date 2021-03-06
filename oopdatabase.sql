-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: OOP
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account` (
  `UserID` int(5) NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Role` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `ContactNo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1001,'admin','admin','Admin','admin',20,'Male','admin','admin');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `branch` (
  `branchid` int(10) NOT NULL,
  `location` varchar(100) NOT NULL,
  PRIMARY KEY (`branchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (3,'Subang Jaya'),(4,'Shah alam');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item` (
  `itemid` int(10) NOT NULL,
  `itemname` varchar(100) NOT NULL,
  `itemdesc` varchar(500) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Keyboard','Keyboard desc',50.00,0);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemstock`
--

DROP TABLE IF EXISTS `itemstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `itemstock` (
  `itemid` int(10) NOT NULL,
  `branchid` int(10) NOT NULL,
  `numofstock` bigint(20) NOT NULL,
  PRIMARY KEY (`itemid`,`branchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemstock`
--

LOCK TABLES `itemstock` WRITE;
/*!40000 ALTER TABLE `itemstock` DISABLE KEYS */;
INSERT INTO `itemstock` VALUES (1,3,0),(1,4,0);
/*!40000 ALTER TABLE `itemstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returnitem`
--

DROP TABLE IF EXISTS `returnitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `returnitem` (
  `returnitemid` int(10) NOT NULL,
  `date` timestamp NOT NULL,
  `itemid` int(10) NOT NULL,
  `itemname` varchar(100) NOT NULL,
  `branchid` int(10) NOT NULL,
  `branchlocation` varchar(100) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`returnitemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returnitem`
--

LOCK TABLES `returnitem` WRITE;
/*!40000 ALTER TABLE `returnitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `returnitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockedithistory`
--

DROP TABLE IF EXISTS `stockedithistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stockedithistory` (
  `stockeditid` int(10) NOT NULL,
  `date` timestamp NOT NULL,
  `itemid` int(10) NOT NULL,
  `itemname` varchar(100) NOT NULL,
  `branchid` int(10) NOT NULL,
  `branchlocation` varchar(100) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`stockeditid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockedithistory`
--

LOCK TABLES `stockedithistory` WRITE;
/*!40000 ALTER TABLE `stockedithistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockedithistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-16 11:49:08
