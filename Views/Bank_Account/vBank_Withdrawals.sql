/*
 AUTHOR: Austin Stockwel
   SCOPE: View
   DESCRIPTION:  This is a view that shows bank transactions in a convenient way.
*/

CREATE VIEW vBank_Withdrawals
AS
SELECT 
	Bank_Transaction.idBank_Transaction,
	Bank_Account.owner account_holder,
	Bank_Account.type account_type,
    Bank_Account.brand bank,
    Bank_Transaction.description withdrawal_description,
    Bank_Transaction.date,
	Bank_Transaction.withdrawal withdrawal_amount,
    Liability_Category.name liability_category
FROM Bank_Transaction
JOIN Bank_Account ON Bank_Transaction.fk_bank_account_ID = Bank_Account.idBank_Account
JOIN Liability_Category ON Bank_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
ORDER BY date DESC;
