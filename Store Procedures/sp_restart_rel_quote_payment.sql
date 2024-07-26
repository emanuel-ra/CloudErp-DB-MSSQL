CREATE PROCEDURE sp_restart_rel_quote_payment
@QUOTE_ID INT 
AS 
	BEGIN
		UPDATE Payments
			SET IsAccepted = 0 
		FROM RelQuotesToPayment a 
		WHERE Payments.Id = a.PaymentId
		AND A.QuoteId = @QUOTE_ID
	END;