# Practice with COUNT
# As you've seen, COUNT(*) tells you how many rows are in a table. However, if you want to count the number of non-missing values in a particular column, you can call COUNT on just that column.
# 
# For example, to count the number of birth dates present in the people table:
# 
# SELECT COUNT(birthdate)
# FROM people;
# It's also common to combine COUNT with DISTINCT to count the number of distinct values in a column.
# 
# For example, this query counts the number of distinct birth dates contained in the people table:
#   
#   SELECT COUNT(DISTINCT birthdate)
# FROM people;
# Let's get some practice with COUNT!
# 
# Instructions 1/5
# 20 XP
# Instructions 1/5
# 20 XP
# 1
# Count the number of rows in the people table.
# 
# Take Hint (-6 XP)
# 2
# Count the number of (non-missing) birth dates in the people table.
# 
# 3
# Count the number of unique birth dates in the people table.
# 
# 4
# Count the number of unique languages in the films table.
# 
# 5
# Count the number of unique countries in the films table.

#Count the number of rows in the people table.
SELECT COUNT(*)
FROM people;

#Count the number of (non-missing) birth dates in the people table.
SELECT COUNT(birthdate)
FROM people;

#Count the number of unique birth dates in the people table.
SELECT COUNT(DISTINCT birthdate)
FROM people;

#Count the number of unique languages in the films table.
SELECT COUNT(DISTINCT language)
FROM films;

#Count the number of unique countries in the films table.
SELECT COUNT(DISTINCT country)
FROM films;