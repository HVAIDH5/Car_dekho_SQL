create schema cars;
use cars;

-- read data 
select * from car_dekho; 

-- total cars
select count(*) from car_dekho; 

-- cars available in 2023
select count(*) from car_dekho where year=2023;

 --  totals cars available in 2020,2021,2022 
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
 
 -- print total number of cars grouped by year
 select year,count(*) from car_dekho group by year;
 
 -- disel cars in 2020
select count(*) from car_dekho where year=2020 and fuel='Diesel';

 -- petrol cars in 2020
select count(*) from car_dekho where year=2020 and fuel='Petrol';


-- all fuel cars(Petrol,Disel,CNG ) come by all years 
 select year,count(*) from car_dekho where fuel='Petrol' group by year;
  select year,count(*) from car_dekho where fuel='Diesel' group by year;
   select year,count(*) from car_dekho where fuel='CNG' group by year;
   
   -- which year has more than 100 cars
   select year,count(*) from car_dekho group by year having count(*)>100;
   
   
   -- total cars between 2015 and 2023
   select count(*) from car_dekho where year between 2015 and 2023;
   
-- all car details from 2015 and 2023 
    select * from car_dekho where year between 2015 and 2023;  
    
   -- End --
