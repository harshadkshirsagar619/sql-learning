create database abc;

use abc;

create table student(id int,name varchar(50),marks int,city varchar(50));

insert into student(id,name,marks,city) values
	(1,"harsh",90,"karad"),
    	(2,"harshad",null,"satara"),
        	(3,"amit",80,"pune"),
            	(4,"kumar",null,"mumbai");


insert into student(id,name,marks,city) values
	(5,"mayur",60,"karad");
                
select * from student where marks is null;

select * from student where marks is not null;

select * from student where marks is null;

select * from student where marks = 80 and city = "pune";

select * from student where marks is null or city = "pune";
select * from student where marks in (90,80);

select marks ,count(city)
from student
group by marks
order by count(city);


select marks ,count(city)
from student
group by marks
order by count(city) asc;

select * from student order by rand();

select city,count(city) as "Total-Count"
from student 
group by city
having count(city) > 2;