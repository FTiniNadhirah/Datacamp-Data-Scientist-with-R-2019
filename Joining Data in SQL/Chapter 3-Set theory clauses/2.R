# Union (2)
# UNION can also be used to determine all occurrences of a field across multiple tables. Try out this exercise with no starter code.
# 
# Instructions
# 100 XP
# Determine all (non-duplicated) country codes in either the cities or the currencies table. The result should be a table with only one field called country_code.
# Sort by country_code in alphabetical order.

SELECT country_code
FROM cities
UNION
SELECT code as country_code
FROM currencies
ORDER BY country_code