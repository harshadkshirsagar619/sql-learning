 -- Advance Joins
 
 -- 1} Left Anti joins
 
 CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Customers (customer_id, customer_name, city)
VALUES
(1, 'Harsh', 'Pune'),
(2, 'Rahul', 'Mumbai'),
(3, 'Karan', 'Nashik'),
(4, 'Sneha', 'Pune'),
(5, 'Priya', 'Delhi'),
(6, 'Amit', 'Nagpur'),
(7, 'Rohan', 'Pune'),
(8, 'Neha', 'Mumbai');

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    price INT
);

INSERT INTO Orders (order_id, customer_id, product, price)
VALUES
(101, 1, 'Laptop', 55000),
(102, 2, 'Mouse', 1200),
(103, 3, 'Keyboard', 2500),
(104, 4, 'Monitor', 15000),
(105, 5, 'Headphone', 3000),
(106, 7, 'Mobile', 25000),
(107, 9, 'Tablet', 18000),
(108, 10, 'Printer', 12000),
(109, 2, 'Webcam', 4000);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(30),
    payment_status VARCHAR(20),
    payment_amount INT
);

INSERT INTO Payments
(payment_id, order_id, payment_method, payment_status, payment_amount)
VALUES
(501, 101, 'UPI', 'Success', 55000),
(502, 102, 'Card', 'Success', 1200),
(503, 103, 'Cash', 'Success', 2500),
(504, 104, 'UPI', 'Pending', 15000),
(505, 105, 'Card', 'Success', 3000),
(506, 106, 'UPI', 'Success', 25000),
(507, 109, 'Card', 'Failed', 4000),
(508, 110, 'UPI', 'Success', 12000),
(509, 111, 'Cash', 'Success', 8000);

-- 1} Left Anti joins
 
 
 select * from Customers as c
 left join Orders as o
 on c.customer_id = o.customer_id;
 
 
 select * from Customers as c
 left join Orders as o
 on c.customer_id = o.customer_id
 where o.customer_id is null ;
 
 -- right Anti join
 
 select * from Customers as c
 right join Orders as o
 on c.customer_id = o.customer_id
 where c.customer_id is null;
 
 
 select * from Orders as o
 left join Customers as c
 on c.customer_id = o.customer_id
 where c.customer_id is null;
 
 -- Full Anti Join 
 
 select * from Customers as c
 left join Orders as o
 on c.customer_id = o.customer_id
 where o.customer_id is null 
 union
 select * from Customers as c
 right join Orders as o
 on c.customer_id = o.customer_id
 where c.customer_id is null;
 
 
 -- Cross Join 
 
 select * from Customers as c
 cross join Orders as o;
 
 
 -- multiple joins
 
 select * from Customers as c
 inner join Orders as o
 on c.customer_id = o.customer_id
 inner join payments as p
 on o.order_id = p.order_id;
 
 select c.customer_name, o.product,o.price,p.payment_method,p.payment_status 
 from Customers as c
 left join Orders o
 on c.customer_id = o.customer_id
 left join Payments as p
 on o.order_id = p.order_id
 where p.payment_status = "Success";
 
 select c.customer_name , p.payment_status,o.product
 from Customers as c
 left join Orders o
 on c.customer_id = o.customer_id
 left join Payments as p
 on o.order_id = p.order_id
 where p.payment_status in ("Pending","Failed");
 