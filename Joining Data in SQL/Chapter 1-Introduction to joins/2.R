# Inner join (2)
# Instead of writing the full table name, you can use table aliasing as a shortcut. For tables you also use AS to add the alias immediately after the table name with a space. Check out the aliasing of cities and countries below.
# 
# SELECT c1.name AS city, c2.name AS country
# FROM cities AS c1
# INNER JOIN countries AS c2
# ON c1.country_code = c2.code;
# Notice that to select a field in your query that appears in multiple tables, you'll need to identify which table/table alias you're referring to by using a . in your SELECT statement.
# 
# You'll now explore a way to get data from both the countries and economies tables to examine the inflation rate for both 2010 and 2015.
# 
# Sometimes it's easier to write SQL code out of order: you write the SELECT statement after you've done the JOIN.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Join the tables countries (left) and economies (right) aliasing countries AS c and economies AS e.
# Specify the field to match the tables ON.
# From this join, SELECT:
# c.code, aliased as country_code.
# name, year, and inflation_rate, not aliased.

SELECT c.code AS country_code, c.name, e.year, e.inflation_rate
FROM countries AS c
INNER JOIN economies AS e
ON c.code = e.code;