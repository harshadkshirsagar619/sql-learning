create database New;
use New;
create table student(
	id int primary key,
    name varchar(20) not null,
    marks int,
    email varchar(50) unique
);

create table Employee as select id,name,marks,email from student;

describe Employee;

select * from Employee;

drop table Employee;

delete from Employee;

SET SQL_SAFE_UPDATES = 0;

insert into Employee(id,name,marks,email) values (104,"harshad",45,"harshad@2045"),(102,"Ram",85,"RAm@2704"),(103,"Karan",89,"Karan@2005"),(105,"Sham",67,"Sham@gmail.com");


delete from Employee where id = 102 or name = "Karan";

delete from Employee where id > 104;

rename table Employee to Emp1; 

alter table Emp1 rename to EmpDetails;

select * from EmpDetails;

truncate table EmpDetails;

create table Teacher as select * from EmpDetails;

select * from Teacher;

create table studentDetails as select * from EmpDetails where marks > 50;

select * from studentDetails;

describe studentDetails;
   
   -- alter Operation
   
   alter table studentDetails add phone int primary key auto_increment;
   
   alter table studentDetails add (Eng int,Maths int ,Sci int);
   
    insert into studentDetails (id,Eng,Maths,Sci) values (102,70,88,67),(103,60,89,79);
  
	UPDATE studentDetails SET Eng = 79, Maths = 78, Sci = 60 WHERE id = 103;
    
    -- modify col
    
    alter table studentDetails modify marks varchar(20);
    
    -- drop col
    
    alter table studentDetails drop column Sci;
    
    -- chamge col rename
    
    alter table studentDetails change id rollNo int;
    