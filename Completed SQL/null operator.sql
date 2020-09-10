-- null operator

select *
from customers
where phone is null; -- customers who do not have a phone number

select *
from customers
where phone is not null;-- customers who do have a phone number;

-- Get the orders that are not shipped

select *
from orders
where shipped_date is null;