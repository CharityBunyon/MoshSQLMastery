-- inner joins

select order_id, o.customer_id, first_name, last_name
from orders o
join customers c
	on o.customer_id = c.customer_id
    order by customer_id;

select * from order_items;
select * from products;

select order_id, p.name, oi.quantity, oi.unit_price
from order_items oi
join products p
	on oi.product_id = p.product_id;
