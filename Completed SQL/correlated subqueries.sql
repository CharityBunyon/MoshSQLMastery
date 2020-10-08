-- correlated subqueries

-- select employees whose salary is above the average in their office

-- calculate the avg salary for employee.office
-- return the employee if salary > avg


select *
from employees e
where salary > (
	select 
    avg(salary)
    from employees
    where office_id = e.office_id
);



-- get inovices that are larger than the clients average invoice amount

-- first need to find the average inovice amount for each client, but they have multiple invoices... distinct keyword
-- next need to return invoices that have a larer total amount


select *
from invoices i
where invoice_total > (
	select avg(invoice_total)
	from invoices
    where client_id = i.client_id
);




