-- MySQL dump 10.13  Distrib 8.0.18, for Linux (x86_64)
--
-- Host: localhost    Database: biodb
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `modorg`
--

DROP TABLE IF EXISTS `modorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modorg` (
  `id` int(11) NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  `genus` varchar(45) DEFAULT NULL,
  `species` varchar(45) DEFAULT NULL,
  `nchr` int(11) DEFAULT NULL,
  `gsize` double DEFAULT NULL,
  `draft` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modorg`
--

LOCK TABLES `modorg` WRITE;
/*!40000 ALTER TABLE `modorg` DISABLE KEYS */;
INSERT INTO `modorg` VALUES (1,'Bacteria','Escherichia','coli',1,4.639,'1997-09-05 00:00:00'),(2,'Fungi','Saccharomyces','cerevisiae',16,0.672,'1996-10-25 00:00:00'),(3,'Roundworms','Caenorhabditis','elegans',6,100,'1998-12-16 00:00:00'),(4,'Insects','Drosophila','melanogester',4,180,'2000-03-25 00:00:00'),(5,'Insects','Apis','melifera',16,218,'2003-12-19 00:00:00'),(6,'Mammals','Mus','musculus',21,2651,'2010-09-23 00:00:00'),(7,'Mammals','Rattus','norvegicus',21,6597,'2004-04-02 00:00:00'),(8,'Mammals','Gorilla','gorilla',24,3076,'2008-11-03 00:00:00'),(9,'Mammals','Homo','sapiens',23,3038,'2007-05-22 00:00:00'),(10,'Aliens','Alienus','area51us',NULL,NULL,NULL);
/*!40000 ALTER TABLE `modorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `Student_number` int(7) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Last_name` varchar(100) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `Sex` enum('M','V','X') DEFAULT NULL,
  PRIMARY KEY (`Student_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (293749,'Mel','Trotter','1991-04-11','V'),(293826,'John','Doe','1991-10-02','M'),(328273,'Bill','Schuette','1990-12-01','M');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-04 14:57:30
