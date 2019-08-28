# Exercise
# Exercise
# Finding multiple matches
# Two new data.tables have been loaded in your workspace:
#   
#   life_exp: contains the life expectancy of each country in 2010 sourced from the Gapminder foundation
# continents: contains a mapping between each country and the continent(s) they are part of built from information provided by Countries-ofthe-World.com.
# In this exercise, you will find the countries that are listed in more than one continent
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Complete the code to build a data.table containing the number of matches in continents for each row in life_exp.
# How many continents is each country listed in?
continents[life_exp, on = .(country), .N, 
           by = .EACHI]


# Chain a second data.table[] expression to the first to filter the result of the previous step to contain just countries with more than one match between life_exp and continents.

# What countries are listed in multiple continents?
continents[life_exp, on = .(country), .N, 
           by = .EACHI][N > 1]