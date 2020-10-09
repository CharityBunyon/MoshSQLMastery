-- creating views


-- get the total sales for each client

create view sales_by_client as
select 
	c.client_id,
    c.name, 
    sum(invoice_total) as total_sales
from clients c 
join invoices i using(client_id)
group by client_id, name;

-- the result works like a table
select *
from sales_by_client
where total_sales > 500;


-- create a view to see the balance for each client
-- clients_balance (name of view)
-- client_id, name, balance (column names)

create view clients_balance as
select 
	client_id,
    name,
    sum(invoice_total - payment_total) as balance
from clients c
join invoices i using(client_id)
group by client_id, name;
