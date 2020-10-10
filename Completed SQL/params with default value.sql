-- parameters with default values

drop procedure if exists get_clients_by_state;

 DELIMITER $$
create procedure get_clients_by_state
(
	state char(2) -- TN, represents 2 letters
)
begin
		select * from clients c
		where c.state = ifnull(state, c.state);    
end$$
DELIMITER ;


drop procedure if exists get_payments;
