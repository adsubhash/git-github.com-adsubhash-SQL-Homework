-- 1. Select all cities in the BGR country code and not in the District of England.
 select * from city where CountryCode like 'BGR';
-- 2. SELECT DISTINCT 'BGR' FROM city where CountryCode not like 'England';
--select * from city where'BGR' where CountryCode not like 'England';
 -- select * from city where CountryCode not like 'BGR' and CountryCode not like 'England';

-- 3. Select all cities with districts that start with 'al-'.
--SELECT city, District FROM country WHERE District LIKE 'al%';
  --SELECT Name FROM country WHERE Name LIKE 'al%';

-- 4. Select all cities with Populations between 1 and 2 million.
--SELECT Name, Population FROM city WHERE Population BETWEEN 1000000 AND 2000000;

-- 5. Select all cities with Populations between 1 and 2 million that are in the EGY country code.
    -- SELECT * from city where Population <> 1000000 - 2000000 and countrycode like 'EGY';
	
-- 6. Get the total population of the EGY cities.
   -- select countrycode, sum(population) from city where countrycode = 'EGY' group by countrycode;

-- 7. Get the average population of the PHL and HKG cities.
   --select countrycode, avg(population) from city where countrycode = 'PHL' or countrycode = 'HCG' group by countrycode;

-- 8. Get list of all cities sorted first by the country code in alphabetical order and then by the population from greatest to least.
--SELECT city from countrycode ORDER BY population DESC;
-- SELECT * FROM city ORDER BY countrycode ASC, population desc;
--select * from city order by countrycode, population desc;

-- 9. Get a list of the Minimum, Maximum and Average population of each country code ordered by country code.  Rename the columns to something sensible.
  -- select code, min(population) as min, max(population) as max, avg(population) as avg from country group by code;

-- 10. Get list of all country names that end in  'an' ordered by country code.
--select * from country where Name like 'an%' group by countrycode;

-- 11. Get list of all countries ordered by continent and sorted by surface area.
-- select * from country order by continent, surfacearea;

-- 12. Get list of countries with life expectancy > 60 and GNP > 100
select * from country where LifeExpectancy > 60 and GNP >100;

-- 13. Get an alphabetical list of countries where the GNP is not the same as the GNPOld

-- 14. Get alphabetical list of country names and  3 letter capitol code.
  -- SELECT name, code from country;
  -- SELECT capital code FROM country WHERE name LIKE capital;


-- 15. Get list of all government forms in the country language table listed in alphabetical order; determine the total land area of each.
-- requires equal join
-- join country language.code to country.code
--(select teble1.column, table2.column 
--from table1
--join table2 on table2.column = table1.column;)
-- select GovernmentForm, sum(surfaceArea) from country join countrylanguage on country.code = countrylanguage.countrycode group by governmentform;



-- 16. Get list of all un-official languages in each country code ordered by it's percentage of usage.
--select * from countrylanguage where IsOfficial not like 'T' order by countrycode;
--select * from countrylanguage where IsOfficial like 'F' order by region;

-- 17. Get list of languages that are not officially in the EU; join this table to the country table by country code and then add the population and GNP.
--select * from Countrylanguage where IsOfficial = 'F' order by countrycode, percentage;

-- 18. Get list of countries ordered by independance year; rename column to Independance.

--select * from country order by IndepYear ALTER TABLE IndepYear into Independance;


-- 19. Get a list of countries who's name is not the same as it's local name; order table by population.
--select * from country where name not like LocalName order by population desc;


-- 20. Find list of continents that have Republic governments; order them by continent.
-- select * from country where continent like 'Republic Governments' order by Continent; 

-- 21. Find all heads of state that have characters outisde of [A-Z] and [a-z].
-- select * from country where headOfState not like 'a';
-- select HeadOfState from country where HeadOfState not in ('A-Z' , 'a-z') order by HeadOfState;
--select HeadOfState from country where headofstate like '%[^a-Z0-9 \.]%';
--select HeadOfState from country where headofstate like [-z]%

-- 22. Find the sum of all contenent surface area grouped by continent and ordered from greatest to least.
--select Continent, sum(surfaceArea) as 'Surface Area Sum' from country group by Continent order by 'Surface Area Sum' desc;

-- 23. Get a list of each form of government that does not have an Independance day; make sure there are no repeated forms of government; get a count of countries that have each form.
-- select governmentForm, count(*) from country where code in (select code from country where IndepYear is null) group by governmentForm;
