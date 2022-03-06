/*
 AUTHOR: Austin Stockwell
   SCOPE: View
   DESCRIPTION: This is a view that shows credit transactions in a convienient way
*/

USE Stockwell_Financial;

DROP VIEW  vCredit_Transactions;
CREATE VIEW vCredit_Transactions
AS
SELECT 
	Credit_Transaction.idCredit_Transaction,
	Credit_Card.owner card_holder,
    Credit_Card.brand,
    Credit_Transaction.description charge_description,
    Credit_Transaction.charge_date,
	Credit_Transaction.charge,
    Expense_Category.category expense_category
FROM Credit_Transaction 
JOIN Credit_Card ON Credit_Transaction.fk_credit_card_ID = Credit_Card.idCredit_Card
JOIN Expense_Category ON Credit_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
ORDER BY charge_date DESC;
