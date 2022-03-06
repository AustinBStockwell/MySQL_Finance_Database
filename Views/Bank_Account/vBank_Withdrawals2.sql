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
    Bank_Account.bank bank,
    Bank_Transaction.description withdrawal_description,
    Bank_Transaction.date,
	Bank_Transaction.withdrawal withdrawal_amount,
    Expense_Category.category expense_category
FROM Bank_Transaction
JOIN Bank_Account ON Bank_Transaction.fk_bank_account_ID = Bank_Account.idBank_Account
JOIN Expense_Category ON Bank_Transaction.fk_expense_category_ID = Expense_Category.idExpense_Category
ORDER BY date DESC;
