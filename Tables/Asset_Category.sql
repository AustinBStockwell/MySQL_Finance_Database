-- MySQL dump 10.13  Distrib 5.7.19, for macos10.12 (x86_64)
-- Host: 127.0.0.1    Database: Stockwell_Financial
-- Server version	5.7.19
-- Dump completed on 2022-03-08 16:26:45


CREATE DATABASE  IF NOT EXISTS `Stockwell_Financial` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Stockwell_Financial`;


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
-- Table structure for table `Asset_Category`
--

DROP TABLE IF EXISTS `Asset_Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `Asset_Category` (
  `idAsset_Category` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idAsset_Category`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- -----------------------------------------------------
-- INSERT DATA INTO TABLE
-- -----------------------------------------------------
SELECT * FROM Asset_Category;
INSERT INTO Asset_Category VALUES (1, 'Gold');  
INSERT INTO Asset_Category VALUES (2, 'Silver');
INSERT INTO Asset_Category VALUES (3, 'Cryptocurrency');
INSERT INTO Asset_Category VALUES (4, 'Stock');
INSERT INTO Asset_Category VALUES (5, 'Bond');
INSERT INTO Asset_Category VALUES (6, 'Index Fund');
INSERT INTO Asset_Category VALUES (7, 'Tax Return');
INSERT INTO Asset_Category VALUES (99, 'Paycheck');
SELECT * FROM Asset_Category;
