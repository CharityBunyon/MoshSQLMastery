-- joining mulitple tables

select 
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name, 
    os.name as status
from orders o
	join customers c
		on o.customer_id = c.customer_id
	join order_statuses os
		on o.status = os.order_status_id;
        
select 
	c.name,
    p.date, 
    p.invoice_id, 
    p.amount,
	pm.name
from payments p
	join clients c
		on c.client_id = p.client_id
	join payment_methods pm
		on pm.payment_method_id = p.payment_method;


-- compound join conditions

select *
from order_items oi
join order_items_notes oin
	on oi.order_id = oin.order_id
    and oi.product_id = oin.product_id