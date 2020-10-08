-- string functions

select length('sky');

select upper('sky');

select lower('sKy');

select ltrim('   sKy');

select rtrim('sKy   ');

select trim('sKy');

select left('Kindergarten', 4);

select right('Kindergarten', 6);

select substring('Kindergarten', 3, 5); -- 2nd param is the start position, 3rd param is the length

select locate('n', 'Kindergarten' );

select replace('Kindergarten', 'garten', 'garden' );


select concat(first_name, ' ', last_name) as full_name
from customers;