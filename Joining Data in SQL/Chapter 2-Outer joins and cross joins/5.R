# Full join
# In this exercise, you'll examine how your results differ when using a full join versus using a left join versus using an inner join with the countries and currencies tables.
# 
# You will focus on the North American region and also where the name of the country is missing. Dig in to see what we mean!
# 
# Begin with a full join with countries on the left and currencies on the right. The fields of interest have been SELECTed for you throughout this exercise.
# 
# Then complete a similar left join and conclude with an inner join.
# 
# Instructions 1/3
# 35 XP
# Instructions 1/3
# 35 XP
# 1
# Choose records in which region corresponds to North America or is NULL.
# 
# Take Hint (-10 XP)
# 2
# Repeat the same query as above but use a LEFT JOIN instead of a FULL JOIN. Note what has changed compared to the FULL JOIN result!
# 
# 3
# Repeat the same query as above but use an INNER JOIN instead of a FULL JOIN. Note what has changed compared to the FULL JOIN and LEFT JOIN results!

SELECT name AS country, code, region, basic_unit
FROM countries
FULL JOIN currencies
USING (code)
WHERE region = 'North America' OR region IS NULL
ORDER BY region;

SELECT name AS country, code, region, basic_unit
FROM countries
LEFT JOIN currencies
USING (code)
WHERE region = 'North America' OR region IS NULL
ORDER BY region;

SELECT name AS country, code, region, basic_unit
FROM countries
INNER JOIN currencies
USING (code)
WHERE region = 'North America' OR region IS NULL
ORDER BY region;