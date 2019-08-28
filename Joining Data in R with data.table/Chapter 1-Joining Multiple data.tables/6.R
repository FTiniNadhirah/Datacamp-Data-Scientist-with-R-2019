# Mastering simple joins
# Three new data.tables have been loaded into your R session containing information about the geography and population of Australia: area, capitals, and population. Your goal is to perform a sequence of joins to build a single data.table containing information about the geographical area of each Australian state and the population of its capital city, storing the final result in a new variable: australia_stats. There are three data.tables so you will need to perform two joins. First, you will join capitals and population, and then you will join the resulting data.table to the area.
# 
# Instructions 1/2
# 0 XP
# 2
# Instructions 1/2
# 0 XP
# 2
# Identify the key column so you can join capitals and population. Assign the column name as a string to capitals_population_key.
# Using this key, left join population to capitals.

# Identify the key for joining capitals and population
capitals_population_key <- "city"

# Left join population to capitals
capital_pop <- merge(capitals, population, by = capitals_population_key, all.x = TRUE)
capital_pop

# Identify the key column so you can join capital_pop and area. Assign the column name as a string to capital_pop_area_key.
# Using this key, inner join area to capital_pop.

# Identify the key for joining capital_pop and area
capital_pop_area_key <- "state"

# Inner join area to capital pop
australia_stats <- merge(capital_pop, area, by = capital_pop_area_key)

# Print the final result
australia_stats