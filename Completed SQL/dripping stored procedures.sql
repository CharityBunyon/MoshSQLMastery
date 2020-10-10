-- dropping stored procedures

drop procedure if exists get_clients

delimiter $$
create procedure get_clients()
begin
 select * from clients;
end $$
 
 delimiter ;