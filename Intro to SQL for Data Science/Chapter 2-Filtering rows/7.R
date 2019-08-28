# NULL and IS NULL
# Now that you know what NULL is and what it's used for, it's time for some practice!
#   
#   Instructions 1/3
# 35 XP
# 1
# Get the names of people who are still alive, i.e. whose death date is missing.
# 
# Take Hint (-10 XP)
# 2
# Get the title of every film which doesn't have a budget associated with it.
# 
# 3
# Get the number of films which don't have a language associated with them.

#Get the names of people who are still alive, i.e. whose death date is missing.
SELECT name, deathdate
FROM people
WHERE deathdate IS null;

#Get the title of every film which doesn't have a budget associated with it.
SELECT title
FROM films
WHERE budget IS null;

#Get the number of films which don't have a language associated with them.
SELECT COUNT(*)
FROM films
WHERE language IS NULL;