create database procedureSql;

use procedureSql;

-- creating function and statements..

delimiter $$

create function sums(num1 int,num2 int)
returns int
deterministic

begin


return num1 + num2;

end $$

delimiter ;

select sums(10,30);


-- division 


delimiter $$
create function division(a int,b int)
returns int
deterministic

begin

return a / b;

end $$


delimiter ;

select division(10,20);


-- control statement

-- 1] if then else

	delimiter $$
    
    create function check_if(a int)
    returns varchar(50)
    deterministic
    
    begin 
		declare result varchar(50);
        if a % 2 = 0 then
        set result = "even";
        else 
        set result = "odd";
        end if;
        return result;
    end $$
    delimiter ;
    
    select check_if(4);
    
    select check_if(3);
    
-- 2] if - else-if

delimiter $$
create function check_number(num int)
returns varchar(50)
deterministic

begin 

declare result varchar(50);
if num = 10 then
set result = "Number is 10";
elseif num = 20 then
set result = "Number is 20";
elseif num = 30 then
set result = "Number is 30";
elseif num = 40 then
set result = "Number is 40";
else 
set result = "Wrong number";
end if;
return result;


end $$

delimiter ;

select check_number(10);

select check_number(80);

-- 3] switch case

delimiter $$

create function check_case(num int)
returns varchar(50)
deterministic
begin 

declare result varchar(50);
case num
	when 1000 then
     set result = "low income";
     when 2000 then 
     set result = "Avg income";
     when 3000 then 
     set result = "High income";
     else
     set result = "enetr valid income";
     end case;
     
     return result;
end $$

delimiter ;

select check_case(1000);
        
