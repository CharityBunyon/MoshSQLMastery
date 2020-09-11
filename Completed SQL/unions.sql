-- unions

select 
order_id,
order_date,
'Active' as status
from orders
where order_date >= '2019-01-01'
union
select 
order_id,
order_date,
'Archive' as status
from orders
where order_date <= '2019-01-01';


select
name as full_name
from shippers
union
select first_name
from customers;


select
 c.customer_id,
 c.first_name,
 c.points,
 'Bronze' type
from customers c
where points < 2000
union
select
 c.customer_id,
 c.first_name,
 c.points,
 'Silver' type
from customers c
where points between 2000 and 3000
union
select
 c.customer_id,
 c.first_name,
 c.points,
 'Gold' type
from customers c
where points > 3000
order by first_name	

