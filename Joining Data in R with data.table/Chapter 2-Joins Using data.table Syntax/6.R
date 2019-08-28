# Exercise
# Exercise
# Exploring the Australian population
# Your goal is to calculate the total percentage of people living in major cities of Australia (listed in capitals). For this exercise, population has a new column ("percentage") containing the percentage of people living in each of its listed cities.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# First, inner join capitals to population.

# Inner join capitals to population
population[capitals, on = .(city), nomatch = 0]

# In the same data.table expression, sum() the "percentage" column to calculate the total percentage of people living in major Australian cities.

# Join and sum
population[capitals, on = .(city), nomatch = 0,
           j = sum(percentage)]