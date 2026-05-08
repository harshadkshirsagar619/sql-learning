create database  operations;

use operations;

create table employee(
	id int,
    name varchar(50),
    department varchar(50),
    salary int
);

-- SQL DML commands (Data Manipulation language) like Insert , Update , Delete

-- 1] insert - it is used insert data in table by specifing cloumn name
 
	insert into employee(id, name, department, salary) values 
		(101,"Sumit","Admin",30000),
        (102,"Amit","HR",35000),
        (103,"Harsh","Developer",28000),
        (104,"Mukesh","Tester",35000),
        (105,"Ram","Admin",40000),
        (106,"Kumar","Tester",30000),
        (107,"Kartik","SeniorDeveloper",45000);
        
 -- 2] Update 
 
	update employee set salary = 50000 where id = 102;
        
	update employee set department = "PythonDeveloper" where name = "Kumar";
    
 -- 3] Delete   
    
    delete from employee where id = 104;
    
    delete from employee;
    
    truncate employee;
    
    select * from employee;

	set sql_safe_updates = 0;
        
 