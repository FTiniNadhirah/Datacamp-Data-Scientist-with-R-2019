# Exercise
# Exercise
# Combining aggregate functions with WHERE
# Aggregate functions can be combined with the WHERE clause to gain further insights from your data.
# 
# For example, to get the total budget of movies made in the year 2010 or later:
#   
#   SELECT SUM(budget)
# FROM films
# WHERE release_year >= 2010;
# Now it's your turn!
# 
# Instructions 1/4
# 25 XP
# 1
# Use the SUM function to get the total amount grossed by all films made in the year 2000 or later.
# 
# Take Hint (-7 XP)
# 2
# Get the average amount grossed by all films whose titles start with the letter 'A'.
# 
# 3
# Get the amount grossed by the worst performing film in 1994.
# 
# 4
# Get the amount grossed by the best performing film between 2000 and 2012, inclusive.

#Use the SUM function to get the total amount grossed by all films made in the year 2000 or later.
SELECT SUM(gross)
FROM films
WHERE release_year >= 2000;

#Get the average amount grossed by all films whose titles start with the letter 'A'.
SELECT AVG(gross)
FROM films
WHERE title LIKE 'A%'

#Get the amount grossed by the worst performing film in 1994.
SELECT MIN(gross)
FROM films
WHERE release_year = 1994;

#Get the amount grossed by the best performing film between 2000 and 2012, inclusive.
SELECT MAX(gross)
FROM films
WHERE release_year BETWEEN 2000 AND 2012;