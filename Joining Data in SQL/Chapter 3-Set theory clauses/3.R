# Union all
# As you saw, duplicates were removed from the previous two exercises by using UNION.
# 
# To include duplicates, you can use UNION ALL.
# 
# Instructions
# 100 XP
# Determine all combinations (include duplicates) of country code and year that exist in either the economies or the populations tables. Order by code then year.
# The result of the query should only have two columns/fields. Think about how many records this query should result in.
# You'll use code very similar to this in your next exercise after the video. Make note of this code after completing it.


SELECT code, year
FROM economies
UNION ALL
SELECT country_code, year
FROM populations
ORDER BY code, year;