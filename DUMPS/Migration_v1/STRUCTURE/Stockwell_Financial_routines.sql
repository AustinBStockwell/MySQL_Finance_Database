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

-- Dump completed on 2022-03-08 16:44:32
