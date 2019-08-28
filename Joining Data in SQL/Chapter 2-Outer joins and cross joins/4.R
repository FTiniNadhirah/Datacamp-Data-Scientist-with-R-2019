# Right join
# Right joins aren't as common as left joins. One reason why is that you can always write a right join as a left join.
# 
# Instructions
# 100 XP
# The left join code is commented out here. Your task is to write a new query using rights joins that produces the same result as what the query using left joins produces. Keep this left joins code commented as you write your own query just below it using right joins to solve the problem.
# 
# Note the order of the joins matters in your conversion to using right joins!

 
-- convert this code to use RIGHT JOINs instead of LEFT JOINs
/*
  SELECT cities.name AS city, urbanarea_pop, countries.name AS country,
indep_year, languages.name AS language, percent
FROM cities
LEFT JOIN countries
ON cities.country_code = countries.code
LEFT JOIN languages
ON countries.code = languages.code
ORDER BY city, language;
*/
  
  SELECT cities.name AS city, urbanarea_pop, countries.name AS country,
indep_year, languages.name AS language, percent
FROM languages
RIGHT JOIN countries
ON countries.code = languages.code
RIGHT JOIN cities
ON cities.country_code = countries.code
ORDER BY city, language;