/*
	Author: Austin Stockwell
    Scope: TRIGGER
    Description: Updates credit card balance when a PAYMENT is made.
						Whenever an INSERT statement is executed on the Bank_Transaction table,
                        the balance of the corresponding credit card in the Credit_Card table
                        is updated according to the payment made (AFTERTHE INSERT STATEMENT).

	NOTE: IF YOU DROP A CORRESPONDING TABLE YOU MUST RE-RUN THIS SCRIPT
				IN ORDER FOR THE SCRIPT TO WORK!
*/

USE Stockwell_Financial;

DELIMITER $$

CREATE TRIGGER tCredit_Card_payment 
AFTER INSERT 
ON Bank_Transaction FOR EACH ROW
BEGIN
			UPDATE Credit_Card
            SET balance = balance - NEW.withdrawal
            WHERE Credit_Card.idCredit_Card = NEW.fk_credit_card_ID
            AND NEW.fk_expense_category_ID = 16;
END;
$$
DELIMITER ;

