-- date functions

select now(), curdate(), curtime();

select year(now());

select month(now());

select day(now());

select hour(now());

select minute(now());

select second(now());

select dayname(now());

select monthname(now());

select extract(day from now()); -- unit, from keyword, then a day time value

select *
from orders
where year(order_date) >= year(now())





