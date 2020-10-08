-- calculating dates and times

select date_add(now(), interval 1 day); -- or use sub instead of add

select datediff('2019-01-05', '2019-01-01');

select time_to_sec('09:00') - time_to_sec('09:02');