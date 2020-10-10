-- parameters

drop procedure if exists get_clients_by_state;

 DELIMITER $$
    create procedure get_clients_by_state
    (
    state char(2) -- TN, represents 2 letters
    )
    begin
		select * from clients c
        where c.state = state;
	end$$

	DELIMITER ;
    
    call get_clients_by_state('CA');
    
    call get_invoices_by_client(1);
    
    
    