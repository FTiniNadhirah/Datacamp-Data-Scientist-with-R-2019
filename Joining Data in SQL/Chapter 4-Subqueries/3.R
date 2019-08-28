# Subquery inside select
# In this exercise, you'll see how some queries can be written using either a join or a subquery.
# 
# You have seen previously how to use GROUP BY with aggregate functions and an inner join to get summarized information from multiple tables.
# 
# The code given in query.sql selects the top nine countries in terms of number of cities appearing in the cities table. Recall that this corresponds to the most populous cities in the world. Your task will be to convert the commented out code to get the same result as the code shown.
# 
# Instructions 2/2
# 50 XP
# 2
# Remove the comments around the second query and comment out the first query instead.
# Convert the GROUP BY code to use a subquery inside of SELECT, i.e. fill in the blanks to get a result that matches the one given using the GROUP BY code in the first query.
# Again, sort the result by cities_num descending and then by country ascending.

SELECT countries.name AS country, COUNT(*) AS cities_num
FROM cities
INNER JOIN countries
ON countries.code = cities.country_code
GROUP BY country
ORDER BY cities_num DESC, country
LIMIT 9;

SELECT countries.name AS country,
(SELECT COUNT(*)
 FROM cities
 WHERE countries.code = cities.country_code) AS cities_num
FROM countries
ORDER BY cities_num DESC, country
LIMIT 9;