# Diagnosing problems using anti-join
# Another powerful join in SQL is the anti-join. It is particularly useful in identifying which records are causing an incorrect number of records to appear in join queries.
# 
# You will also see another example of a subquery here, as you saw in the first exercise on semi-joins. Your goal is to identify the currencies used in Oceanian countries!
#   
#   Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Begin by determining the number of countries in countries that are listed in Oceania using SELECT, FROM, and WHERE.


SELECT COUNT(*) FROM countries
WHERE continent = 'Oceania'

# Instructions 2/3
# 35 XP
# 2
# 3
# Instructions 2/3
# 35 XP
# 2
# 3
# Complete an inner join with countries AS c1 on the left and currencies AS c2 on the right to get the different currencies used in the countries of Oceania.
# Match ON the code field in the two tables.
# Include the country code, country name, and basic_unit AS currency.
# Observe query result and make note of how many different countries are listed here.

SELECT c1.code, c1.name, c2.basic_unit AS currency
FROM countries AS c1
INNER JOIN currencies AS c2
USING (code)
WHERE continent = 'Oceania';
# 
# Note that not all countries in Oceania were listed in the resulting inner join with currencies. Use an anti-join to determine which countries were not included!
#   
#   Use NOT IN and (SELECT code FROM currencies) as a subquery to get the country code and country name for the Oceanian countries that are not included in the currencies table.

SELECT c1.code, c1.name
FROM countries AS c1
WHERE c1.continent = 'Oceania'
AND code NOT IN
(SELECT code 
  FROM currencies);