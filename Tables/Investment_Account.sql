/* AUTHOR: Austin Stockwell
		DATE: 2022
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
DROP TABLE IF EXISTS `Stockwell_Financial`.`Investment_Account` ;

CREATE TABLE IF NOT EXISTS `Stockwell_Financial`.`Investment_Account` (
  `idInvestment_Account` INT NOT NULL AUTO_INCREMENT,
  `owner` VARCHAR(50) NULL,
  `institution` VARCHAR(50) NULL,
  `type` VARCHAR(100) NULL,
  `date_opened` DATE NULL,
  `balance` DECIMAL(10,2) NULL,
  PRIMARY KEY (`idInvestment_Account`))
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
