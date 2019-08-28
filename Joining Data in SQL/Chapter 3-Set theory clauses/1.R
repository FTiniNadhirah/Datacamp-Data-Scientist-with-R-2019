# Union
# Near query result to the right, you will see two new tables with names economies2010 and economies2015.
# 
# Instructions
# 100 XP
# Combine these two tables into one table containing all of the fields in economies2010. The economies table is also included for reference.
# Sort this resulting single table by country code and then by year, both in ascending order.
# Take Hint (-30 XP)

SELECT *
  -- 2010 table will be on top
FROM economies2010
-- which set theory clause?
  UNION
-- pick specified columns from 2015 table
SELECT *
  -- 2015 table on the bottom
FROM economies2015
-- order accordingly
ORDER BY code, year;