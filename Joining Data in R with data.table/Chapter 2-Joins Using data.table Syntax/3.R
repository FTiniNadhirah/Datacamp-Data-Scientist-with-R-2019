# Exercise
# Exercise
# Anti-joins
# Anti-joins are useful when you want to filter rows in one table not found in the other. Your goal is to filter the population so that it does not contain the state capitals, and filter the area so that it only contains administrative areas, not the major Australian states.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Filter population so the result doesn't contain any rows from capitals.
# Anti-join capitals to population
population[!capitals, on = .(city)]
# 
# Filter area so the result doesn't contain any rows from capitals.


# Anti-join capitals to area
area[!capitals, on = .(state)]