# Aggregate functions practice
# Good work. Aggregate functions are important to understand, so let's get some more practice!
# 
# Instructions 1/4
# 25 XP
# 1
# Use the SUM function to get the total amount grossed by all films.
# 
# Take Hint (-7 XP)
# 2
# Get the average amount grossed by all films.
# 
# 3
# Get the amount grossed by the worst performing film.
# 
# 4
# Get the amount grossed by the best performing film.

#Use the SUM function to get the total amount grossed by all films.
SELECT SUM (gross)
FROM films

#Get the average amount grossed by all films.
SELECT AVG (gross)
FROM films

#Get the amount grossed by the worst performing film.
SELECT MIN (gross)
FROM films

#Get the amount grossed by the best performing film.
SELECT MAX (gross)
FROM films