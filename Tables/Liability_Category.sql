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
-- Table `Stockwell_Financial`.`Liability_Category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Stockwell_Financial`.`Liability_Category` ;

CREATE TABLE IF NOT EXISTS `Stockwell_Financial`.`Liability_Category` (
  `idLiability_Category` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NULL,
  PRIMARY KEY (`idLiability_Category`))
ENGINE = InnoDB;

-- -----------------------------------------------------------------------------------
-- INSERT DATA INTO TABLE
-- -----------------------------------------------------------------------------------
-- PERSONAL BILLS & CREDIT CARD CHARGES (1 - 100)
-- Personal Expenses
SELECT * FROM Liability_Category;
INSERT INTO Liability_Category VALUES (1, 'Rent'); 
INSERT INTO Liability_Category VALUES (2, 'Mortgage');
INSERT INTO Liability_Category VALUES (3, 'Water');
INSERT INTO Liability_Category VALUES (4, 'Electricity'); 
INSERT INTO Liability_Category VALUES (5, 'Home Insurance');
INSERT INTO Liability_Category VALUES (6, 'Trash');
INSERT INTO Liability_Category VALUES (7, 'Gas Bill');
INSERT INTO Liability_Category VALUES (8, 'Car Payment');
INSERT INTO Liability_Category VALUES (9, 'Car Insurance');
INSERT INTO Liability_Category VALUES (13, 'Cellphone');
INSERT INTO Liability_Category VALUES (14, 'Wifi'); 
INSERT INTO Liability_Category VALUES (15, 'Bachelor Degree Loan');
INSERT INTO Liability_Category VALUES (16, 'Credit Card Payment');
INSERT INTO Liability_Category VALUES (10, 'Gasoline');
INSERT INTO Liability_Category VALUES (11, 'Car Repairs');
INSERT INTO Liability_Category VALUES (12, 'Groceries');
INSERT INTO Liability_Category VALUES (17, 'Books');
INSERT INTO Liability_Category VALUES (18, 'Hobbies');
INSERT INTO Liability_Category VALUES (19, 'Music');
INSERT INTO Liability_Category VALUES (20, 'Restaurant');
INSERT INTO Liability_Category VALUES (21, 'Entertainment');
INSERT INTO Liability_Category VALUES (22, 'Clothing');
INSERT INTO Liability_Category VALUES (23, 'Travel');
INSERT INTO Liability_Category VALUES (24, 'Jewelry');
INSERT INTO Liability_Category VALUES (25, 'Home Improvement');
INSERT INTO Liability_Category VALUES (26, 'Self Improvement');
INSERT INTO Liability_Category VALUES (100, 'Miscellaneous');
SELECT * FROM Liability_Category;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;