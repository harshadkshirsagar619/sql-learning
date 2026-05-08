
use mydb;

create table teacher(
	id int,
    name varchar(50),
    city varchar(50),
    pincode int
);

-- insert querry

insert into teacher (id,name,city,pincode) values
	(101,"Harsh","pune",123456),
    (102,"Kumar","Mumnai",123987),
    (103,"Ravi","Nagpur",765456),
    (104,"Ram","Delhi",123321),
    (105,"Sam","Chennai",18765);
    
    
insert into teacher (id,name,city,pincode) values
	(106,"Priya","Mumbai",123566),
    (107,"Kumar","Jaipur",678594);
    
    
    -- select 
    
    select * from teacher;
    
    select name from teacher;
    
    select name,city,pincode from teacher;
    
    select distinct city from teacher;
    