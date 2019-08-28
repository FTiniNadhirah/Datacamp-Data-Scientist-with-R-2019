# Subquery inside where (2)
# Use your knowledge of subqueries in WHERE to get the urban area population for only capital cities.
# 
# Instructions
# 100 XP
# Make use of the capital field in the countries table in your subquery.
# Select the city name, country code, and urban area population fields.

SELECT city.name, city.country_code, city.urbanarea_pop
-- from the cities table
FROM cities AS city
-- with city name in the field of capital cities
WHERE city.name IN
(SELECT capital
  FROM countries)
ORDER BY urbanarea_pop DESC;