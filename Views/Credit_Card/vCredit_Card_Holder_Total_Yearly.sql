/*
Author: Austin Stockwell
  Type: VIEW
  Scope: To get totals for spending in each person's credit card history
  Directions:  FIND AND REPLACE ALL dates (using COMMAND +F) and run query.
  */

USE Stockwell_Financial;
CREATE VIEW vCredit_Card_Holder_Totals_2020
AS
SELECT 
    card_holder, 
    COUNT(*), SUM(charge) total
FROM
    vCredit_Transactions
WHERE
	charge_date BETWEEN '2020-01-01' AND '2020-12-31' 
GROUP BY card_holder
ORDER BY total DESC;
