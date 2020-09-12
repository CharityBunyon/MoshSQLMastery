-- deleting rows


delete from invoices
where client_id = 1;

-- or use a subquery

delete from invoices
where client_id = (
	select *
	from clients
	where name = 'Myworks');