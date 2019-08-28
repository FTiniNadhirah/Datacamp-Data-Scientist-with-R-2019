# Outer challenge
# Now that you're fully equipped to use outer joins, try a challenge problem to test your knowledge!
# 
# In terms of life expectancy for 2010, determine the names of the lowest five countries and their regions.
# 
# Instructions
# 100 XP
# Select country name AS country, region, and life expectancy AS life_exp.
# Make sure to use LEFT JOIN, WHERE, ORDER BY, and LIMIT.

SELECT c.name as country, region, p.life_expectancy as life_exp
FROM countries as c
LEFT JOIN populations as p
ON c.code = p.country_code
WHERE p.year = 2010
ORDER BY life_exp
LIMIT 5