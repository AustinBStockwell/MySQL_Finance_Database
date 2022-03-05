/*-- -----------------------------------------
-- BEGIN TITLE
-- ----------------------------------------
AUTHOR: Austin Stockwell
DATE: 2020
ABOUT: MySQL commands and notes for queries
-- -----------------------------------------
-- END TITLE
-- ----------------------------------------
/* Delete data from a table */
DELETE FROM Credit_Transaction
WHERE idCredit_Transaction = 746;

/* Updating a table */
UPDATE Credit_Card
SET credit_limit = '8900'
WHERE idCredit_Card = 2;

/* Altering a table column name*/
ALTER TABLE table_name
    CHANGE COLUMN original_name new_name column_definition
    [FIRST | AFTER column_name];

/* Joining two tables */
SELECT 
	Credit_Transaction.idCredit_Transaction,
	Credit_Card.owner,
    Credit_Transaction.description,
    Credit_Transaction.charge_date,
	Credit_Transaction.charge,
    Credit_Card.brand
FROM Credit_Transaction 
JOIN Credit_Card ON Credit_Transaction.fk_credit_card_ID = Credit_Card.idCredit_Card;

/* Joining THREE tables */
SELECT 
	Credit_Transaction.idCredit_Transaction,
	Credit_Card.owner,
    Credit_Transaction.description,
    Credit_Transaction.charge_date,
	Credit_Transaction.charge,
    Credit_Card.brand,
    Liability_Category.name
FROM Credit_Transaction 
JOIN Credit_Card ON Credit_Transaction.fk_credit_card_ID = Credit_Card.idCredit_Card
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category;

/* Counting number of rows in a table */
SELECT COUNT(*) 
FROM vCredit_Transactions
WHERE name = 'Groceries';

/* Count nuber of rows for EACH ELEMENT in a table*/
SELECT 
    name, 
    COUNT(*), SUM(charge) total
FROM
    vCredit_Transactions
GROUP BY name
ORDER BY total DESC;

/* Select unique values from a table and eliminates duplicates in result */
SELECT DISTINCT description
FROM Bank_Transaction;

/* Count the number of rows in a table and display count with corresponding label */
SELECT owner, count(*) as number FROM vCredit_Transactions GROUP BY owner;

/* Sum values of a row */
SELECT SUM(Quantity) AS TotalItemsOrdered FROM OrderDetails;

-- -------------------------------------------------------------------------------------------------------
-- FUNCTIONS FUNCTIONS FUNCTIONS 
-- -------------------------------------------------------------------------------------------------------

#Returning data function
DELIMITER //
CREATE PROCEDURE GetAllBankTransactions()
BEGIN
    SELECT *  FROM Bank_Transaction;
END //
DELIMITER ;
-- ----------------------------------------------

/* Counters  and IN/INOUT variables.*/
DELIMITER $$
CREATE PROCEDURE SetCounter(
    INOUT counter INT,
    IN inc INT
)
BEGIN
    SET counter = counter + inc;
END$$
DELIMITER ;
SET @counter = 10;
CALL SetCounter(@counter,2); /*set to ten above + 2*/
SELECT @counter; /*Displays 12 in table under the @counter column*/

/*Example 2*/
SET @counter = 1;
CALL SetCounter(@counter,1); -- 2
CALL SetCounter(@counter,1); -- 3
CALL SetCounter(@counter,5); -- 8
SELECT @counter; -- 8