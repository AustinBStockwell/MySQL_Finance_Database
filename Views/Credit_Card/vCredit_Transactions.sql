/*
 AUTHOR: Austin Stockwell
   SCOPE: View
   DESCRIPTION: This is a view that shows credit transactions in a convienient way
*/

CREATE VIEW vCredit_Transactions
AS
SELECT 
	Credit_Transaction.idCredit_Transaction,
	Credit_Card.owner card_holder,
    Credit_Card.brand,
    Credit_Transaction.description charge_description,
    Credit_Transaction.charge_date,
	Credit_Transaction.charge,
    Liability_Category.name liability_category
FROM Credit_Transaction 
JOIN Credit_Card ON Credit_Transaction.fk_credit_card_ID = Credit_Card.idCredit_Card
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
ORDER BY charge_date DESC;
