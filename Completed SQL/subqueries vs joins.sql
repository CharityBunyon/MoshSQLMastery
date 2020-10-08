-- find customers who have ordered lettuce (id =3)
-- select customer_id, first and last name

select 
customer_id, 
first_name, 
last_name
from customers
where customer_id in (
	select o.customer_id
    from order_items oi
    join orders o using (order_id)
    where product_id = 3
);

select * from products;



