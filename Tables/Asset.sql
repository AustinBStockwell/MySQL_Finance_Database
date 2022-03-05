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
-- Table `Stockwell_Financial`.`Asset`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Stockwell_Financial`.`Asset` ;

CREATE TABLE IF NOT EXISTS `Stockwell_Financial`.`Asset` (
  `idAsset` INT NOT NULL AUTO_INCREMENT,
  `fk_asset_category_ID` INT NULL,
  `owner` VARCHAR(50) NULL,
  `name` VARCHAR(50) NULL,
  `description` VARCHAR(100) NULL,
  `date_acquired` DATE NULL,
  `purchase_cost` DECIMAL(10,2) NULL,
  `sell_date` DATE NULL,
  `sell_price` DECIMAL(10,2) NULL,
  PRIMARY KEY (`idAsset`),
  INDEX `fk_asset_category_ID_idx` (`fk_asset_category_ID` ASC),
  CONSTRAINT `fk_asset_category_ID`
    FOREIGN KEY (`fk_asset_category_ID`)
    REFERENCES `Stockwell_Financial`.`Asset_Category` (`idAsset_Category`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;