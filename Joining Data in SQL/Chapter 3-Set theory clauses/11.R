# Set theory challenge
# Congratulations! You've now made your way to the challenge problem for this third chapter. Your task here will be to incorporate two of UNION/UNION ALL/INTERSECT/EXCEPT to solve a challenge involving three tables.
# 
# In addition, you will use a subquery as you have in the last two exercises! This will be great practice as you hop into subqueries more in Chapter 4!
# 
# Instructions
# 100 XP
# Identify the country codes that are included in either economies or currencies but not in populations.
# Use that result to determine the names of cities in the countries that match the specification in the previous instruction.

-- Select the city name
SELECT name
-- alias the table where city name resides
FROM cities AS c1
-- choose only records matching the result of multiple set theory clauses
WHERE country_code IN
(
  -- select appropriate field from economies AS e
  SELECT e.code
  FROM economies AS e
  -- get all additional (unique) values of the field from currencies AS c2  
  UNION
  SELECT c2.code
  FROM currencies AS c2
  -- exclude those appearing in populations AS p
  EXCEPT
  SELECT p.country_code
  FROM populations AS p
);