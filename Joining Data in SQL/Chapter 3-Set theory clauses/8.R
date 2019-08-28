# Semi-join
# You are now going to use the concept of a semi-join to identify languages spoken in the Middle East.
# 
# Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Flash back to our Intro to SQL for Data Science course and begin by selecting all country codes in the Middle East as a single field result using SELECT, FROM, and WHERE.
# 

SELECT * FROM countries
WHERE region='Middle East'

# Comment out the answer to the previous tab by surrounding it in /* and */. You'll come back to it!
# Below the commented code, select only unique languages by name appearing in the languages table.
# Order the resulting single field table by name in ascending order.

SELECT DISTINCT name FROM languages
ORDER BY name

# Now combine the previous two queries into one query:
#   
#   Add a WHERE IN statement to the SELECT DISTINCT query, and use the commented out query from the first instruction in there. That way, you can determine the unique languages spoken in the Middle East.
# Carefully review this result and its code after completing it. It serves as a great example of subqueries, which are the focus of Chapter 4.

SELECT DISTINCT name FROM languages
WHERE code IN
(SELECT code FROM countries
  WHERE region='Middle East')
ORDER BY name