/*
Author: Austin Stockwell
  Type: VIEW
  Scope: To get monthly totals for spending in each Liability Category
  Directions:  FIND AND REPLACE ALL dates (using COMMAND +F) and run query.
  */

USE Stockwell_Financial;

/* UNCOMMENT FOR TOTALS! */

/* SELECT SUM(total) FROM (      */
-- -----------------------------------------
-- HOW MUCH SPENT ON RENT
-- ----------------------------------------
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 1
        AND date BETWEEN '2022-03-01' AND '2022-03-31'
        
        
-- -----------------------------------------
-- HOW MUCH SPENT ON MORTGAGE
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 2
AND date BETWEEN '2022-03-01' AND '2022-03-31' 


-- -----------------------------------------
-- HOW MUCH SPENT ON WATER
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 3
AND date BETWEEN '2022-03-01' AND '2022-03-31' 

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 3
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON ELECTRICITY
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 4
AND date BETWEEN '2022-03-01' AND '2022-03-31' 

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 4
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON HOME INSURANCE
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 5
        AND date BETWEEN '2022-03-01' AND '2022-03-31'  
        
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 5
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON TRASH
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 6
        AND date BETWEEN '2022-03-01' AND '2022-03-31' 
        
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 6
and charge_date between '2022-03-01' and '2022-03-31'

        
-- -----------------------------------------
-- HOW MUCH SPENT ON GAS BILL
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 7
        AND date BETWEEN '2022-03-01' AND '2022-03-31' 
        
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 7
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON CAR PAYMENT
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 8
        AND date BETWEEN '2022-03-01' AND '2022-03-31' 
        
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 8
and charge_date between '2022-03-01' and '2022-03-31'

        
-- -----------------------------------------
-- HOW MUCH SPENT ON CAR INSURANCE
-- ----------------------------------------
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 9
        AND date BETWEEN '2022-03-01' AND '2022-03-31'
        
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 9
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON GASOLINE
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 10
        AND date BETWEEN '2022-03-01' AND '2022-03-31'
        
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 10
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON CAR REPAIRS
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 11
        AND date BETWEEN '2022-03-01' AND '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 11
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON GROCERIES
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 12
        AND date BETWEEN '2022-03-01' AND '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 12
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON CELLPHONE
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 13
        AND date BETWEEN '2022-03-01' AND '2022-03-31'
        
UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 13
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON WIFI
-- ----------------------------------------
UNION
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*),
    SUM(withdrawal) total
FROM
    Bank_Transaction
        JOIN
    Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE
    fk_expense_category_ID = 14
        AND date BETWEEN '2022-03-01' AND '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 14
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON CAR BACHELOR DEGREE LOAN
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
and date between '2022-03-01' and '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 15
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON CREDIT CARD PAYMENTS
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
and date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON BOOKS
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
and date between '2022-03-01' and '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 17
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON HOBBIES
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
and date between '2022-03-01' and '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 18
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON MUSIC
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
and date between '2022-03-01' and '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 19
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON RESTAURANT
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
and date between '2022-03-01' and '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 20
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON ENTERTAINMENT
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
and date between '2022-03-01' and '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 21
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON CAR CLOTHING
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
and date between '2022-03-01' and '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 22
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON TRAVEL
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
and date between '2022-03-01' and '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 23
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON JEWELERY
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
and date between '2022-03-01' and '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 24
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON HOME IMPROVEMENT
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
and date between '2022-03-01' and '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 25
and charge_date between '2022-03-01' and '2022-03-31'


-- -----------------------------------------
-- HOW MUCH SPENT ON SELF-IMPROVEMENT
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
and date between '2022-03-01' and '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 26
and charge_date between '2022-03-01' and '2022-03-31'


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
and date between '2022-03-01' and '2022-03-31'

UNION 
SELECT 
    fk_expense_category_ID,
    Expense_Category.category,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
WHERE fk_expense_category_ID = 99
and charge_date between '2022-03-01' and '2022-03-31'
ORDER BY fk_expense_category_ID DESC;


/* UNCOMMENT FOR TOTALS */
/*     ) cool_totals WHERE fk_expense_category_ID NOT IN (16);     */