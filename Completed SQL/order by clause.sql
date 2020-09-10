-- order by clause

select *
from customers
order by first_name;


select *
from customers
order by first_name desc;

select *
from customers
order by state desc, first_name;

select first_name , last_name
from customers
order by birth_date;

select first_name , last_name, 10 as points
from customers
order by points, first_name;

select first_name , last_name, 10 as points
from customers
order by 1, 2; -- should avoid this method

select order_id, product_id, quantity * unit_price as total
from order_items
where order_id = 2
order by total desc;

-- or

select *, quantity * unit_price as total_price
from order_items
where order_id = 2
order by total_price desc


