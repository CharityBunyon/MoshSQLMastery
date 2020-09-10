SELECT 
	last_name, 
	first_name, 
    points, 
    (points * 10) * 100 AS 'discount factor'
FROM customers;


Select *
from customers;

SELECT distinct state
FROM customers;

select 
name, 
unit_price,
unit_price * 1.1 AS new_price
from products