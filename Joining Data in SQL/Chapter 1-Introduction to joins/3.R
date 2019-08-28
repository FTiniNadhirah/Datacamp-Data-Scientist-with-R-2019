# Inner join (3)
# The ability to combine multiple joins in a single query is a powerful feature of SQL, e.g:
#   
#   SELECT *
#   FROM left_table
# INNER JOIN right_table
# ON left_table.id = right_table.id
# INNER JOIN another_table
# ON left_table.id = another_table.id;
# As you can see here it becomes tedious to continually write long table names in joins. This is when it becomes useful to alias each table using the first letter of its name (e.g. countries AS c)! It is standard practice to alias in this way and, if you choose to alias tables or are asked to specifically for an exercise in this course, you should follow this protocol.
# 
# Now, for each country, you want to get the country name, its region, and the fertility rate and unemployment rate for both 2010 and 2015.
# 
# Note that results should work throughout this course with or without table aliasing unless specified differently.
# 
# Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Inner join countries (left) and populations (right) on the code and country_code fields respectively.
# Alias countries AS c and populations AS p.
# Select code, name, and region from countries and also select year and fertility_rate from populations (5 fields in total).

-- 6. Select fields
SELECT c.code, name, region, e.year, fertility_rate, unemployment_rate
-- 1. From countries (alias as c)
FROM countries AS c
-- 2. Join to populations (as p)
INNER JOIN populations AS p
-- 3. Match on country code
ON c.code = p.country_code
-- 4. Join to economies (as e)
INNER JOIN economies AS e
-- 5. Match on country code and year
ON c.code = e.code AND e.year = p.year;