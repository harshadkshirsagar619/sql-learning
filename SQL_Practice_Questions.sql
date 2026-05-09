create database practice;

use practice;

-- practice Questions For SQL Language

-- Q.1]
 /* 
	*Problem Statement:* You are working on a food delivery analytics system 
    similar to Zomato. The orders table contains order_id, customer_name, 
    restaurant_name, amount, city, and order_date.
    Write SQL queries to retrieve all orders from a specific city using the WHERE clause, 
    fetch orders placed from selected restaurants using the IN operator, 
    sort orders by amount in descending order using ORDER BY, 
    and display only the top 2 highest-value orders using LIMIT. 
    Use OFFSET to skip the first 2 records and display the next set. 
    Also, calculate the total revenue generated using SUM() and count the total number of orders using COUNT().
 
Solution -> 
 */
 
 create table zomato(
	order_id int primary key,
    customer_name varchar(50) not null,
    restaurant_name varchar(50),
    amount decimal(10,2) not null,
    city varchar(50),
    order_date date
);

insert into zomato (order_id,customer_name,restaurant_name,amount,city,order_date) values
	(101,"Harsh","Dominos",1500.00,"Pune",'2026-3-1'),
    (102,"Ravi","Pizza Hut",300.00,"Mumbai",'2026-2-23'),
    (103,"Kumar","KFC",567.98,"Delhi",'2026-2-21'),
    (104,"Laxman","Subway",236.12,"Kolkata",'2026-1-1'),
    (105,"Kartik","Dominos",289.03,"Chennai",'2026-3-19');
    
    select * from zomato;
    select * from zomato where city = "Pune";
    select * from zomato where restaurant_name in("Dominos","KFC","Subway");
    select * from zomato order by amount asc;
    select * from zomato order by amount asc limit 4;
	select * from zomato where restaurant_name in("Dominos","KFC","Subway") order by amount asc limit 2 offset 2;
    select sum(amount) as total_revenue from zomato;
	select count(*) as total_orders from zomato;
    
    
 -- Q.2] 
	/*
		*Problem Statement:* You are analyzing data for an e-commerce platform like Amazon. 
        The products table contains product_id, product_name, category, price, and stock. 
        Write SQL queries to select all products under a specific category using WHERE, 
        fetch products belonging to multiple categories using IN, 
        sort products by price (low to high) using ORDER BY, 
        and display only 3 products after skipping the first 2 using LIMIT and OFFSET. 
        Also, calculate the total stock value using SUM(price * stock) and count how many products are available using COUNT().
   
	Solution-->
   */
	
    create table amazon(
		product_id int primary key auto_increment,
        product_name varchar(100) not null,
        category varchar(50) not null,
        price decimal(10,2) ,
        stock int
    );
    
    insert into amazon(product_name,category,price,stock) values
		("Laptop","Electronics",35000.45,10),
        ("Shoes","Fashion",450.90,20),
        ("Mobile","Electronics",19500.00,30),
        ("T-Shirt","Fashion",200,44),
        ("Maggie","Grocery",30.00,100),
        ("Books","Stationary",300.90,25);
        
        
        select * from amazon;
        select * from amazon where category = "fashion";
        select * from amazon where category in ("fashion","Electronics","Stationary");
        select * from amazon order by price asc;
        select * from amazon order by price asc limit 3 offset 2;
        select sum(stock) as total_stock from amazon;
        select count(*) from amazon;
        
        
-- Q.3]
	/*
		*Problem Statement:* You are working on a ride-booking system like Uber. 
        The rides table includes ride_id, driver_name, city, fare, and ride_status. 
        Write SQL queries to filter rides that are completed using WHERE, 
        fetch rides from multiple cities using IN, 
        sort rides by fare in descending order using ORDER BY, 
        and display the top 5 highest fares using LIMIT. 
        Use OFFSET to paginate results. Additionally, calculate the total earnings using SUM(fare) and count the number of completed rides using COUNT().
	
    Solution-->
    */        
	
    create table uber(
		ride_id int primary key auto_increment,
        driver_name varchar(50) not null,
        city varchar(50) not null,
        fare decimal(10,2),
        ride_status varchar(50) not null
	);
    
    insert into uber(driver_name,city,fare,ride_status) values
		("Amit","Pune",350,"Completed"),
        ("Ravi","Mumbai",400,"Cancelled"),
        ("Harsh","Delhi",250,"OnGoing"),
        ("Kumar","Pune",500.90,"Completed"),
        ("Vignesh","Chennai",450,"OnGoing"),
        ("Kartik","Jaipur",769.98,"Cancelled");
        
        select * from uber;
        select * from uber where ride_status = "Completed";
        select driver_name from uber where city in("Mumbai","Pune","Chennai");
        select * from uber where city in("Mumbai","Pune","Chennai");
        select * from uber order by fare asc;
		select * from uber order by fare desc limit 4;
		select sum(fare) as Total_fare from uber;
        select count(ride_status) as Completed_ride from uber where ride_status = "Completed";
        
        
-- Q.4]
	/*
		*Problem Statement:* You are handling data for a banking system like State Bank of India. 
        The transactions table includes transaction_id, account_number, transaction_type, amount, and date. 
        Write SQL queries to retrieve transactions of a specific type using WHERE, 
        filter transactions of multiple types using IN, 
        sort transactions by amount in descending order, 
        and fetch the latest 5 transactions using LIMIT. 
        Use OFFSET for pagination. Also, calculate the total transaction amount using SUM() and count the total number of transactions using COUNT().
	
    Solution-->
    */
    
    create table transcation(
		transaction_id int primary key auto_increment,
        account_number varchar(50) not null unique,
        transaction_type varchar(50) not null,
        amount decimal(10,2) not null,
        daate date
    )auto_increment = 1000; 
    
    insert into transcation(account_number,transaction_type,amount,daate) values
		("abc1234","Debit",1200.00,'2026-3-23'),
        ("acd4536","Credit",1500.00,'2026-4-2'),
        ("agf6786","Transfer",3900.00,'2026-1-27'),
        ("ght4567","Withdraw",2000.00,'2025-12-24'),
        ("hgf56789","Credit",1000.00,'2026-3-13'),
        ("mnv23523","Transfer","34000.00",'2026-5-5');
        
        select * from transcation;
        select * from transcation where transaction_type in("Debit","Credit","Withdraw");
		select * from transcation order by amount desc;
        select * from transcation order by amount desc limit 4;
        select * from transcation order by amount desc limit 4 offset 2;
        select sum(amount) as total_transaction from transcation;
        select count(*) from transcation;
        