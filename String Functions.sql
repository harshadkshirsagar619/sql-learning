use New;

-- Functions and there type 

CREATE TABLE std (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50),
    age INT
);

INSERT INTO std (id, name, country, age)
VALUES
(1, 'Harsh', 'India', 22),
(2, 'Rahul', 'India', 21),
(3, 'John', 'USA', 23),
(4, 'David', 'UK', 24),
(5, 'Akira', 'Japan', 22),
(6, 'Maria', 'Spain', 25),
(7, 'Ali', 'UAE', 21),
(8, 'Emma', 'Canada', 23);
select * from std;
alter table std add column surname varchar(20);

UPDATE std
SET surname = 'Karana'
WHERE id = 1;

UPDATE std
SET surname = 'Sharma'
WHERE id = 2;

UPDATE std
SET surname = 'Smith'
WHERE id = 3;

UPDATE std
SET surname = 'Brown'
WHERE id = 4;

UPDATE std
SET surname = 'Tanaka'
WHERE id = 5;

UPDATE std
SET surname = 'Garcia'
WHERE id = 6;

UPDATE std
SET surname = 'Khan'
WHERE id = 7;

UPDATE std
SET surname = 'Wilson'
WHERE id = 8;

-- String Functions 

select name,country from std;

select name ,country ,concat(name,' ',country) as Name_country
from std;

select concat(name,' ',surname) as Full_Name , country from std;

-- Upper()

select  upper(concat(name,' ',surname)) as Full_name, country 
from std;

-- lower();

select lower(name) from std;

-- trim()

-- replace()

select name, replace(name,'a','h') as replaced
from std;

-- len()

select name,length(name) as total_length  from std;

-- String Extraction : 

select left(name,2),right(surname,2) from std;

-- substring

select name, substring(name,2,length(name)) from std;
