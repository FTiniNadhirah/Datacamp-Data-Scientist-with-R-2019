# Exploring world life expectancy
# The two data.tables from the previous exercise have been loaded into your workspace:
#   
#   life_exp: contains the life expectancy of each country in 2010 sourced from the Gapminder foundation
# continents: contains a mapping between each country and the continent(s) they are part of built from information provided by Countries-ofthe-World.com.
# Your goal this time is to calculate the average life expectancy across countries within each continent.
# 
# Instructions
# 100 XP
# Inner join life_exp to continents and calculate the mean() "years" of life expectancy grouped by the "continent" column.
# 
# Calculate average life expectancy per continent:
avg_life_expectancy <- continents[life_exp, on = .(country), 
                                  nomatch = 0][, j = mean(years), 
                                               by = .(continent)]
avg_life_expectancy