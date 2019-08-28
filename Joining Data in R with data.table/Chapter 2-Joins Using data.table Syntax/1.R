# Exercise
# Exercise
# Right join with the data.table syntax
# capitals and population, the two data.tables containing information about the geography and population of Australia are available in your workspace. Your goal is to add the state of each city to the population by performing a right join using the data.table syntax.
# 
# Instructions 1/2
# 35 XP
# 2
# Right join population to capitals using the data.table syntax.
# Right join population to capitals using data.table syntax
capitals[population, on = .(city)]
# To compare the output, right join population to capitals using the merge() function.
# Right join using merge
merge(capitals, population, by = "city", all.y = TRUE)