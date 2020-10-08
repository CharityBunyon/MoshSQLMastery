-- formatting dates and times
select date_format(now(), '%M %d %Y') as todays_date; -- can lower case the letters(params) as well

select time_format(now(), '%H:%i %p');

