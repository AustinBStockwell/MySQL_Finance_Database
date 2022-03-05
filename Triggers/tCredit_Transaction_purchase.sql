/*
	Author: Austin Stockwell
    Scope: TRIGGER
    Description: Updates credit card balance when a purchase is made.
						Whenever an INSERT statement is executed on the Credit_Transaction table,
                        the balance of the corresponding credit card in the Credit_Card table
                        is updated accordingly (AFTERTHE INSERT STATEMENT).

	NOTE: IF YOU DROP A CORRESPONDING TABLE YOU MUST RE-RUN THIS SCRIPT
				IN ORDER FOR THE SCRIPT TO WORK!
*/

USE Stockwell_Financial;

DELIMITER $$

CREATE TRIGGER tCredit_Transaction_purchase 
AFTER INSERT 
ON Credit_Transaction FOR EACH ROW
BEGIN
			UPDATE Credit_Card
            SET balance = balance + NEW.charge
            WHERE Credit_Card.idCredit_Card = NEW.fk_credit_card_ID;
END;
$$
DELIMITER ;