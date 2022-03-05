/*
Author: Austin Stockwell
  Type: VIEW
  Scope: To get TOTAL YEARLY INCOME TO DATE
  */

USE Stockwell_Financial;
CREATE VIEW vIncome_Total_2020
AS
-- -----------------------------------------
-- STOCK 
-- ----------------------------------------
SELECT 
    COUNT(*), SUM(deposit) total
FROM 
    Bank_Transaction
WHERE
date BETWEEN '2020-01-01' AND '2020-12-31' 