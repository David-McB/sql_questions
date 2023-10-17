-- Question 1
use world;

SELECT COUNT(CountryCode) FROM city
WHERE CountryCode = 'USA';

-- Question 2
SELECT Population, LifeExpectancy FROM country
WHERE Name = 'Argentina';

-- Question 3
SELECT Name, LifeExpectancy FROM country
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy DESC
LIMIT 1;

-- Question 4
SELECT city.Name FROM country
JOIN city
ON city.ID = country.Capital
WHERE country.Name = 'Spain';

-- Question 5
SELECT Language from countrylanguage
JOIN country
ON country.Code = countrylanguage.CountryCode
WHERE country.Region = 'Southeast Asia';

-- Question 6
SELECT Name FROM city
WHERE Name LIKE 'F%'
LIMIT 25;

-- Question 7
SELECT COUNT(city.Name) AS chinese_cities FROM city
JOIN country
ON country.Code = city.CountryCode
WHERE country.Name = 'China';

-- Question 8
SELECT Name
FROM country
WHERE Name IS NOT NULL
ORDER BY Population 
LIMIT 1;

-- Question 9
SELECT COUNT(Name) AS numOfCountries
FROM country;

-- Question 10
SELECT Name 
FROM country 
ORDER BY SurfaceArea DESC
LIMIT 10;

-- Question 11
SELECT city.Name from city
INNER JOIN country ON country.Code = city.CountryCode
WHERE country.Name = 'Japan'
ORDER BY city.Population DESC
Limit 5;

-- Question 12
 UPDATE country 
 SET HeadOfState = 'Elizabeth II' 
 WHERE HeadOfState = 'Elisabeth II' AND  code > 'AAA'; 
 SELECT Name, Code
 FROM country WHERE HeadOfState = 'Elizabeth II';
 
 -- Question 13
 SELECT Name from country
 ORDER BY (Population/SurfaceArea) ASC
 LIMIT 10;
 
 -- Quesiton 14
 SELECT DISTINCT Language from countrylanguage;
 
 -- Question 15 
 SELECT Name, GNP from country
 ORDER BY GNP DESC
 LIMIT 10;
