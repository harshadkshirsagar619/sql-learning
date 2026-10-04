use New;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    age INT,
    salary INT,
    joining_date DATE
);

INSERT INTO customer
(customer_id, name, email, phone, city, age, salary, joining_date)
VALUES
(1, 'Harsh', 'harsh@gmail.com', '9876543210', 'Pune', 22, 45000, '2024-01-15'),

(2, 'Rahul', NULL, '9876501234', 'Mumbai', 24, 52000, '2023-06-20'),

(3, 'Sneha', 'sneha@gmail.com', NULL, 'Delhi', 23, NULL, '2024-03-10'),

(4, 'Amit', NULL, NULL, 'Pune', 25, 60000, NULL),

(5, 'Priya', 'priya@gmail.com', '9988776655', NULL, NULL, 55000, '2022-11-05'),

(6, 'Rohan', 'rohan@gmail.com', NULL, 'Nashik', 26, NULL, '2023-08-18'),

(7, 'Neha', NULL, '9123456789', NULL, 21, 40000, '2025-01-12'),

(8, 'Karan', 'karan@gmail.com', '9012345678', 'Pune', NULL, 65000, NULL),

(9, 'Pooja', NULL, NULL, 'Mumbai', 27, NULL, '2021-09-25'),

(10, 'Vikas', 'vikas@gmail.com', '9090909090', NULL, 24, 48000, '2024-07-30');

select * from customer;

-- ifNull
select ifnull(email,"N/A") as email from customer; 

-- nullid

select nullif(city,"pune") as city 
from customer;

-- coalesce 

select name,coalesce(phone,email,city) as contact from customer;  

-- Is null

select isnull(email) from customer; 


