create database learning;

use learning;

create table student(
	id int,
    name varchar(50),
    city varchar(50)
);

create table course(
	id int,
    name varchar(50)
);

	-- Alter operations - alter table statement is used to add, modify, delete, rename columns in existing tables
    
  -- 1] Add column
  
	alter table student add contact varchar(50);
    
 -- 2] Modity Column
 
	alter table student modify contact int;
    
 -- 3] Drop Column
 
	alter table student drop column name;
    
-- 4] Rename Column

	alter table student change id roll_no int;


   -- SELECT Operation on Table 
   -- SELECT - it is used to fetch the data from database table and return result in from of tables
   
   select * from student;
   
   select city from student;
   
   -- select statement is also used with some clauses
   -- Clauses - where, group by, having, order by

	-- select is also used with DISTINCT keyword