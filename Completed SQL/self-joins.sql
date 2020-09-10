-- joining across databases

select *
from order_items oi
join sql_inventory.products p -- prefixing tables of the database you'tr trying to query
	on oi.product_id = p.product_id;
    


-- Self Joins

use sql_hr;

select 
	e.employee_id,
    e.first_name,
    m.first_name as manager
from employees e
join employees m
	on e.reports_to = m.employee_id;