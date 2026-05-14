
use procedureSql;

-- procedure in

create table student (
	id int ,
    name varchar(50)
);

delimiter $$
create procedure register_in(in num1 int,in name varchar(50))
begin

insert into student(id ,name) values (num1,name);

end $$

delimiter ;

select * from student;

call register_in(1,"Harshad");



-- procedure in out



delimiter $$
create procedure register_in_out(in num1 int,in name varchar(50),out totalCount int)

begin

insert into student(id ,name) values (num1,name);
select count(*) into totalCount from student;

end $$


delimiter ;

call register_in_out(4,"Alice",@totalCount);

select @totalCount;

select * from student;