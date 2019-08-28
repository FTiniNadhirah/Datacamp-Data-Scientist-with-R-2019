# Exercise
# Exercise
# Final challenge (3)
# Welcome to the last challenge problem. By now you're a query warrior! Remember that these challenges are designed to take you to the limit to solidify your SQL knowledge! Take a deep breath and solve this step-by-step.
# 
# You are now tasked with determining the top 10 capital cities in Europe and the Americas in terms of a calculated percentage using city_proper_pop and metroarea_pop in cities.
# 
# Do not use table aliasing in this exercise.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Select the city name, country code, city proper population, and metro area population.
# Calculate the percentage of metro area population composed of city proper population for each city in cities, aliased as city_perc.
# Focus only on capital cities in Europe and the Americas in a subquery.
# Make sure to exclude records with missing data on metro area population.
# Order the result by city_perc descending.
# Then determine the top 10 capital cities in Europe and the Americas in terms of this city_perc percentage.
SELECT name, country_code, city_proper_pop, metroarea_pop,  
city_proper_pop / metroarea_pop * 100 AS city_perc
FROM cities
WHERE name IN
(SELECT capital
  FROM countries
  WHERE (continent = 'Europe'
         OR continent LIKE '%America'))
AND metroarea_pop IS NOT NULL
ORDER BY city_perc DESC
LIMIT 10;
