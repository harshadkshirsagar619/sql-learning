create database employ;

use employ;

create table student(
	id int,
    name varchar(50),
    city varchar(50)
);

insert into student(id,name,city) values 
	(1,"Harsh","Pune"),
    (2,"Sumit","Mumbai"),
    (3,"Raj","Delhi"),
    (4,"Ram","pune"),
    (5,"Kumar","Chennai");

create table course(
	id int,
    course_name varchar(50)
);

insert into course(id,course_name) values
	(4,"Java"),
    (5,"DSA"),
    (6,"Python"),
    (7,"Det"),
    (7,"CPP");

update course set id = 8 where id = 7 and course_name = "CPP";

create table employee(
	emp_id int,
    emp_name varchar(50),
    salary int
);

insert into employee (emp_id,emp_name,salary) values 
	(1,"Vignesh",45000),(4,"Kartik",35000),(5,"Rohan",30000),(7,"Harshad",55000),(9,"Laxman",25000);


select * from student;

select * from course;

-- Joins means to combine two or more table
-- types of Joins - inner , right , left , full , cross join

-- 1] Join

	select * 
    from student 
    join course 
    on student.id = course.id;
	
    -- Join ing three tables Student, employee, course
    
    select * from student join course on student.id = course.id join employee on course.id = employee.emp_id;
	
    select student.name , course.course_name , employee.salary 
    from student
    join course
    on student.id = course.id
    join employee
    on course.id = employee.emp_id;


-- 2] left join

	select * from course left join employee on course.id = employee.emp_id;

	select student.id,course.course_name,employee.salary 
    from student
    left join course
    on student.id = course.id
    left join employee
    on course.id = employee.emp_id;


-- 3] right join

	select * from student right join course on student.id = course.id;

	select student.id,course.course_name,employee.salary 
    from student
    right join course
    on student.id = course.id
    right join employee
    on course.id = employee.emp_id;

-- 4] full join

	select * from student left join employee on student.id = employee.emp_id
	union
    select * from student right join employee on student.id = employee.emp_id;
    
    
    select student.name,course.course_name,employee.salary
    from student
    left join course
    on student.id = course.id
    left join employee
    on course.id = employee.emp_id
    union
	select student.name,course.course_name,employee.salary
    from student
    right join course
    on student.id = course.id
    right join employee
    on course.id = employee.emp_id;
    
    
  -- 5] cross join

	select * from student cross join course;



set sql_safe_updates = 0;