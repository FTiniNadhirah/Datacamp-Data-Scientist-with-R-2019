# Exercise
# Exercise
# Left join (3)
# You'll now revisit the use of the AVG() function introduced in our Intro to SQL for Data Science course. You will use it in combination with left join to determine the average gross domestic product (GDP) per capita by region in 2010.
# 
# Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Begin with a left join with the countries table on the left and the economies table on the right.
# Focus only on records with 2010 as the year.

SELECT name, region, gdp_percapita
-- from countries (alias c) on the left
FROM countries AS c
-- left join with economies (alias e)
LEFT JOIN economies AS e
-- match on code fields
ON c.code = e.code
-- focus on 2010 entries
WHERE e.year = 2010;

# Instructions 2/3
# 35 XP
# 2
# 3
# Modify your code to calculate the average GDP per capita AS avg_gdp for each region in 2010.
# Select the region and avg_gdp fields.

SELECT region, AVG(gdp_percapita) as avg_gdp
-- From countries (alias c) on the left
FROM countries AS c
-- Join with economies (alias e)
LEFT JOIN economies AS e
-- Match on code fields
ON c.code = e.code
-- Focus on 2010 
WHERE year = 2010
-- Group by region
GROUP BY region;

# Arrange this data on average GDP per capita for each region in 2010 from highest to lowest average GDP per capita.

SELECT region, AVG(gdp_percapita) as avg_gdp
-- From countries (alias c) on the left
FROM countries AS c
-- Join with economies (alias e)
LEFT JOIN economies AS e
-- Match on code fields
ON c.code = e.code
-- Focus on 2010 
WHERE year = 2010
-- Group by region
GROUP BY region
-- Order by avg_gdp, descending
ORDER BY avg_gdp DESC;