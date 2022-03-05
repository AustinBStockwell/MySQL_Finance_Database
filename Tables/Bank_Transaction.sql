/* AUTHOR: Austin Stockwell
		DATE: 2020
        SCOPE: Financial Database
		
        NOTE: When INSERTING DATA into this table, you
					MUST FILL OUT NUMBER in a deposit/withdrawal
                    fields (can not leave NULL).  This is to ensure TRIGGER
                    functionality and balance updating on Bank_Account table!
                    
		NOTE: Two new Foreign Keys were added (fk_liability_category_ID and
					fk_credit_card_ID).  The fk_liability_category_ID was added to 
                    help aid the 'vCredit_Transactions' VIEW.  The fk_credit_card_ID
                    was added to give the tCredit_Card_payment TRIGGER
                    the ability adjust the credit card balance of the appropriate card 
                    in the Credit_Card table.
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
-- Table `Stockwell_Financial`.`Bank_Transaction`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Stockwell_Financial`.`Bank_Transaction` ;

CREATE TABLE IF NOT EXISTS `Stockwell_Financial`.`Bank_Transaction` (
  `idBank_Transaction` INT NOT NULL AUTO_INCREMENT,
  `fk_bank_account_ID` INT NOT NULL,
  `date` DATE NULL,
  `description` VARCHAR(100) NULL,
  `deposit` DECIMAL(10,2) NULL,
  `fk_asset_ID` INT NULL,
  `fk_asset_category_ID` INT NULL,
  `withdrawal` DECIMAL(10,2) NULL,
  `fk_liability_category_ID` INT NULL,
  `fk_credit_card_ID` INT NULL,
  PRIMARY KEY (`idBank_Transaction`, `fk_bank_account_ID`),
  INDEX `bank_account_ID_idx` (`fk_bank_account_ID` ASC),
  INDEX `Bank_Transaction_asset_ID_idx` (`fk_asset_ID` ASC),
  INDEX `fk_liability_category_ID_idx` (`fk_liability_category_ID` ASC),
  INDEX `fk_asset_category_ID_idx` (`fk_asset_category_ID` ASC),
  CONSTRAINT `constraint_fk_bank_account_ID`
    FOREIGN KEY (`fk_bank_account_ID`)
    REFERENCES `Stockwell_Financial`.`Bank_Account` (`idBank_Account`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `constraint_fk_asset_ID`
    FOREIGN KEY (`fk_asset_ID`)
    REFERENCES `Stockwell_Financial`.`Asset` (`idAsset`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `constraint_fk_liability_category_ID`
    FOREIGN KEY (`fk_liability_category_ID`)
    REFERENCES `Stockwell_Financial`.`Liability_Category` (`idLiability_Category`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `constraint_fk_asset_category_ID`
    FOREIGN KEY (`fk_asset_category_ID`)
    REFERENCES `Stockwell_Financial`.`Asset_Category` (`idAsset_Category`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `constraint_fk_credit_card_ID`
    FOREIGN KEY (`fk_credit_card_ID`)
    REFERENCES `Stockwell_Financial`.`Credit_Card`(`idCredit_Card`)
	ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;