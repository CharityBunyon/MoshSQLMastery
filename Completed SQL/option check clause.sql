-- the with option check clause


update invoices_with_balance
set payment_total = invoice_total
where invoice_id = 3;


create or replace view invoices_with_balance as
select 
	invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total as balance,
    invoice_date,
    due_date,
    payment_date
from invoices
where (invoice_total - payment_total) > 0
with check option; -- this view will prevent update or delete statements from excluding rows from the view