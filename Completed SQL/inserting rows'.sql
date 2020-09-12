-- inserting a row

insert into customers(first_name, last_name, birth_date, address, city, state)
values (
'Charity', 
'Bunyon', 
'1989-11-21', 
'111 Key Street',
'Nashville',
'TN');


-- inserting multiple rows

insert into shippers(name)
values('Shipper1'), ('Shipper2'), ('Shipper3');

select * from shippers;


-- insert 3 rows in the products table
insert into products(name, quantity_in_stock, unit_price)
values('Coke', 13, 1.09);

select * from products
