-->Aggregated Functions Practice

select 
'First half of 2019' as date_range,
SUM(invoice_total) as total_sales,
SUM(payment_total) as total_payments,
SUM(invoice_total - payment_total) as what_we_expect
from invoices
where invoice_date between '2019-01-01' and '2019-06-30'
union
select 
'second half of 2019' as date_range,
sum(invoice_total) as total_sales,
sum(payment_total) as total_payments,
sum(invoice_total - payment_total) as what_we_expect
from invoices
where invoice_date between	'2019-07-01' and '2019-12-31'


--> total sales per client, filter on invoice date

select 
client_id,
sum(invoice_total) as total_sales
from invoices
where invoice_date >= '2019-07-01'
group by client_id --> group by clause has to be before the order by
order by total_sales desc

--> group by multiple colums

select 
c.state,
c.city,
sum(invoice_total) as total_sales
from invoices i
join clients c on c.client_id = i.client_id
--where invoice_date >= '2019-07-01'
group by c.state, c.city --> group by clause has to be before the order by
--order by total_sales desc

select * from clients
select * from invoices
select * from payments
select * from payment_methods


select
p.date, 
pm.name as payment_method,
sum(p.amount) as total_payments
from payments p
join invoices i on i.invoice_id = p.invoice_id
join payment_methods pm on pm.payment_method_id = p.payment_method
group by p.date, pm.name


---> Having Clause - want to include clients whos sales are > 500, can't use where clause

select
client_id,
sum(invoice_total) as total_sales,
count(*) as number_of_invoices
from invoices
group by client_id
having sum(invoice_total) > 500 and count(*) > 5


-->using sql store database
select * from customers
select * from orders
select * from order_items

--> Finding customers, who live in Va with total sales > 
select 
c.customer_id,
c.first_name, 
c.last_name,
sum(oi.quantity * oi.unit_price) as total_sales
from customers c
join orders o on o.customer_id = c.customer_id
join order_items oi on oi.order_id = o.order_id
where c.state = 'VA'
group by c.customer_id, c.first_name, c.last_name
having sum(oi.quantity * oi.unit_price) > 20




c.[name],
c.[state],
sum(i.invoice_total) as total_sales
from clients c
join invoices i on i.client_id = c.client_id
group by c.name, c.state
having sum(i.invoice_total) > $100 and c.state = 'VA'



---> RollUp Operator... get summary of data
select
c.state,
c.city,
sum(i.invoice_total) as total_sales
from invoices i
join clients c on c.client_id = i.client_id
group by state, city with rollup
