-- outer joins

select 
	c.customer_id,
    c.first_name,
    o.order_id
from customers c
join orders o
	on c.customer_id = o.customer_id
    order by c.customer_id;
    
-- checking to see if a customer has an order or not
-- left join, all the customers from the customers table are shown whether the join condition is true or not
-- right join, all the customers from the orders table are shown whether the join condition is true or not

select 
	c.customer_id,
    c.first_name,
    o.order_id
from customers c
left join orders o
	on c.customer_id = o.customer_id
    order by c.customer_id;
    
select 
	p.product_id,
    p.name,
    oi.quantity
from products p
left join order_items oi
	on oi.product_id = p.product_id
    order by p.product_id