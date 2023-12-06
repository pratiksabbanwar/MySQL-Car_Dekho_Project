SELECT * FROM cars.car_dekho;
use cars;
-- READ DATA --
select*from car_dekho;

-- Total cars: To get a count of total records--
select count(*) from car_dekho;

-- The Manger asked the employee how many cars will be available in 2023? --
select Count(*) from car_dekho where year = 2023;

-- The Manger asked the employee how many cars will be available in 2020,2021,2022? --
select Count(*) from car_dekho where year = 2020; #74
select Count(*) from car_dekho where year = 2021; #07
select Count(*) from car_dekho where year = 2022; #07
-- Group BY--
select Count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- Clint asked me to print th total of all cars by year. i don't see all the details.--
select year, count(*) from car_dekho group by year;

-- Clint asked to car dealer agent how many diesel cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";

-- clint requested a car dealer agent how many petrol cars will there be in 2020?--
 select count(*) from car_dekho where year = 2020 and fuel = "Petrol"; #51

  -- The manager told the employee to give a print All the Fuel Cars (Petrol , diesel, and CNG) come by all year.--
select year, count(*) from car_dekho where fuel="Petrol" group by year;
select year, count(*) from car_dekho where fuel="diesel" group by year;
select year, count(*) from car_dekho where fuel="CNG" group by year;

-- The manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
select year, count(*) from car_dekho group by year having count(*)>100;

-- The manager said to the employee All cars count Details between 2015 and 2023; we need a complete list.--
select count(*) from car_dekho where year between 2015 and 2023;

-- The manager said to the employee All cars Details between 2015 and 2023; we need a complete list.--
select* from car_dekho where year between 2015 and 2023;


-- END --