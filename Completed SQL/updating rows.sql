-- updating a single row

select * from invoices;

update invoices
set payment_Total = default, payment_date= null
where invoice_id = 1;

update invoices
set payment_Total = invoice_total * 0.5,
	payment_date= due_date
where invoice_id = 3;



-- updating multiple rows

update invoices
set payment_Total = invoice_total * 0.5,
	payment_date= due_date
where client_id = 3;



-- write a SQL statement to
-- give any customers born before 1990 50 extra points

select * from customers;

update customers
set points = points + 50
where birth_date < '1990-01-01';