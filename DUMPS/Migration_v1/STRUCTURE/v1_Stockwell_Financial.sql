CREATE DATABASE  IF NOT EXISTS `Stockwell_Financial` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Stockwell_Financial`;
-- MySQL dump 10.13  Distrib 5.7.19, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: Stockwell_Financial
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `Asset`
--

DROP TABLE IF EXISTS `Asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Asset` (
  `idAsset` int(11) NOT NULL AUTO_INCREMENT,
  `fk_asset_category_ID` int(11) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `asset` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `sell_date` date DEFAULT NULL,
  `sell_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idAsset`),
  KEY `fk_asset_category_ID_idx` (`fk_asset_category_ID`),
  CONSTRAINT `fk_asset_category_ID` FOREIGN KEY (`fk_asset_category_ID`) REFERENCES `Asset_Category` (`idAsset_Category`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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

--
-- Table structure for table `Bank_Account`
--

DROP TABLE IF EXISTS `Bank_Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bank_Account` (
  `idBank_Account` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `bank` varchar(25) DEFAULT NULL,
  `account` int(4) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `interest_rate` decimal(4,2) DEFAULT NULL,
  `balance` decimal(12,2) NOT NULL,
  PRIMARY KEY (`idBank_Account`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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

--
-- Table structure for table `Credit_Card`
--

DROP TABLE IF EXISTS `Credit_Card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Credit_Card` (
  `idCredit_Card` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `interest_rate` decimal(4,2) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `credit_limit` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idCredit_Card`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Credit_Transaction`
--

DROP TABLE IF EXISTS `Credit_Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Credit_Transaction` (
  `idCredit_Transaction` int(11) NOT NULL AUTO_INCREMENT,
  `fk_credit_card_ID` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fk_expense_category_ID` int(11) DEFAULT NULL,
  `charge_date` date DEFAULT NULL,
  `charge` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idCredit_Transaction`,`fk_credit_card_ID`),
  KEY `credit_card_ID_idx` (`fk_credit_card_ID`),
  KEY `Credit_Transaction_credit_card_bill_category_ID_idx` (`fk_expense_category_ID`),
  CONSTRAINT `fk_credit_card_ID` FOREIGN KEY (`fk_credit_card_ID`) REFERENCES `Credit_Card` (`idCredit_Card`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_expense_category_ID` FOREIGN KEY (`fk_expense_category_ID`) REFERENCES `expense_category` (`idExpense_Category`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1838 DEFAULT CHARSET=utf8;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tCredit_Transaction_purchase 
AFTER INSERT 
ON Credit_Transaction FOR EACH ROW
BEGIN
			UPDATE Credit_Card
            SET balance = balance + NEW.charge
            WHERE Credit_Card.idCredit_Card = NEW.fk_credit_card_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Expense_Category`
--

DROP TABLE IF EXISTS `Expense_Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Expense_Category` (
  `idExpense_Category` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idExpense_Category`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Investment_Account`
--

DROP TABLE IF EXISTS `Investment_Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Investment_Account` (
  `idInvestment_Account` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `institution` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `date_opened` date DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idInvestment_Account`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `vbank_deposits`
--

DROP TABLE IF EXISTS `vbank_deposits`;
/*!50001 DROP VIEW IF EXISTS `vbank_deposits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vbank_deposits` AS SELECT 
 1 AS `idBank_Transaction`,
 1 AS `account_holder`,
 1 AS `account_type`,
 1 AS `bank`,
 1 AS `deposit_description`,
 1 AS `date`,
 1 AS `deposit_amount`,
 1 AS `asset_category`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vbank_withdrawals`
--

DROP TABLE IF EXISTS `vbank_withdrawals`;
/*!50001 DROP VIEW IF EXISTS `vbank_withdrawals`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vbank_withdrawals` AS SELECT 
 1 AS `idBank_Transaction`,
 1 AS `account_holder`,
 1 AS `account_type`,
 1 AS `bank`,
 1 AS `withdrawal_description`,
 1 AS `date`,
 1 AS `withdrawal_amount`,
 1 AS `expense_category`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vcredit_transactions`
--

DROP TABLE IF EXISTS `vcredit_transactions`;
/*!50001 DROP VIEW IF EXISTS `vcredit_transactions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vcredit_transactions` AS SELECT 
 1 AS `idCredit_Transaction`,
 1 AS `card_holder`,
 1 AS `brand`,
 1 AS `charge_description`,
 1 AS `charge_date`,
 1 AS `charge`,
 1 AS `expense_category`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vbank_deposits`
--

/*!50001 DROP VIEW IF EXISTS `vbank_deposits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vbank_deposits` AS select `bank_transaction`.`idBank_Transaction` AS `idBank_Transaction`,`bank_account`.`owner` AS `account_holder`,`bank_account`.`type` AS `account_type`,`bank_account`.`bank` AS `bank`,`bank_transaction`.`description` AS `deposit_description`,`bank_transaction`.`date` AS `date`,`bank_transaction`.`deposit` AS `deposit_amount`,`asset_category`.`category` AS `asset_category` from ((`bank_transaction` join `bank_account` on((`bank_transaction`.`fk_bank_account_ID` = `bank_account`.`idBank_Account`))) join `asset_category` on((`bank_transaction`.`fk_asset_category_ID` = `asset_category`.`idAsset_Category`))) where (`bank_transaction`.`deposit` > 0.00) order by `bank_transaction`.`date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vbank_withdrawals`
--

/*!50001 DROP VIEW IF EXISTS `vbank_withdrawals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vbank_withdrawals` AS select `bank_transaction`.`idBank_Transaction` AS `idBank_Transaction`,`bank_account`.`owner` AS `account_holder`,`bank_account`.`type` AS `account_type`,`bank_account`.`bank` AS `bank`,`bank_transaction`.`description` AS `withdrawal_description`,`bank_transaction`.`date` AS `date`,`bank_transaction`.`withdrawal` AS `withdrawal_amount`,`expense_category`.`category` AS `expense_category` from ((`bank_transaction` join `bank_account` on((`bank_transaction`.`fk_bank_account_ID` = `bank_account`.`idBank_Account`))) join `expense_category` on((`bank_transaction`.`fk_expense_category_ID` = `expense_category`.`idExpense_Category`))) order by `bank_transaction`.`date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vcredit_transactions`
--

/*!50001 DROP VIEW IF EXISTS `vcredit_transactions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vcredit_transactions` AS select `credit_transaction`.`idCredit_Transaction` AS `idCredit_Transaction`,`credit_card`.`owner` AS `card_holder`,`credit_card`.`brand` AS `brand`,`credit_transaction`.`description` AS `charge_description`,`credit_transaction`.`charge_date` AS `charge_date`,`credit_transaction`.`charge` AS `charge`,`expense_category`.`category` AS `expense_category` from ((`credit_transaction` join `credit_card` on((`credit_transaction`.`fk_credit_card_ID` = `credit_card`.`idCredit_Card`))) join `expense_category` on((`credit_transaction`.`fk_expense_category_ID` = `expense_category`.`idExpense_Category`))) order by `credit_transaction`.`charge_date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-08 16:46:31
