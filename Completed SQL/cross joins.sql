-- natural joins// not always recommended because it can produced unexpected results

select 
	o.order_id,
    c.first_name
from orders o
natural join customers c;



-- cross joins

select 
	c.first_name as customer,
    p.name as product
from customers c
cross join products p
order by c.first_name;

-- could be written this way as well

select 
	c.first_name as customer,
    p.name as product
from customers c, products p
order by c.first_name;


-- do a cross join between shippers and products
-- using the implicit syntax
-- and then using the explicit syntax
select *
from shippers s, products p;

select *
from shippers s
cross join products p;




