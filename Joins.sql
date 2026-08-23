use Day01;

create table customer(
	id int,
    name varchar(50),
    phone varchar(15)
);

create table orders(
	id int,
    iteam_name varchar(26),
    cust_id int
);

-- Customer data
INSERT INTO customer (id, name, phone) VALUES
(101, 'Harsh', '9876543210'),
(102, 'Ram', '9876543211'),
(103, 'Sham', '9876543212'),
(104, 'Kumar', '9876543213'),
(105, 'Amit', '9876543214'),
(106, 'Rahul', '9876543215'),
(107, 'Rohit', '9876543216');


-- Orders data
INSERT INTO orders (id, iteam_name, cust_id) VALUES
(1, 'Laptop', 101),
(2, 'Mobile', 102),
(3, 'Keyboard', 103),
(4, 'Mouse', 101),
(5, 'Monitor', 104),
(6, 'Headphone', 105),
(7, 'Tablet', 102);


INSERT INTO orders (id, iteam_name, cust_id) VALUES
(8, 'Laptop', 117),
(9, 'Electronics', 110);
-- Inner join

select * 
from customer
inner join orders
on customer.id = orders.cust_id; 


select 
	customer.id,
    customer.name,
    orders.iteam_name
from customer
inner join orders
on customer.id = orders.cust_id
where customer.name like '_a%'; 


select 
	customer.id,
    customer.name,
    orders.iteam_name
from customer
inner join orders
on customer.id = orders.cust_id
where customer.id < 105; 

select customer.name,
	orders.iteam_name
    from customer  -- as c
    inner join orders  -- as o
    on customer.id = orders.cust_id
    where iteam_name in('Laptop','Tablet','Mouse');


-- left Join

select * 
from customer 
left join orders 
on customer.id = orders.cust_id;

select 
customer.name,
customer.phone,
orders.iteam_name
from customer
left join orders
on customer.id = orders.cust_id
order by orders.iteam_name asc;


-- right join

select * from customer right join orders on customer.id = orders.cust_id;

-- full Join

select customer.name,
customer.phone,orders.iteam_name
from customer
left join orders
on customer.id = orders.cust_id

union

select customer.name,
customer.phone,orders.iteam_name
from customer
right join orders
on customer.id = orders.cust_id
order by name asc;

-- Advance Joins
-- Left Aniti Joins

select * from customer
left join orders
on customer.id = orders.cust_id
where orders.cust_id is null; 


-- right Aniti Joins

select * from customer
right join orders
on customer.id = orders.cust_id
where customer.id is null; 

-- full anti join

select * from customer
left join orders
on customer.id = orders.cust_id
where orders.cust_id is null
union
select * from customer
right join orders
on customer.id = orders.cust_id
where customer.id is null; 

-- cross join

select * 
from customer
cross join orders;