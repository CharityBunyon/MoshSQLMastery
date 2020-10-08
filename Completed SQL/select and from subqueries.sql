-- subqueries in the select clause

select 
	invoice_id,
	invoice_total,
	(select avg(invoice_total)
		from invoices) as invoice_average,
	invoice_total - (select invoice_average) as difference
from invoices;



-- subqueries in the from clause

select *
from (
	select 
		client_id,
		name,
		(select sum (invoice_total)
			from invoices
			where client_id = c.client_id) as total_sales,
		(select avg(invoice_total) from invoices) as invoices,
		(select total_sales - average) as difference
	from clients c
);