-- MySQL dump 10.13  Distrib 5.7.19, for macos10.12 (x86_64)
-- Host: 127.0.0.1    Database: Stockwell_Financial
-- Server version	5.7.19
-- Dump completed on 2022-03-08 16:26:44


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
-- Table structure for table `Bank_Transaction`
--

DROP TABLE IF EXISTS `Bank_Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `Bank_Transaction` (
  `idBank_Transaction` int(11) NOT NULL AUTO_INCREMENT,
  `fk_bank_account_ID` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `fk_asset_category_ID` int(11) DEFAULT NULL,
  `withdrawal` decimal(10,2) DEFAULT NULL,
  `fk_expense_category_ID` int(11) DEFAULT NULL,
  `fk_credit_card_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`idBank_Transaction`,`fk_bank_account_ID`),
  KEY `bank_account_ID_idx` (`fk_bank_account_ID`),
  KEY `fk_asset_category_ID_idx` (`fk_asset_category_ID`),
  KEY `constraint_fk_credit_card_ID` (`fk_credit_card_ID`),
  KEY `fk_expense_category_ID_idx` (`fk_expense_category_ID`),
  CONSTRAINT `constraint_fk_asset_category_ID` FOREIGN KEY (`fk_asset_category_ID`) REFERENCES `Asset_Category` (`idAsset_Category`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `constraint_fk_bank_account_ID` FOREIGN KEY (`fk_bank_account_ID`) REFERENCES `Bank_Account` (`idBank_Account`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `constraint_fk_credit_card_ID` FOREIGN KEY (`fk_credit_card_ID`) REFERENCES `Credit_Card` (`idCredit_Card`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `constraint_fk_expense_category_ID` FOREIGN KEY (`fk_expense_category_ID`) REFERENCES `expense_category` (`idExpense_Category`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8;

/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tBank_Transaction_deposit
AFTER INSERT 
ON Bank_Transaction FOR EACH ROW
BEGIN
			UPDATE Bank_Account
            SET balance = balance + NEW.deposit
            WHERE Bank_Account.idBank_Account = NEW.fk_bank_account_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tBank_Transaction_withdrawal 
AFTER INSERT 
ON Bank_Transaction FOR EACH ROW
BEGIN
			UPDATE Bank_Account
            SET balance = balance - NEW.withdrawal
            WHERE Bank_Account.idBank_Account = NEW.fk_bank_account_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tCredit_Card_payment 
AFTER INSERT 
ON Bank_Transaction FOR EACH ROW
BEGIN
			UPDATE Credit_Card
            SET balance = balance - NEW.withdrawal
            WHERE Credit_Card.idCredit_Card = NEW.fk_credit_card_ID
            AND NEW.fk_expense_category_ID = 16;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

