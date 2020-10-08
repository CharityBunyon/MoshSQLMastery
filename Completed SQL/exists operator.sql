-- exist operator 

-- select clients that have an invoice

select *
from clients
where client_id in (
	select distinct client_id
    from ivoices
);

-- using exist operator

select *
from clients c
where exists (
	select client_id
    from invoices 
    where client_id = c.client_id
);


-- find the products that have never been ordered
select *
from products p
where not exists (
	select product_id
    from order_items oi
    where product_id = p.product_id
);

select * from products;
select * from order_items;



