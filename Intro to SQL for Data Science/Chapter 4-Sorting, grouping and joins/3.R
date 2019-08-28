# Sorting single columns (DESC)
# To order results in descending order, you can put the keyword DESC after your ORDER BY. For example, to get all the names in the people table, in reverse alphabetical order:
#   
#   SELECT name
# FROM people
# ORDER BY name DESC;
# Now practice using ORDER BY with DESC to sort single columns in descending order!
#   
#   Instructions 1/3
# 35 XP
# 1
# Get the IMDB score and film ID for every film from the reviews table, sorted from highest to lowest score.
# 
# Take Hint (-10 XP)
# 2
# Get the title for every film, in reverse order.
# 
# 3
# Get the title and duration for every film, in order of longest duration to shortest.

#Get the IMDB score and film ID for every film from the reviews table, sorted from highest to lowest score.
SELECT imdb_score, film_id
FROM reviews
ORDER BY imdb_score DESC

#Get the title for every film, in reverse order.
SELECT title
FROM films
ORDER BY title DESC

#Get the title and duration for every film, in order of longest duration to shortest.
SELECT title, duration
FROM films
ORDER BY duration DESC
