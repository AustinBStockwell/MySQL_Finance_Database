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
-- Table `Stockwell_Financial`.`Asset_Category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Stockwell_Financial`.`Asset_Category` ;

CREATE TABLE IF NOT EXISTS `Stockwell_Financial`.`Asset_Category` (
  `idAsset_Category` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(250) NULL,
  PRIMARY KEY (`idAsset_Category`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- INSERT DATA INTO TABLE
-- -----------------------------------------------------
SELECT * FROM Asset_Category;
INSERT INTO Asset_Category VALUES (1, 'Stock');  
INSERT INTO Asset_Category VALUES (2, 'Bond');
INSERT INTO Asset_Category VALUES (3, 'Index Fund');
INSERT INTO Asset_Category VALUES (4, 'Mutual Fund');
INSERT INTO Asset_Category VALUES (5, 'IRA');
INSERT INTO Asset_Category VALUES (6, 'ROTH IRA');
INSERT INTO Asset_Category VALUES (7, '401K');
INSERT INTO Asset_Category VALUES (8, 'Roth 401K');
INSERT INTO Asset_Category VALUES (9, 'CD');
INSERT INTO Asset_Category VALUES (10, 'Commodity');
INSERT INTO Asset_Category VALUES (11, 'Cryptourrency');
INSERT INTO Asset_Category VALUES (12, 'Real Estate');
INSERT INTO Asset_Category VALUES (13, 'Tax Return');
INSERT INTO Asset_Category VALUES (100, 'Paycheck');
SELECT * FROM Asset_Category;