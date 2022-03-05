/* AUTHOR: Austin Stockwell
		DATE: 2020
        SCOPE: Financial Database
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
-- Table `Stockwell_Financial`.`Credit_Transaction`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Stockwell_Financial`.`Credit_Transaction` ;

CREATE TABLE IF NOT EXISTS `Stockwell_Financial`.`Credit_Transaction` (
  `idCredit_Transaction` INT NOT NULL AUTO_INCREMENT,
  `fk_credit_card_ID` INT NOT NULL,
  `description` VARCHAR(100) NULL,
  `fk_liability_category_ID` INT NULL,
  `charge_date` DATE NULL,
  `charge` DECIMAL(10,2) NULL,
  PRIMARY KEY (`idCredit_Transaction`, `fk_credit_card_ID`),
  INDEX `credit_card_ID_idx` (`fk_credit_card_ID` ASC),
  INDEX `Credit_Transaction_credit_card_bill_category_ID_idx` (`fk_liability_category_ID` ASC),
  CONSTRAINT `fk_credit_card_ID`
    FOREIGN KEY (`fk_credit_card_ID`)
    REFERENCES `Stockwell_Financial`.`Credit_Card` (`idCredit_Card`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_credit_card_bill_category_ID`
    FOREIGN KEY (`fk_liability_category_ID`)
    REFERENCES `Stockwell_Financial`.`Liability_Category` (`idLiability_Category`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;