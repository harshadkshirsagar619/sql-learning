create database curd;

use curd;

-- Q.1]

create table student(
	student_id int primary key,
    name varchar(50),
    age int not null,
    grade char(1) not null,
    email varchar(50) not null unique
);

insert into student (student_id,name,age,grade,email) values
	(101,"Alice",20,'A',"alice@gmail.com"),
    (102,"Bob",22,'B',"bob@gmail.com"),
    (103,"Charlie",21,'A',"charlie@gmail.com");
    

-- Performing Curd Operations     
/*
	add a new student record to the student table.
    Retrive all student records from the table,
    Modify Bob's grade from 'B' to 'A'.
    Remove the student record for Charlie from the table.
*/

insert into student (student_id,name,age,grade,email) values
	(104,"John",22,'C',"john@gmail.com"),(105,"Mike",20,'B',"mike@gmail.com");
    
    select * from student;
    
    update student set grade = 'A' where student_id = 102;
    
    delete from student where name = "Charlie";
    
 
 -- Q.2]
 
 create table employee(
	emp_id int primary key auto_increment,
    name varchar(50) not null,
    age int not null,
    department varchar(50) not null,
    salary int
 ) auto_increment = 1000;
 
 insert into employee(name,age,department,salary) values
	("Alice",24,"HR",50000),
    ("Bob",25,"IT",55000),
    ("Charlie",22,"IT",40000),
    ("David",24,"HR",45000),
    ("Mike",25,"Finance",40000);
    
/*
	Retrieve details of employee from IT Department.
    Find the employee salary more than 45000.
    Disply all employees sorted by age in descending order.
    Retrive all employee ordered by department(asc) and salaray(desc)
*/    

	select * from employee where department = "IT";
    
    select * from employee where salary > 45000;
    
    select * from employee order by age desc;
    
    select * from employee order by department asc , salary desc;



