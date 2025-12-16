-- Show all databases and switch to the world database.
SHOW databases;
USE world;
-- Display all tables present in the world database.
SHOW TABLES FROM WORLD;
-- Show all records from the country table.
SELECT * FROM COUNTRY;
-- Display only Name, Continent, and Population from country
SELECT NAME,CONTINENT,POPULATION FROM COUNTRY;
-- Find all countries that belong to the continent Asia.
SELECT NAME ,CONTINENT FROM COUNTRY WHERE CONTINENT ='ASIA';
-- List all unique continents available in the country table.
SELECT distinct(CONTINENT) FROM COUNTRY;
-- Find countries with a population greater than 100 million.
SELECT POPULATION FROM COUNTRY WHERE POPULATION>100000;
-- List countries where LifeExpectancy is NULL.
SELECT NAME, LIFEEXPECTANCY FROM COUNTRY WHERE LIFEEXPECTANCY IS NULL;
-- Show countries whose name starts with "A".
SELECT NAME FROM COUNTRY WHERE NAME LIKE 'A%';
-- Find countries whose name ends with "land".
SELECT NAME FROM COUNTRY WHERE NAME LIKE '%LAND';
-- Display countries with population between 10 million and 50 million.
SELECT NAME ,POPULATION FROM COUNTRY WHERE POPULATION>100000 AND POPULATION<200000;
--  List top 10 most populated countries.
SELECT NAME, POPULATION FROM COUNTRY ORDER BY POPULATION DESC LIMIT 10;
-- Show countries ordered by SurfaceArea (largest first).
SELECT NAME, SURFACEAREA FROM COUNTRY ORDER BY SURFACEAREA ASC;
-- Display 5 least populated countries.
SELECT NAME,POPULATION FROM COUNTRY ORDER BY POPULATION ASC LIMIT 5;
-- Find the total number of countries in the database.
SELECT COUNT(NAME) FROM COUNTRY;
-- Find the average population of all countries.
SELECT AVG(POPULATION) FROM COUNTRY;
-- Show the maximum population in the world.
SELECT MAX(POPULATION) FROM COUNTRY;
-- Find the minimum life expectancy.
SELECT MIN(LIFEEXPECTANCY) FROM COUNTRY;
-- Count how many countries are in Europe.
SELECT COUNT(CONTINENT)FROM COUNTRY WHERE CONTINENT='EUROPE';
-- Count number of countries in each continent.
SELECT CONTINENT,COUNT(*) FROM COUNTRY GROUP BY CONTINENT;
-- Find the total population per continent.
SELECT CONTINENT, SUM(POPULATION) FROM COUNTRY GROUP BY CONTINENT;
-- Show average life expectancy per continent.
SELECT CONTINENT, AVG(LIFEEXPECTANCY) FROM COUNTRY GROUP BY CONTINENT;
-- Show all cities from the city table.
SELECT NAME FROM CITY;
SELECT * FROM CITY;
-- List cities with population more than 5 million.
SELECT NAME, POPULATION FROM CITY WHERE POPULATION >500000;
-- Find the most populated city in the world.
SELECT MAX(POPULATION) FROM CITY;
-- Count how many cities are present in each country code.
SELECT COUNTRYCODE, COUNT(NAME) FROM CITY GROUP BY COUNTRYCODE;
-- Show country name and capital city name.
SELECT NAME,DISTRICT FROM CITY;
