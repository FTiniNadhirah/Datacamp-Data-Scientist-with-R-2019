# Final challenge (2)
# Whoofta! That was challenging, huh?
#   
#   Let's ease up a bit and calculate the average fertility rate for each region in 2015.
# 
# Instructions
# 100 XP
# Include the name of region, its continent, and average fertility rate aliased as avg_fert_rate.
# Sort based on avg_fert_rate ascending.
# Remember that you'll need to GROUP BY all fields that aren't included in the aggregate function of SELECT.


SELECT region, continent, AVG(fertility_rate) AS avg_fert_rate
-- left table
FROM countries AS c
-- right table
INNER JOIN populations AS p
-- join conditions
ON c.code = p.country_code
-- specific records matching a condition
WHERE year = 2015
-- aggregated for each what?
  GROUP BY region, continent
-- how should we sort?
  ORDER BY avg_fert_rate;