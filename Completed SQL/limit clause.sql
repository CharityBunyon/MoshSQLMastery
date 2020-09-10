-- limit clause

select *
from customers
limit 3; -- kind of like top in sql server

select *
from customers
limit 6, 3; -- offset, skip 6 records and then telll me the next 3
-- page 2: 1-3
-- page 2: 4-6
-- page 3: 7-9


-- get the top three loyal customers
select *
from customers
order by points desc
limit 3 -- limit clause should always come at the end