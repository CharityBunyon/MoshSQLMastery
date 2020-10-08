-- ALL keyword

-- select invoices larger than all invoices of client 3

select max(invoice_total)
from invoices i
join clients c using (client_id)
where client_id = 3;


-- different way
select *
from invoices 
where invoice_total > all(
	select invoice_total
	from invoices 
	where client_id = 3
);



-- ANY Keyword

-- Select clients with at least two invoices

select *
from clients 
where client_id IN (
	select client_id
	from invoices
	group by client_id
	having count(*) >= 2
);

-- or
select *
from clients 
where client_id = ANY (
	select client_id
	from invoices
	group by client_id
	having count(*) >= 2
);

-- = any is equilvalent to the in operator