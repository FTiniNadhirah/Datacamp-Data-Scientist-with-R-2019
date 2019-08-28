# All together now
# Time to practice using ORDER BY, GROUP BY and HAVING together.
# 
# Now you're going to write a query that returns the average budget and average gross earnings for films in each year after 1990, if the average budget is greater than $60 million.
# 
# This is going to be a big query, but you can handle it!

#Get the release year, budget and gross earnings for each film in the films table.
SELECT release_year, budget, gross
FROM films

#Modify your query so that only records with a release_year after 1990 are included.
SELECT release_year, budget, gross
FROM films
WHERE release_year > 1990

#Remove the budget and gross columns, and group your results by release year.
SELECT release_year
FROM films
GROUP BY release_year
HAVING release_year > 1990

#Modify your query to include the average budget and average gross earnings for the results you have so far. Alias the average budget as avg_budget; alias the average gross earnings as avg_gross.
SELECT release_year, AVG(budget) as avg_budget, AVG(gross) as avg_gross
FROM films
GROUP BY release_year
HAVING release_year > 1990

#Modify your query so that only years with an average budget of greater than $60 million are included.
SELECT release_year, AVG(budget) as avg_budget, AVG(gross) as avg_gross
FROM films
GROUP BY release_year
HAVING AVG(budget) > 60000000

#Finally, modify your query to order the results from highest average gross earnings to lowest.
SELECT release_year, AVG(budget) as avg_budget, AVG(gross) as avg_gross
FROM films
GROUP BY release_year
HAVING AVG(budget) > 60000000
ORDER BY AVG(gross) DESC;