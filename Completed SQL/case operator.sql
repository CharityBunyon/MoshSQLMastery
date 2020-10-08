-- the case operator


select 
	order_id,
    case
		when year(order_date) = year(now()) then 'Active'
        when year(order_date) = year(now()) - 1 then 'Last Year'
        when year(order_date) < year(now()) then 'Archive'
        else 'Future'
	end as category
from orders;