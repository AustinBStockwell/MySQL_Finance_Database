/*
Author: Austin Stockwell
  Type: VIEW
  Scope: To get monthly totals for spending in each Bank Transaction Liability Category
  Directions:  FIND AND REPLACE ALL charge_dates (using COMMAND +F) and run query.
  */

USE Stockwell_Financial;
CREATE VIEW vCredit_Transactions_Category_Totals_Yearly
AS
-- -----------------------------------------
-- RENT
-- ----------------------------------------
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 1
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- MORTGAGE
-- ----------------------------------------
UNION
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 2
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- WATER
-- ----------------------------------------
UNION
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 3
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- ELECTRICITY
-- ----------------------------------------
UNION
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 4
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- HOME INSRUANCE
-- ----------------------------------------
UNION
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 5
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- TRASH
-- ----------------------------------------
UNION
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 6
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- GAS BILL
-- ----------------------------------------
UNION
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 7
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- CAR PAYMENT
-- ----------------------------------------
UNION
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 8
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- CAR INSURANCE
-- ----------------------------------------
UNION
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 9
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- GAS
-- ----------------------------------------
UNION
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 10
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- CAR REPAIRS
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 11
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- GROCERIES
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 12
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- CELL PHONE
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 13
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- WIFI
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 14
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- BACHELOR DEGREE LOAN
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 15
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- CREDIT CARD PAYMENT
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 16
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
--  BOOKS
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 17
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- HOBBIES
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 18
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- MUSIC
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 19
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- RESTAURANTS
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 20
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- ENTERTAINMENT
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 21
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- CLOTHING
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 22
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- TRAVEL
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 23
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- JEWELERY
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 24
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- HOME IMPROVEMENT
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 25
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- SELF IMPROVEMENT
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 26
and charge_date between '2021-01-01' and '2021-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON MISCELLANEOUS
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 100
and charge_date between '2021-01-01' and '2021-12-31'
ORDER BY fk_liability_category_ID DESC;