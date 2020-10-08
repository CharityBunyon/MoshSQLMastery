-- the if function

-- if(expression, first, second)

select 
	order_id,
    order_date,
    if(year(order_date) = year(now()), 
    'Active', 
    'Archive') as category
from orders;

select 
	product_id,
    name,
    count(*) as orders,
    if(count(*) > 1, 'Many times', 'Once') as frequency
from products
join order_items using(product_id)
group by product_id, name;