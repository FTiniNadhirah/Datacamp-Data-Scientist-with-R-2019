# Inner challenge
# The table you created with the added geosize_group field has been loaded for you here with the name countries_plus. Observe the use of (and the placement of) the INTO command to create this countries_plus table:
#   
#   SELECT name, continent, code, surface_area,
# CASE WHEN surface_area > 2000000
# THEN 'large'
# WHEN surface_area > 350000
# THEN 'medium'
# ELSE 'small' END
# AS geosize_group
# INTO countries_plus
# FROM countries;
# You will now explore the relationship between the size of a country in terms of surface area and in terms of population using grouping fields created with CASE.
# 
# By the end of this exercise, you'll be writing two queries back-to-back in a single script. You got this!


SELECT country_code, size,
-- 1. First case
CASE WHEN size > 50000000 THEN 'large'
-- 2. Second case
WHEN size > 1000000 THEN 'medium'
-- 3. Else clause + end
ELSE 'small' END
-- 4. Alias name
AS popsize_group
-- 5. From table
FROM populations
-- 6. Focus on 2015
WHERE year = 2015;


SELECT country_code, size,
CASE WHEN size > 50000000 THEN 'large'
WHEN size > 1000000 THEN 'medium'
ELSE 'small' END
AS popsize_group
-- 1. Into table
INTO pop_plus
FROM populations
WHERE year = 2015;

-- 2. Select all columns of pop_plus
SELECT * FROM pop_plus;


SELECT country_code, size,
CASE WHEN size > 50000000
THEN 'large'
WHEN size > 1000000
THEN 'medium'
ELSE 'small' END
AS popsize_group
INTO pop_plus       
FROM populations
WHERE year = 2015;

-- 5. Select fields
SELECT name, continent, geosize_group, popsize_group
-- 1. From countries_plus (alias as c)
FROM countries_plus AS c
-- 2. Join to pop_plus (alias as p)
INNER JOIN pop_plus AS p
-- 3. Match on country code
ON c.code = p.country_code
-- 4. Order the table    
ORDER BY geosize_group;