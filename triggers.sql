create database triggers;

use triggers;

create table employee(
	id int,
    name varchar(50),
    salary int,
    msg varchar(100)
);

insert into employee(id,name,salary) values (101,"Alice",50000),(102,"John",40000);

create table bank(amount int);

delimiter $$

create trigger salary after insert on bank 
for each row
begin 

	update employee set msg = "salary creadited";

end $$
delimiter ;

insert into bank values(150000);

set sql_safe_updates = 0;

select * from bank;

select * from employee;

alter table bank 
add column emp_id int;


select * from bank;

insert into bank(emp_id) values (101),(102);

-- updating salary in employee table and in bank




