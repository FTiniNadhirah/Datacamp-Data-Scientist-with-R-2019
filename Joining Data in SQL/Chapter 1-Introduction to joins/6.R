# Exercise
# Exercise
# Self-join
# In this exercise, you'll use the populations table to perform a self-join to calculate the percentage increase in population from 2010 to 2015 for each country code!
# 
# Since you'll be joining the populations table to itself, you can alias populations as p1 and also populations as p2. This is good practice whenever you are aliasing and your tables have the same first letter. Note that you are required to alias the tables with self-joins.
# 
# Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Join populations with itself ON country_code.
# Select the country_code from p1 and the size field from both p1 and p2. SQL won't allow same-named fields, so alias p1.size as size2010 and p2.size as size2015.

-- 4. Select fields with aliases
SELECT p1.country_code,
p1.size AS size2010,
p2.size AS size2015
-- 1. From populations (alias as p1)
FROM populations AS p1
-- 2. Join to itself (alias as p2)
INNER JOIN populations AS p2
-- 3. Match on country code
ON  p1.country_code = p2.country_code;

-- 5. Select fields with aliases
SELECT p1.country_code,
p1.size AS size2010,
p2.size AS size2015
-- 1. From populations (alias as p1)
FROM populations AS p1
-- 2. Join to itself (alias as p2)
INNER JOIN populations AS p2
-- 3. Match on country code
ON p1.country_code = p2.country_code
-- 4. and year (with calculation)
AND p1.year = p2.year - 5;

SELECT p1.country_code, 
p1.size AS size2010,
p2.size AS size2015,
((p2.size - p1.size) / p1.size * 100.0) AS growth_perc
FROM populations AS p1
INNER JOIN populations AS p2
ON  p1.country_code = p2.country_code
AND p1.year = p2.year - 5;
