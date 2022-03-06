/* AUTHOR: Austin Stockwell
		DATE: 2020
        SCOPE: Financial Database

        NOTE: The balance was changed to NOT NULL.  This allows
					the tCredit_Card_Payment TRIGGER to work correctly.
                    If the balance was allows to be NULL and the balance
                    was paid down to zero, it would create a NULL field in the balance
                    and no longer work correctly.  Thus, the field is made NOT NULL
                    so even if the balance is paid to 0.00, it remains 0.00 (not a NULL).
*/

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=1;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- -----------------------------------------------------
-- Schema Stockwell_Financial
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Stockwell_Financial` DEFAULT CHARACTER SET utf8 ;
USE `Stockwell_Financial` ;

-- -----------------------------------------------------
-- Table `Stockwell_Financial`.`Credit_Card`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Stockwell_Financial`.`Credit_Card` ;

CREATE TABLE IF NOT EXISTS `Stockwell_Financial`.`Credit_Card` (
  `idCredit_Card` INT NOT NULL AUTO_INCREMENT,
  `owner` VARCHAR(50) NULL,
  `brand` VARCHAR(50) NULL,
  `description` VARCHAR(100) NULL,
  `interest_rate` DECIMAL(4,2) NULL,
  `date_acquired` DATE NULL,
  `date_expires` DATE NULL,
  `balance` DECIMAL(10,2) NOT NULL,
  `credit_limit` DECIMAL(10,2) NULL,
  PRIMARY KEY (`idCredit_Card`))
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
