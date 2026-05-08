create database clausess;

use clausess;

create table customer(
	id int,
    name varchar(50),
    city varchar(50)
);

insert into customer(id,name,city) values 
	(1,"Ramesh","Pune"),
    (2,"Kumar","Mumbai"),
    (3,"Atul","Delhi"),
    (4,"Harsh","Chennai"),
    (5,"Vignesh","Kolkata"),
    (6,"Amit","Mumbai");
    
-- Clauses - Where , And , Or , Order By ,Group By, Having 

-- 1] Where - it is used to fetch data based on Conditions

	select * from customer where city = "Mumbai";
    
    select name from customer where city = "Delhi";
    
-- 2] And = it is used to met two or more conditions

	select * from customer where city = "mumbai" and name = "kumar";
    
    select * from customer where name = "atul" and id = 3;
    
-- 3] Or - it is used to combine multiple conditions

	select * from customer where city = "mumbai" or name = "atul";
    
    select * from customer where id = 2 or id = 4;
    
-- 4] order by clauses
	-- this clauses is used for sorting data in asce and desc order on one or more columns
    
    select * from customer order by city asc;
    
    select * from customer order by city desc;
    
	
    select name,id from customer order by city asc;
    
    select * from customer order by rand(city) limit 4;
    
-- 5] group by clauses
		-- it make the groups
        
        select city , count(*)
        from customer
        group by city;
        
        
        select city , count(*)
        from customer
        where city in("mumbai" ,"pune","delhi")
        group by city;
    
-- 6] Having claues
		-- it is same as where but condition is apply on groups
        
        select city , count(*)
        from customer
        where city in("mumbai" ,"pune","delhi")
        group by city
        having count(*) > 1;
    
		