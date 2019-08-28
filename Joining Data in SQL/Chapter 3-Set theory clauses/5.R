# Intersect (2)
# As you think about major world cities and their corresponding country, you may ask which countries also have a city with the same name as their country name?
#   
#   Instructions
# 100 XP
# Use INTERSECT to answer this question with countries and cities!

SELECT name
FROM countries
INTERSECT
SELECT name
FROM cities;