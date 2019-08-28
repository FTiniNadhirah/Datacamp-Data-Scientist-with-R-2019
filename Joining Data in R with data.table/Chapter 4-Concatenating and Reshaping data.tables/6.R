# Melting a wide table
# A data table named gdp_per_capita containing the gross domestic product (GDP) per capita for countries in Oceania every five years from 1990 to 2010 sourced from the Gapminder foundation is available in your workspace. Your goal is to reshape this data table to the long format so that there is a single column containing all GDP per capita values for each country and year.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Print gdp_per_capita to learn about its contents.
# Use the melt() function to create a long format data.table stacking the values for each country's column.
# Print gdp_per_capita
gdp_per_capita

# Reshape gdp_per_capita to the long format
melt(gdp_per_capita, id.vars = "year")
# 
# Within your call to melt(), name the new "variable" column as "country" and the new "value" column as "gdp_pc".
# Rename the new columns
melt(gdp_per_capita, id.vars = "year", 
     variable.name = "country", value.name = "gdp_pc")
