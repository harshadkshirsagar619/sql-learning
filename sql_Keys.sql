create database Demo;

use Demo;

 -- keys - primary key , foreign key , composite key, alternate key,
 
 -- 1] primary key
 
	create table Student(
		id int primary key,
        name varchar(50) not null,
        rollNo int unique
    );
 
	insert into Student(id,name,rollNo) values
    (1,"Harsh",1001),
    (2,"Bob",1002),
    (3,"Alice",1003),
    (4,"Kumar",1004),
    (5,"Bob",1005);
    
 describe student;
 
 select * from Student;
 
-- 2] Foreign Key
    
    create table employee(
		emp_id int primary key,
        emp_name varchar(50) not null,
        std_id int,
        foreign key (std_id) references Student(id)
    );
    
    insert into employee(emp_id,emp_name,std_id) values
		(101,"Ram",1),(102,"Kumar",2),(104,"Mukesh",3),(105,"John",5),(106,"laxman",4);
        
        select * from employee;
        
-- 3] Composite key
 
	create table college(
		std_id int ,
        std_rollNo int,
        std_name varchar(50),
        primary key(std_id,std_rollNo)
	);
    
    insert into college (std_id,std_rollNo,std_name) values
    (1,101,"Harshad"),(2,102,"Ram"),(3,103,"Kumar"),(4,104,"Ravi");
    
-- Foreign key with composite key

	create table result(
		s_id int ,
        s_roll int,
        grade char(1),
        foreign key(s_id,s_roll) references college(std_id,std_rollNo)
    );
    
    
    select * from college;