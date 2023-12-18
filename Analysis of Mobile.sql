CREATE DATABASE anils;
USE anils;
SELECT * FROM mobile;
-- CHECK MOBILE FEATURES AND PRICE LIST--
select phone_name, price from mobile;

-- FIND OUT THE PRICE OF 5 MOST EXPENSIVE PHONES--
select * from mobile
order by price desc
limit 5; 

-- FIND OUT THE PRICE OF 5 MOST CHEAPEST PHONES--
select * from mobile
order by price asc
limit 5; 

-- LIST OF TOP 5 SAMSUNG PHONES WITH PRICE AND ALL FEATURES--
select * from mobile 
where brands = "samsung"
order by price desc 
limit 5;

-- MUST HAVE ANDROID PHONE LIST THEN TOP 5 HIGH PRICE ANDROID PHONES--
select * from mobile
where operating_system_type = "Android"
order by price desc
limit 5; 

-- MUST HAVE ANDROID PHONE LIST THEN TOP 5 LOWER PRICE ANDROID PHONES--
select * from mobile
where operating_system_type = "Android"
order by price asc
limit 5; 

-- MUST HAVE IOS PHONE LIST THEN TOP 5 HIGH PRICE IOS PHONES--
select * from mobile
where operating_system_type = "IOS"
order by price desc
limit 5; 

-- MUST HAVE IOS PHONE LIST THEN TOP 5 LOWER PRICE IOS PHONES--
select * from mobile
where operating_system_type = "IOS"
order by price asc
limit 5; 

-- WRITE A QUERY WHICH PHONE SUPPORT 5G AND ALSO TOP 5 PHONE WITH 5G SUPPORT--
select * from mobile 
where 5g_availability = "Yes"
order by price desc
limit 5;

-- TOTAL PRICE OF ALL MOBILE IS TO BE FOUND WITH BRAND NAME--
select brands, sum(price) from mobile group by brands;
