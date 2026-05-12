create database indexDb;

use indexDb;

-- index is used to retrive the data from database faster
-- Types of index 

-- 1] Primary index

create table student(
	id int primary key,
    name varchar(50),
    age int not null
);

insert into student(id,name,age) values (1,"Alise",23),(2,"John",34),(3,"Mike",24),(4,"Charlie",32);

insert into student(id,name,age) values(5,"Alise",23),(6,"John",34),(7,"Mike",24),(9,"Charlie",32),
                                        (11,"Alise",23),(12,"John",34),(13,"Mike",24),(14,"Charlie",32);
                                        
insert into student(id,name,age) values(10,null,13); 
                                        


-- 2] index
	
    create index nameindex on student(id);
    
    create index nameindex2 on student(id,name);
	
    
 -- 3]   Unique Index
 
		create unique index studentDistinct on student(id);
        
        create unique index studentDistincts on student(id,name);
        
 -- 4]  spatial Index
 
		create table booking(name varchar(50),contact varchar(50),location geometry not null SRID 4326,
        spatial index(location));
        
        desc booking;
         
        insert into booking values ("abc","25442365",ST_GeomFromText('point(1 1)',4326));
        
        insert into booking values ("abc","25442365",ST_GeomFromText('linestring(1 2 ,3 1)',4326));
        
        
        insert into booking values (
			"amc",
            "5442365",
            ST_GeomFromText(
						'POLYGON((1 2,3 1,0 5,7 8,1 2))',
						4326
					)
				);
        
        select * from booking;
        
        
-- 5] FullText

			create table book (title varchar(50),content varchar(50),fulltext(title,content));
            
            INSERT INTO book (title, content) VALUES
			('Java Basics', 'Learn variables and loops'),
			('SQL Guide', 'Understand joins and indexes'),
			('Spring Boot', 'Build REST APIs easily'),
			('Data Structures', 'Stacks queues and trees'),
			('Web Development', 'HTML CSS and JavaScript');
            
            select * from book where match (title,content) against ("java trees");
            
            
        