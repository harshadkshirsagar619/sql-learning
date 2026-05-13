create database plsqls;

use plsqls;

delimiter $$

create function mul(num int)
returns int
deterministic

begin 
	return num * num ;
end $$

delimiter ;

select mul(50);


-- check even odd number using if 


delimiter $$
create function even_odd(a int)
returns varchar(50)
deterministic

begin
	declare result varchar(50);
    
    if a%2 = 0 then
		set result = "Even Number";
    else 
		set result = "Odd Number";
	end if;
    
    return result;
    
end $$
delimiter ;

select even_odd(10);
select even_odd(19);


-- else-if eg


delimiter $$
create function check_elseIf(num int)
returns varchar(50)
deterministic

begin
	declare result varchar(50);
    
    if num = 20 then
		set result = "20 number";
    elseif num = 30 then
		set result = "30 number";
     elseif num = 40 then
		set result = "40 number";
      elseif num = 50 then
		set result = "50 number";
      else 
		set result = "wrong number";
      end if;  
      
      return result;
end $$
delimiter ;

select check_elseIf(80);

select check_elseIf(50);


-- switch in Pl sql


delimiter $$
create function check_case(num int)
returns varchar(50)
deterministic

begin
	declare result varchar(50);
    
    case num
		when 10 then
			set result = "number is 10";
		when 20 then
			set result = "number is 20";
		when 30 then
			set result = "number is 30";
		when 40 then
			set result = "number is 40";
         else
			set result = "wrong number";
         end case;
         
         return result;
             
end $$
delimiter ;

select check_case(10);

select check_case(60);


