create database plsql;
drop database normal;

use plsql;

delimiter $$

create function square(num int)
returns int
deterministic

begin
	return num * num;
end $$

delimiter ;

select square(5);
select square(10);


-- Adddition Logic

delimiter $$

create function addition(a int,b int)
returns int
deterministic

begin 
	return a + b;
end $$

delimiter ;   


select addition(10,100);
 
    
delimiter $$

create function addition1(a int,b int)
returns int
deterministic

begin 

	declare result int;
    set result = a + b ;
	return result;
end $$

delimiter ;   

select addition1(2,3);


delimiter $$

create function addition2(a int,b int,c int)
returns int
deterministic

begin 

	declare result int;
    set result = a + b + c;
	return result;
end $$

delimiter ;   

select addition2(2,3,5);

    
    

