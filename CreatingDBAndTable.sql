
-- creating Database with database name

create database mydb;

-- to perform Operation in database first use Database

use mydb;

-- creating Tables - table is collection of data, Organized in terms of rows and cloumns

create table student(
	id int,
    name varchar(50),
    city varchar(50)
);

create table course(
	id int ,
    name varchar(50)
);

-- table operations - create , drop , delete, truncate

 -- 1] drop table
 
	drop table course;
    
-- 2] delete table

	-- delete from course where -- (condition)
    
-- 3]  truncate table

		truncate table course;
    
    
    
 
	
 