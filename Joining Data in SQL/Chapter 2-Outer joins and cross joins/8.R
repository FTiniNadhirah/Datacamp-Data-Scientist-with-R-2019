# Exercise
# Exercise
# A table of two cities
# This exercise looks to explore languages potentially and most frequently spoken in the cities of Hyderabad, India and Hyderabad, Pakistan.
# 
# You will begin with a cross join with cities AS c on the left and languages AS l on the right. Then you will modify the query using an inner join in the next tab.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Create the cross join as described above. (Recall that cross joins do not use ON or USING.)
# Make use of LIKE and Hyder% to choose Hyderabad in both countries.
# Select only the city name AS city and language name AS language.

SELECT c.name AS city, l.name AS language
FROM cities AS c        
CROSS JOIN languages AS l
-- ON ___
WHERE c.name LIKE 'Hyder%';

# Use an inner join instead of a cross join. Think about what the difference will be in the results for this inner join result and the one for the cross join.

SELECT c.name AS city, l.name AS language
FROM cities AS c        
INNER JOIN languages AS l
ON c.country_code = l.code
WHERE c.name LIKE 'Hyder%';