# WHERE AND
# Often, you'll want to select data based on multiple conditions. You can build up your WHERE queries by combining multiple conditions with the AND keyword.
# 
# For example,
# 
# SELECT title
# FROM films
# WHERE release_year > 1994
# AND release_year < 2000;
# gives you the titles of films released between 1994 and 2000.
# 
# Note that you need to specify the column name separately for every AND condition, so the following would be invalid:
# 
# SELECT title
# FROM films
# WHERE release_year > 1994 AND < 2000;
# You can add as many AND conditions as you need!
# 
# Instructions 1/3
# 35 XP
# Instructions 1/3
# 35 XP
# 1
# Get the title and release year for all Spanish language films released before 2000.
# 
# Take Hint (-10 XP)
# 2
# Get all details for Spanish language films released after 2000.
# 
# 3
# Get all details for Spanish language films released after 2000, but before 2010.

#Get the title and release year for all Spanish language films released before 2000.
SELECT title, release_year
FROM films
WHERE language = 'Spanish' and release_year < 2000

#Get all details for Spanish language films released after 2000.
SELECT *
  FROM films
WHERE language = 'Spanish' and release_year > 2000

#Get all details for Spanish language films released after 2000, but before 2010.
SELECT *
  FROM films
WHERE language = 'Spanish' and release_year > 2000 and release_year < 2010