
use procedureSql;

-- loops and leaves

delimiter $$
create function check_loop2()
returns int
deterministic

begin

declare result int;
declare i int;

set result = 0;
set i = 1;

loop2:loop
	set result = result + i;
    set i = i + 1;
    if i <= 10 then
    iterate loop2;
    end if;
    leave loop2;
    end loop loop2;
    
    return result;

end $$

delimiter ;

select check_loop2();


-- while


delimiter $$

create function check_while()
returns int 
deterministic

begin
	declare result int;
    declare i int;
    
    set result = 0;
    set i = 1;
    
    while1:while i <= 10 do
    set result = result + i;
    set i = i+ 1;
    end while while1;
    return result;
end $$

delimiter ;

select check_while();