# GROUP BY practice
# As you've just seen, combining aggregate functions with GROUP BY can yield some powerful results!
# 
# A word of warning: SQL will return an error if you try to SELECT a field that is not in your GROUP BY clause without using it to calculate some kind of value about the entire group.
# 
# Note that you can combine GROUP BY with ORDER BY to group your results, calculate something about them, and then order your results. For example,
# 
# SELECT sex, count(*)
# FROM employees
# GROUP BY sex
# ORDER BY count DESC;
# might return something like
# 
# sex	count
# female	19
# male	15
# 
# because there are more females at our company than males. Note also that ORDER BY always goes after GROUP BY. Let's try some exercises!
#   
#   Instructions 1/4
# 25 XP
# 1
# Get the release year and count of films released in each year.
# 
# Take Hint (-7 XP)
# 2
# Get the release year and average duration of all films, grouped by release year.
# 
# 3
# Get the release year and largest budget for all films, grouped by release year.
# 
# 4
# Get the IMDB score and count of film reviews grouped by IMDB score in the reviews table.

#Get the release year and count of films released in each year.
SELECT release_year, count(*)
FROM films
GROUP BY release_year

#Get the release year and average duration of all films, grouped by release year.
SELECT release_year, AVG(duration)
FROM films
GROUP BY release_year

#Get the release year and largest budget for all films, grouped by release year.
SELECT release_year, MAX(budget)
FROM films
GROUP BY release_year

#Get the IMDB score and count of film reviews grouped by IMDB score in the reviews table.
SELECT imdb_score, COUNT(num_votes)
FROM reviews
GROUP BY imdb_score