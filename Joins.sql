use New;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT
);

INSERT INTO Students (student_id, student_name, course_id)
VALUES
(1, 'Harsh', 101),
(2, 'Ram', 102),
(3, 'Karan', 103),
(4, 'Amit', 104),
(5, 'Vignesh', NULL);

INSERT INTO Students (student_id, student_name, course_id)
VALUES
(6, 'Rahul', 106),
(7, 'Sneha', 107),
(8, 'Priya', NULL),
(9, 'Rohan', 109),
(10, 'Neha', 110);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO Courses (course_id, course_name)
VALUES
(106, 'JavaScript'),
(107, 'Java'),
(108, 'Angular'),
(109, 'SQL'),
(111, 'AWS');

INSERT INTO Courses (course_id, course_name)
VALUES
(101, 'Java'),
(102, 'Python'),
(103, 'SQL'),
(105, 'Spring Boot');


-- Inner Join

select * from Students as s
inner join Courses as c
on s.course_id = c.course_id;

select student_name, course_name from Students as s
inner join Courses as c
on s.course_id = c.course_id;

select student_id,student_name,course_name from Students as s
inner join Courses as c
on s.course_id = c.course_id
where c.course_name = 'SQL';


select student_id,student_name,course_name from Students as s
inner join Courses as c
on s.course_id = c.course_id
where s.student_id > 5;

-- Left Join

select * from Students as s 
left join Courses as c
on s.course_id = c.course_id ;

select student_name,course_name from Students as s
left join Courses as c
on s.course_id = c.course_id
where c.course_name != 'SQL';

-- right Join


select count(s.student_name) as totalStudent , c.course_name from Students as s 
right join Courses as c
on s.course_id = c.course_id
group by c.course_name
having totalStudent > 0;


-- full join 

select s.student_name,c.course_name from Students as s
left join Courses as c
on s.course_id = c.course_id
union

select s.student_name,c.course_name  from Students as s
right join Courses as c
on s.course_id = c.course_id;
