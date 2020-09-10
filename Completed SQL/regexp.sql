-- regexp operator

select *
from customers
-- where last_name like '%field%'
where last_name regexp 'field';

select *
from customers
where last_name regexp '^field'; -- last name must start with field

select *
from customers
where last_name regexp 'field$'; -- last name must end with field

select *
from customers
where last_name regexp 'field|mac'; -- last name has field or mac in it

select *
from customers
where last_name regexp 'field|mac|rose'; -- last name has field or mac in it (pipe)

select *
from customers
where last_name regexp '^field|mac|rose'; -- last name has field or mac in it (pipe)

select *
from customers
where last_name regexp '[gim]e'; -- last name that has ge, ie, or me

select *
from customers
where last_name regexp '[a-h]e'; 

-- ^ beginning
-- $ end
-- | logical or
-- [abcd]
-- [a-f] range

-- get the customers whose
-- 	first names are elka or ambur

select *
from customers
where first_name regexp 'elka|ambur';

-- get the customers whose
-- 	last names end with ey or on
select *
from customers
where last_name regexp 'ey$|on$';

-- get the customers whose
-- 	last names end with ey or on
select *
from customers
where last_name regexp '^my|se';


-- get the customers whose
-- 	last names contain b followed by r or u
select *
from customers
where last_name regexp 'b[ru]'; -- or 'br|bu'

