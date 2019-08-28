# Subquery challenge
# Let's test your understanding of the subqueries with a challenge problem! Use a subquery to get 2015 economic data for countries that do not have
# 
# gov_form of 'Constitutional Monarchy' or
# 'Republic' in their gov_form.
# Here, gov_form stands for the form of the government for each country. Review the different entries for gov_form in the countries table.
# 
# Instructions
# 100 XP
# Select the country code, inflation rate, and unemployment rate.
# Order by inflation rate ascending.
# Do not use table aliasing in this exercise.

SELECT code, inflation_rate, unemployment_rate
FROM economies
WHERE year = 2015 AND code NOT IN
(SELECT code
  FROM countries
  WHERE (gov_form = 'Constitutional Monarchy' OR gov_form LIKE '%Republic'))
ORDER BY inflation_rate;