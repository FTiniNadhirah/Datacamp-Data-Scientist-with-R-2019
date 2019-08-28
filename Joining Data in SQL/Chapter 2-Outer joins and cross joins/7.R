# Full join (3)
# You'll now explore using two consecutive full joins on the three tables you worked with in the previous two exercises.
# 
# Instructions
# 100 XP
# Complete a full join with countries on the left and languages on the right.
# Next, full join this result with currencies on the right.
# Use LIKE to choose the Melanesia and Micronesia regions (Hint: 'M%esia').
# Select the fields corresponding to the country name AS country, region, language name AS language, and basic and fractional units of currency.

SELECT c1.name AS country, region, l.name AS language,
basic_unit, frac_unit
FROM countries AS c1
FULL JOIN languages AS l
USING (code)
FULL JOIN currencies AS c2
USING (code)
WHERE region LIKE 'M%esia';