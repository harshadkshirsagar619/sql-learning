create database foodDelivery;

use foodDelivery;

create table customer(
	customer_id int primary key auto_increment,
    customer_name varchar(100) not null,
    phone varchar(15),
    city varchar(50)
);

select * from customer;

insert into customer(customer_name,phone,city) values 
	("Alice","556677889","Pune"),("Mike","112334455","Mumbai"),("John","56789865","Kolhapur"),("Charlie","5566644312","Pune"),("Bob","6574672678","Nagpur");

create table restaurant(
	restaurant_id int primary key auto_increment,
    restaurant_name varchar(100) not null,
    city varchar(50),
    rating decimal(10,2)
);

insert into restaurant(restaurant_name,city,rating) values
		("Dominos","Pune",4.5),("Subway","Mumbai",4.0),("KFC","Nagpur",4.2),("PizzaHut","Kolhapur",3.9),("Macdi","Pune",3.3),("PizzaBite","Satara",4.2);
        
select * from restaurant;        
        
create table menu_iteam(
	menu_iteam_id int primary key auto_increment,
    restaurant_id int,
    iteam_name varchar(50),
    price decimal(10,2),
    foreign key (restaurant_id) references restaurant(restaurant_id)
);

insert into menu_iteam(restaurant_id,iteam_name,price) values
	(1,"CheezPizza",250),(1,"Coke",40),(3,"KFC Veg",350),(3,"KFC panner",450),(5,"Veg Burger",110),(5,"Panner Burger",190),(2,"Veg Sub",250);

select * from menu_iteam;

create table orders(
	order_id int primary key auto_increment,
    restaurant_id int,
    customer_id int,
    order_date datetime default current_timestamp,
    status varchar(50),
    total_amount decimal(10,2),
    foreign key (restaurant_id) references restaurant(restaurant_id),
    foreign key (customer_id) references customer(customer_id)
);

insert into orders(restaurant_id,customer_id,status,total_amount) values
	(1,2,"Pending",290),(3,3,"Confomed",800),(3,4,"Completed",800),(2,5,"Comfomed",250),(5,1,"completed",300);
    
    select * from orders;

create table order_iteam(
	order_iteam_id int primary key auto_increment,
    order_id int,
    menu_iteam_id int,
    quantity int,
    
    foreign key (order_id) references orders(order_id),
    foreign key (menu_iteam_id) references menu_iteam(menu_iteam_id)
);

insert into order_iteam(order_id,menu_iteam_id,quantity) values
	(2,1,1),(3,2,2),(1,5,1),(1,3,1);

select * from order_iteam;

create table delivery_partner(
	partner_id int primary key auto_increment,
    partner_name varchar(50),
    phone varchar(15)
);

insert into delivery_partner(partner_name,phone) values 
	("Kumar","1122667788"),("Ravi","1136457638"),("Mike","53893353"),("Kartik","5866487246");

create table payment(
	payment_id int primary key auto_increment,
    order_id int,
    payment_method varchar(30),
    payment_status varchar(30),

	foreign key(order_id) references orders(order_id)
);

insert into payment(order_id,payment_method,payment_status) values
	(1,"Credit card","Pending"),(2,"Debit Card","Completed"),(3,"UPI","Canceled"),(4,"Cash","Completed"),(5,"UPI","Completed");
    
    select * from payment;
    
    
 -- Find Total Revenue of Each Restaurant
 
 select restaurant.restaurant_name , orders.total_amount as revenue
 from restaurant 
 join orders 
 on restaurant.restaurant_id = orders.order_id;
 
 
 select restaurant.restaurant_name , sum(orders.total_amount) as revenue
 from restaurant 
 join orders 
 on restaurant.restaurant_id = orders.order_id
 group by restaurant.restaurant_name ;
 
 -- Find Top 5 Customers
 
 select customer.customer_name,
count(orders.order_id) as total_orders
from customer 
join orders 
on customer.customer_id = orders.customer_id
group by customer.customer_name
order by total_orders desc
limit 5;

-- Most Ordered Food Item

select menu_iteam.iteam_name,
sum(order_iteam.quantity) as total_quantity
from menu_iteam 
join order_iteam 
on menu_iteam.item_id = orders.item_id
group by menu_iteam.item_name
order by total_quantity desc;


-- Find Cancelled Orders

select *
from orders
where status = 'Completed';
 