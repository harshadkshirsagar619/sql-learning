create database Day01;
use Day01;

create table student(id int,name varchar(50),marks int);

insert into student values
	(101,"Harsh",60),
    (102,"Ram",80),
    (103,"Sham",70),
    (104,"Kumar",90);
    
    
insert into student values
	(105,"Harsh",90),
    (106,"Sham",55);
    
    select * from student where marks > 75 order by marks desc  ;
    
    select * from student order by name desc , marks asc ;
    
    select name , Sum(marks) as total_marks from student group by name;
    
    select name, count(id) as total_name from student group by name;
    
    select name , count(id) as total_name , sum(marks) as total_marks 
    from student 
    group by name 
    order by total_marks desc;
    
    select  name , sum(marks) as total_marks 
    from student 
    where marks > 55 
    group by name
    having sum(marks) > 50
    order by total_marks desc;
    
    select  * from student where marks > 50 limit  4 offset 2;