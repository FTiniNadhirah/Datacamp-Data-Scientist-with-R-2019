# GROUP BY practice (2)
# Now practice your new skills by combining GROUP BY and ORDER BY with some more aggregate functions!
#   
#   Make sure to always put the ORDER BY clause at the end of your query. You can't sort values that you haven't calculated yet!
#   
#   Instructions 1/5
# 20 XP
# Instructions 1/5
# 20 XP
# 1
# Get the release year and lowest gross earnings per release year.
# 
# Take Hint (-6 XP)
# 2
# Get the language and total gross amount films in each language made.
# 
# 3
# Get the country and total budget spent making movies in each country.
# 
# 4
# Get the release year, country, and highest budget spent making a film for each year, for each country. Sort your results by release year and country.
# 
# 5
# Get the country, release year, and lowest amount grossed per release year per country. Order your results by country and release year.

#Get the release year and lowest gross earnings per release year.
SELECT release_year, MIN(gross)
FROM films
GROUP BY release_year

#Get the language and total gross amount films in each language made.
SELECT language, SUM(gross)
FROM films
GROUP BY language

#Get the country and total budget spent making movies in each country.
SELECT country, SUM(budget)
FROM films
GROUP BY country

#Get the release year, country, and highest budget spent making a film for each year, for each country. Sort your results by release year and country.
SELECT release_year, country, MAX(budget)
FROM films
GROUP BY release_year, country
ORDER BY release_year, country

#Get the country, release year, and lowest amount grossed per release year per country. Order your results by country and release year.
SELECT country, release_year, MIN(gross)
FROM films
GROUP BY release_year, country
ORDER BY country, release_year