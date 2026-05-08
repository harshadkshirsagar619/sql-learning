use learning;

create table employee(
	id int,
    name varchar(50),
    salary int,
    address varchar(50)
);


insert into employee(id,name,salary,address) values
	(101,"Harsh",35000,"Pune"),
    	(102,"Kumar",30000,"Mumbai"),
			(103,"Ravi",35000,"Nashik"),
            	(104,"Ram",25000,"Nagpur"),
                	(105,"Amit",40000,"Delhi"),
                    	(106,"Om",20000,"Chennai"),
                        	(107,"Kartik",33000,"Pune");
                            
	select * from employee;
    
    select distinct address from employee;
    
    -- Aggregate Functions - count(), max(), min(), sum(), avg()
    
-- 1] count()
    
    select count(*) from employee;
    
    select count(id) as total_emp from employee;
    
    select count( distinct address) as emp_add from employee;
    
    -- limit 
    
    select * from employee limit 3;
    
    select salary from employee where salary >34000 limit 2 offset 1;
    
-- 2] Sum()

	select sum(salary) as "total_salary" from employee;
    
 -- 3] max()
 
	select max(salary) from employee;
    
 -- 4] min()
 
	select min(salary) from employee;   
    
-- 5] Avg()
 
	select avg(salary) from employee;    
    
-- in    
    
    select * from employee where address in ("pune","mumbai","Delhi","Kolhapur");
    
 
 -- NUll AND NOT NULL
 
 
insert into employee(id,name,salary,address) values
	(108,"Harsh",35000,null),
    	(109,"Kumar",null,"Mumbai");
        
        
	select * from employee where salary is null;
    
    select name from employee where salary is not null;
    
    select id from employee where salary is not null;
    