-- in operator

-- find the products that have never been ordered

select *
from products
where product_id not in (
	select distinct product_id
	from order_items
);

-- Find clients without invoices

 