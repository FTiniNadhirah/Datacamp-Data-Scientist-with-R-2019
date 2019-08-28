# Review inner join using on
# Why does the following code result in an error?
#   
#   SELECT c.name AS country, l.name AS language
# FROM countries AS c
# INNER JOIN languages AS l;

SELECT c.name AS country, continent, l.name AS language, l.official
FROM countries AS c
INNER JOIN languages AS l
USING (code);