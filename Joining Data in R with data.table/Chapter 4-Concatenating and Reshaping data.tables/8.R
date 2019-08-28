# Casting a long table
# gdp_oceania contains the population and GDP for every country in Oceania for every five years from 1990 to 2010 and is available in your workspace. Your goal is to create wide format data.tables containing the population and total GDP for each country with each year having its own column.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Use dcast() to build a wide data.table containing the population of each country, with each country as a row and each year as a column.
# 
# Split the population column by year
dcast(gdp_oceania, formula = country ~ year, value.var = "population")
# 
# Create another wide format data.table containing the GDP of each country with each year as a row and each country as a column.
# Split the gdp column by country
dcast(gdp_oceania, formula = year ~ country, value.var = "gdp")
