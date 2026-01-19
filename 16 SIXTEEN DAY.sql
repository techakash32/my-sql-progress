-- WINDOWS FUNCTION

-- IT IS USED TO PERFORM THE CALCULATION ON SET OF RULE WITH REFERNSE TO CURRENT ROW.
-- it majorly THREE PARTS

-- 1. OVER =TO APPLY THE FUNCTION TO THE WINDOW
-- show output with every row
USE WORLD;

select population,sum(population) from country; -- error

select code,name,continent
population,sum(population) over() from country;

-- 2.PARTITION BY = Same as group which is used to apply the logic into group.

select code,name,continent,
population,sum(population) over(partition by continent) from country;

select code,name,continent,
population,sum(population) over(),sum(population) over(partition by continent) from country;

select code,name,continent,region, sum(population) over(partition by continent),sum(population) over(partition by continent,region) from country;

-- running and cummulative sum
-- USE ORDER BY


-- 3.ORDER BY = Defines the logical sequence of rows within each partition. This is critical for functions like running totals or rankings.
use regex;
select code,name,continent,
population,sum(population) over(order by population) from country;

-- 4.row number=used to 
select * ,row_number() over() from employees;
select * ,row_number() over(partition by department order by hire_date) from employees;

-- 5.RANK() = The RANK() function in SQL is a window function that assigns a unique rank to each row within a result set based on a specific order.
select *,rank() over(order by department) from employees;

-- differnce between rank , dencerank and row_number

-- rank = next value skip if it have same value
-- dence rank=it doesn't skip by

select *,rank() over(partition by department order by salary) from employees;

-- 6.DENSE_RANK()== The DENSE_RANK() function is a SQL window function used to assign a ranking to rows based on a specific order. 
-- Unlike the standard RANK() function, it never skips ranks, ensuring a continuous sequence of integers starting from 1. 

select *,dense_rank() over(partition by department order by salary) from employees;
