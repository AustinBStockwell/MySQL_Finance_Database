/*
	Author: Austin Stockwell
    Scope: TRIGGER
    Description: Updates bank account balance when a withdrawal is made.
						Whenever an INSERT statement is executed on the Bank_Transaction table,
                        the balance of the corresponding bank account in the Bank_Account table
                        is updated accordingly (AFTERTHE INSERT STATEMENT).

	NOTE: IF YOU DROP A CORRESPONDING TABLE YOU MUST RE-RUN THIS SCRIPT
				IN ORDER FOR THE SCRIPT TO WORK!
*/

USE Stockwell_Financial;

DELIMITER $$

CREATE TRIGGER tBank_Transaction_withdrawal 
AFTER INSERT 
ON Bank_Transaction FOR EACH ROW
BEGIN
			UPDATE Bank_Account
            SET balance = balance - NEW.withdrawal
            WHERE Bank_Account.idBank_Account = NEW.fk_bank_account_ID;
END;
$$
DELIMITER ;
