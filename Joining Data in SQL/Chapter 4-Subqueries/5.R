# Advanced subquery
# You can also nest multiple subqueries to answer even more specific questions.
# 
# In this exercise, for each of the six continents listed in 2015, you'll identify which country had the maximum inflation rate (and how high it was) using multiple subqueries. The table result of your query in Task 3 should look something like the following, where anything between < > will be filled in with appropriate values:
# 
# +------------+---------------+-------------------+
# | name       | continent     | inflation_rate    |
# |------------+---------------+-------------------|
# | <country1> | North America | <max_inflation1>  |
# | <country2> | Africa        | <max_inflation2>  |
# | <country3> | Oceania       | <max_inflation3>  |
# | <country4> | Europe        | <max_inflation4>  |
# | <country5> | South America | <max_inflation5>  |
# | <country6> | Asia          | <max_inflation6>  |
# +------------+---------------+-------------------+
# Again, there are multiple ways to get to this solution using only joins, but the focus here is on showing you an introduction into advanced subqueries.
# 
# Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Create an inner join with countries on the left and economies on the right with USING. Do not alias your tables or columns.
# Retrieve the country name, continent, and inflation rate for 2015.

SELECT name, continent, inflation_rate
FROM countries 
INNER JOIN economies
USING (code)
WHERE year = 2015;

# Determine the maximum inflation rate for each continent in 2015 using the previous query as a subquery called subquery in the FROM clause.
# Select the maximum inflation rate AS max_inf grouped by continent.
# This will result in the six maximum inflation rates in 2015 for the six continents as one field table. (Don't include continent in the outer SELECT statement.)

SELECT MAX(inflation_rate) AS max_inf
FROM (
  SELECT name, continent, inflation_rate
  FROM countries
  INNER JOIN economies
  USING (code)
  WHERE year = 2015) AS subquery
GROUP BY continent;
# 
# Append the second part's query to the first part's query using WHERE, AND, and IN to obtain the name of the country, its continent, and the maximum inflation rate for each continent in 2015. Revisit the sample output in the assignment text at the beginning of the exercise to see how this matches up.
# For the sake of practice, change all joining conditions to use ON instead of USING.
# This code works since each of the six maximum inflation rate values occur only once in the 2015 data. Think about whether this particular code involving subqueries would work in cases where there are ties for the maximum inflation rate values.

SELECT name, continent, inflation_rate
FROM countries
INNER JOIN economies
ON countries.code = economies.code
WHERE year = 2015
AND inflation_rate IN (
  SELECT MAX(inflation_rate) AS max_inf
  FROM (
    SELECT name, continent, inflation_rate
    FROM countries
    INNER JOIN economies
    ON countries.code = economies.code
    WHERE year = 2015) AS subquery
  GROUP BY continent);