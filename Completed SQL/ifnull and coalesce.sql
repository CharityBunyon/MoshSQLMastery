-- the ifnull and coalesce functions


select 
	order_id,
    ifnull(shipper_id, 'Not assigned') as shipper -- we can substitute the null value with something else
from orders;

select 
	order_id,
    coalesce(shipper_id, comments, 'Not assigned') as shipper -- can supply it with a list of values and it will supply you with the first non null in the list
from orders;


select 
concat(first_name, ' ', last_name) as customer,
ifnull(phone, 'Unknown') as phone
from customers;
