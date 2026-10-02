use New;

CREATE TABLE CarsDetails    
(    
Car_Number VARCHAR (10),    
Car_Brand VARCHAR (50),    
Car_Model VARCHAR (50),    
Car_Price VARCHAR (50) NOT NULL   
) ;  

INSERT INTO CarsDetails (Car_Number, Car_Brand, Car_Model, Car_Price)     
VALUES ('257A', 'Hyundai', 'Creta', '23,700.98 Dollar'),    
('925C', 'Audi', 'Audi A6', '77,895.91 Dollar'),     
('823A', 'Hyundai', 'Venue', '16,599.67 Dollar'),    
('621B', 'Maruti Suzuki', 'Maruti Brezza', '16,599.67 Dollar'),  
('452B', 'Rolls-Royce', 'Phantom', '11,23,615.35 Dollar'),    
('525B', 'Mahindra', 'Thar', '23,700.98 Dollar');

 -- select 
select * from CarsDetails;

-- where and Group by
select count(Car_Model),Car_Brand from CarsDetails group by Car_Brand;

-- Group by with Having
select sum(Car_Price) as Total ,Car_Brand from CarsDetails group by Car_Brand having total > 30;

-- order by : desc & asc
select * from CarsDetails order by Car_Price desc;


select count(Car_Number) as totalCar,Car_Brand from CarsDetails where Car_Price > 10 group by Car_Brand having totalcar > 0 order by totalCar asc;

select distinct Car_Brand from CarsDetails;