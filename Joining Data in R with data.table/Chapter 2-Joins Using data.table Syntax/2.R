# Exercise
# Exercise
# Inner join with the data.table syntax
# In the last exercise, you right joined population to capitals. The result contained all rows from population and had some NAs. In this exercise, you will perform an inner join instead, retaining rows only from both the tables.
# 
# Instructions
# 100 XP
# Inner join population to capitals using the data.table syntax.
# 
# Inner join with the data.table syntax
capitals[population, on = .(city), nomatch = 0]