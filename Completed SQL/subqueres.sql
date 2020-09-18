-- subqueries
-- Find products that are more expensive than Lettuce (id = 3)

select * 
from products
where unit_price > (
	select unit_price
    from products
    where product_id = 3
);

-- subquery is ran first then the value is passed to our first query

-- in sql_hr database
-- Find employees who earn more than average

select *
from employees
where salary > (
	select avg(salary)
    from employees
);

select avg(salary)
from employees;
