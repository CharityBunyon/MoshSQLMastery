-- practicing in operator

select *
from customers
where state in ('va', 'fl', 'ga');

select *
from customers
where state not in ('va', 'fl', 'ga');

select * 
from products
where quantity_in_stock in (49, 38, 72);

-- practicing between operator

select *
from customers
where points between 1000 and  3000;

-- return customers born between 1/1/1990 and 1/1/2000

select *
from customers
where birth_date between '1990-01-01' and  '2000-01-01';


-- practing like operator

select *
from customers
where last_name like 'b%'; -- % sign represents any number of characters

select *
from customers
where last_name like 'brush%'; -- last name starts with brush

select *
from customers
where last_name like '%b%'; -- any person that has a b in their last name

select *
from customers
where last_name like '%y'; -- any person that last name ends in y

select *
from customers
where last_name like 'b____y'; -- any person that last name starts with 'b' has 4 characters in beween and ends in 'y'

-- get customers whose
--   addresses contain TRAIL or AVENUE
--   phone numbers end with 9

select *
from customers
where address like '%trail%' or 
address like'%avenue%';

select *
from customers
where phone like '%9';