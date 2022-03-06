/* AUTHOR: Austin Stockewll
   SCOPE: View
   DESCRIPTION:  This is a view that shows INCOME only.
*/
DROP VIEW vBank_Deposits;
CREATE VIEW vBank_Deposits
AS
SELECT 
	Bank_Transaction.idBank_Transaction,
	Bank_Account.owner account_holder,
    Bank_Account.type account_type,
    Bank_Account.bank bank,
    Bank_Transaction.description deposit_description,
    Bank_Transaction.date,
	Bank_Transaction.deposit deposit_amount,
    Asset_Category.category asset_category
FROM Bank_Transaction
JOIN Bank_Account ON Bank_Transaction.fk_bank_account_ID = Bank_Account.idBank_Account
JOIN Asset_Category ON Bank_Transaction.fk_asset_category_ID = Asset_Category.idAsset_Category
WHERE Bank_Transaction.deposit > 0.00
ORDER BY date DESC;
