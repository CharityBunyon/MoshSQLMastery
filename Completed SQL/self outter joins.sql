-- outer join between multiple tables

-- get all customers whether they have an order or not/ and if they have an order it'll tell me if they have a shipper or not
select 
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name as shipper
from customers c
left join orders o
	on c.customer_id = o.customer_id
left join shippers sh
	on o.shipper_id = sh.shipper_id
order by c.customer_id;

select 
	o.order_date,
    o.order_id,
    c.first_name,
    s.name,
    os.name as status
from orders o
join customers c
	on c.customer_id = o.customer_id
join order_statuses os
	on o.status = os.order_status_id
left join shippers s
	on s.shipper_id	= o.shipper_id
order by o.order_id;


-- self outer joins

-- want to get every employee whether they have a manager or not

select 
	e.employee_id,
    e.first_name,
    m.first_name as manager
from employees e
left join employees m
	on e.reports_to = m.employee_id;



	