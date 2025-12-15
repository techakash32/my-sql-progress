show databases;
use world;
SHOW TABLES;
select * from city;
select * from country;
select name, population from city where population>120000;
select name ,countrycode,population from city where countrycode='AFG' and population>120000;
select name ,countrycode,population ,countrycode as newcode , population as newpop from city where countrycode='AFG' or population>120000;
SELECT * FROM CITY WHERE DISTRICT='Zuid-Holland';
select * from country where continent in('NORTH AMERICA','EUROPE','ASIA');
select * from country where lifeexpectancy between 45 and 90; 
select count(*) from country;
-- funtion (date, string number):
-- agrigate function that are multiline function and used to perform calculation on set of row:
-- count:
select count(indepyear) from country;
select count(*), count(indepyear) from country; -- *gave all value include all coulumn
-- distinct:
select distinct (continent) from country;
select distinct continent, region from country; -- unique pair don't include double value
-- sum,avg,count functions
select count(population),sum(population),avg(population) from country;
select governmentform from country;
-- select count(government), count(distinct governmentform),sum(govermentform)
-- from country where continent='asia';
select count(name) , avg(surfacearea) , sum(population) from country where indepyear>1947 and indepyear<1998;
select count(name) , count(distinct continent), avg(population), sum(capital) from country where name like 'A%' OR name like 'D%';
-- groupby
select continent ,count(*) from country group by continent;
select indepyear,count(*) from country group by indepyear;

select governmentform, count(*) from country group by governmentform;

select continent,count(name),sum(population), avg(population), max(population), min(population), max(indepyear), min(indepyear) from country group by continent;
select * from city;
select countrycode,count(name), count(District),count(distinct district),sum(population) from city group by countrycode;