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


    
-- Q.3]

create table orders(
	order_id int primary key,
    customer_id int,
    total_amount decimal(10,2),
    status varchar(50),
    discount int 
    );
    
    insert into orders(order_id,customer_id,total_amount,status,discount) values
		(101,1,500,"paid",null),
        (102,2,300,"paid",20),
        (103,3,null,"pending",null),
        (104,1,700,"paid",50);
        
/*
	Retrive all records from the order table.
	count total number of order placed.
    calculate the total revenue by summing up the total_amount.
    disply the total_revenue after substracting discount from total_amount, using AS to rename column "Net Revenue".
    Handle Null values in total_amount column when perfroming calulation
*/        
        
	select * from orders;
    select count(*) as Total_Orders from orders;
	select sum(ifnull(total_amount,0)) as total_revenue from orders;
    select order_id,total_amount,discount,(total_amount - discount) as Net_Revenue from orders;
    
     select order_id,total_amount,discount,(ifnull(total_amount,0) - ifnull(discount,0)) as Net_Revenue from orders;
    
-- Q.4]

	create table employees(
	emp_id int primary key,
    name varchar(50) not null,
    department_id int,
    salary int,
    foreign key (department_id) references department(dept_id)
 ) ;
 
 insert into employees(emp_id,name,department_id,salary) values
	(1,"Alice",101,50000),
    (2,"Bob",103,55000),
    (3,"Charlie",102,40000),
    (4,"David",101,45000),
    (5,"Mike",104,40000);

 insert into employees(emp_id,name,department_id,salary) values
	 (6,"John",103,50000),
    (7,"Kumar",101,60000);
 
select * from employees;   
 
create table department(
	dept_id int primary key ,
    dept_name varchar(50)
);

insert into department(dept_id,dept_name) values
    (102,"IT"),
    (103,"Finance"),
    (104,"Marketing");

insert into department(dept_id,dept_name) values
    (106,"IT"),(107,"Admin");  
    
select * from department;  

/*
	Retrive all employe along with depaartment name.
    list all the employee along departmnet name , ensuring that employee without a department are also include
    display all the departments along with employees ,ensuring department without employees are include
    show all the employees and departmenet including thoses without matching records in either tables.
*/

	select employees.name, department.dept_name 
    from department 
    inner join employees 
    on employees.department_id = department.dept_id;
    
    
	select department.dept_name ,count(employees.name) as total_employee
    from department 
    join employees 
    on employees.department_id = department.dept_id
    group by department.dept_name;

	select employees.emp_id,employees.name,employees.salary, department.dept_name
    from employees
    left join department
    on employees.department_id = department.dept_id;
    
    
	select employees.emp_id,employees.name,employees.salary, department.dept_name
    from employees
    right join department
    on employees.department_id = department.dept_id;
    
    
    
	select employees.emp_id,employees.name,employees.salary, department.dept_name
    from employees
    left join department
    on employees.department_id = department.dept_id
    union
    select employees.emp_id,employees.name,employees.salary, department.dept_name
    from employees
    right join department
    on employees.department_id = department.dept_id;




