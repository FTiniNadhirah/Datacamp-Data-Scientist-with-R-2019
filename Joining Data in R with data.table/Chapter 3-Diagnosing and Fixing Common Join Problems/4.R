# Exercise
# Exercise
# Column name suffixes
# The three data.tables containing information about the geography and population of Australia have been loaded into your R session: capitals, area, and population. Both area and population now have a column named "percentage". The "percentage" column in area contains the percentage of total land mass each state occupies. The "percentage" column in population contains the percentage of the total population living in each city.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Use the merge() function to inner join population to capitals and save the result to capital_pop.
# Use the merge() function to left join area to capital_pop and view the result.
# 
# Inner join
capital_pop <- merge(capitals, population, by = "city")

# Left join
merge(capital_pop, area, by = "state", all.x = TRUE)
# 
# This time, left join area to capital_pop changing the suffixes of the two "percentage" columns to ".pop" and ".area".
# Inner join from step 1
capital_pop <- merge(capitals, population, by = "city")

# Left join with suffixes
merge(capital_pop, area, by = "state", all.x = TRUE, suffixes = c(".pop", ".area"))
