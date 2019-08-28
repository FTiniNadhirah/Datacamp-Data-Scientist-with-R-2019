# Removing duplicates while combining tables
# The same list of data tables as the last exercise, gdp, is available in your workspace. Your goal this time is to build a data.table in which each country appears only once, even if it is located in more than one continent.
# 
# Instructions
# 100 XP
# Use the funion() function to build a new data.table containing all countries in either Europe or Asia, with each country appearing only once in the result.
# Concatenate all data.tables in gdp and assign it to gdp_all.
# Use the unique() function to remove duplicate rows fromgdp_all so that each country occurs only once in the result.

# Get all countries in either Asia or Europe
funion(gdp$asia, gdp$europe)

# Concatenate all data tables
gdp_all <- rbindlist(gdp)

# Print all unique countries
unique(gdp_all)