# Subquery inside from
# The last type of subquery you will work with is one inside of FROM.
# 
# You will use this to determine the number of languages spoken for each country, identified by the country's local name! (Note this may be different than the name field and is stored in the local_name field.)
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Begin by determining for each country code how many languages are listed in the languages table using SELECT, FROM, and GROUP BY.
# Alias the aggregated field as lang_num.

SELECT code, COUNT(name) AS lang_num
FROM languages
GROUP BY code;

# Include the previous query (aliased as subquery) as a subquery in the FROM clause of a new query.
# Select the local name of the country from countries.
# Also, select lang_num from subquery.
# Make sure to use WHERE appropriately to match code in countries and in subquery.
# Sort by lang_num in descending order.

SELECT local_name, subquery.lang_num
FROM countries, 
(SELECT code, COUNT(name) AS lang_num
 FROM languages
 GROUP BY code) as subquery
WHERE countries.code = subquery.code
ORDER BY lang_num DESC;