-- using subqueries in updates

update invoices
set payment_Total = invoice_total * 0.5,
	payment_date= due_date
where client_id = 
	(select client_id
	from clients
	where name = 'Myworks');

select client_id
from clients
where name = 'Myworks';

-- want to update invoices for all clients in NY and CA

update invoices
set payment_Total = invoice_total * 0.5,
	payment_date= due_date
where client_id in
	(select client_id
	from clients
	where state IN ('CA', 'NY'));
    
    
select * from customers;
select * from orders;

update orders
set comments = 'Gold'
where customer_id  in (
	select customer_id
	from customers
	where points > 3000);

    
    
