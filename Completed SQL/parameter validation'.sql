-- parameter validation

call sql_invoicing.make_payment(2, -100, '2020-01-01');

CREATE DEFINER=`root`@`localhost` PROCEDURE `make_payment`(
	invoice_id INT,
    payment_amount DECIMAL(9,2),
    payment_date DATE
)
BEGIN
	if payment_amount <= 0 THEN
		SIGNAL SQLSTATE '22003' 
        SET message_text = 'INVALID PAYMENT AMOUNT';
	END IF;
    
	UPDATE invoices i
	set 
		i.payment_total = payment_amount,
        i.payment_date = payment_date
	where i.invoice_id = invoice_id;
END