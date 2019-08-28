# Simple filtering of text
# Remember, the WHERE clause can also be used to filter text results, such as names or countries.
# 
# For example, this query gets the titles of all films which were filmed in China:
#   
#   SELECT title
# FROM films
# WHERE country = 'China';
# Now it's your turn to practice using WHERE with text values!
# 
# Important: in PostgreSQL (the version of SQL we're using), you must use single quotes with WHERE.
# 
# Instructions 1/4
# 25 XP
# Instructions 1/4
# 25 XP
# 1
# Get all details for all French language films.
# 
# Take Hint (-7 XP)
# 2
# Get the name and birth date of the person born on November 11th, 1974. Remember to use ISO date format ('1974-11-11')!
#   
#   3
# Get the number of Hindi language films.
# 
# 4
# Get all details for all films with an R certification.

#Get all details for all French language films.
SELECT *
  FROM films
WHERE language = 'French';

#Get the name and birth date of the person born on November 11th, 1974. Remember to use ISO date format ('1974-11-11')!
SELECT *
  FROM people
WHERE birthdate = '1974-11-11';

#Get the number of Hindi language films.
SELECT COUNT(language)
FROM films
WHERE language = 'Hindi';

#Get all details for all films with an R certification.
SELECT *
  FROM films
WHERE certification = 'R';
