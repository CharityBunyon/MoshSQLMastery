-- Benefits of stored procedures
	-- store and organize sql
    -- faster execution
    -- data security
    
    
    -- creating a store procedure
    
    DELIMITER $$
    create procedure get_clients()
    begin
		select * from clients;
	end$$
    
	DELIMITER ;
    
    
    CALL get_clients();
    
    
    -- create a stored procedure called get_invoices_with_balance
    -- to return all the invoices with a balance > 0
    
	DELIMITER $$
    create procedure get_invoices_with_balance()
    begin
		select *
		from invoices_with_balance
		where balance > 0;
	end$$
    DELIMITER ;
    