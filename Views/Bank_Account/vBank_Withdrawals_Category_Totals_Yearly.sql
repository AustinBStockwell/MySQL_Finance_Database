/*
Author: Austin Stockwell
  Type: VIEW
  Scope: To get monthly totals for spending in each Bank Transaction Liability Category
  Directions:  FIND AND REPLACE ALL dates (using COMMAND +F) and run query.
  */

USE Stockwell_Financial;
CREATE VIEW vBank_Withdrawals_Category_Totals_Yearly
AS
-- -----------------------------------------
-- RENT
-- ----------------------------------------
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 1
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- MORTGAGE
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 2
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- WATER
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 3
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- ELECTRICITY
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 4
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOME INSRUANCE
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 5
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- TRASH
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 6
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- GAS BILL
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 7
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- CAR PAYMENT
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 8
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- CAR INSURANCE
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 9
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- GAS
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 10
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- CAR REPAIRS
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 11
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- GROCERIES
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 12
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- CELL PHONE
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 13
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- WIFI
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 14
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- BACHELOR DEGREE LOAN
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 15
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- CREDIT CARD PAYMENT
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 16
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
--  BOOKS
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 17
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOBBIES
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 18
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- MUSIC
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 19
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- RESTAURANTS
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 20
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- ENTERTAINMENT
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 21
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- CLOTHING
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 22
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- TRAVEL
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 23
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- JEWELERY
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 24
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOME IMPROVEMENT
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 25
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- SELF IMPROVEMENT
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 26
and date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON MISCELLANEOUS
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(withdrawal) total
FROM 
    Bank_Transaction
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 100
and date between '2020-01-01' and '2020-12-31'
ORDER BY fk_expense_category_ID DESC;