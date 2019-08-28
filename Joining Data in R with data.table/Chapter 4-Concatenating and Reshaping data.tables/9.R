# Casting multiple columns
# The data table from the previous exercise, gdp_oceania, is available in your workspace. Your goal is to create a wide format data table, splitting both the "gdp" and "population" columns by the "year" column.
# 
# Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Convert gdp_oceania to wide format with each country as a row, and splitting both the "gdp" and "population" columns into columns for each "year".
# 
# Split the gdp and population columns by year
dcast(gdp_oceania, formula = country ~ year, value.var = c("gdp", "population")) 
# Convert wide to a matrix using the "country" column as the matrix rownames.
# 
# Reshape from wide to long format
wide <- dcast(gdp_oceania, formula = country ~ year, value.var = c("gdp", "population"))

# convert to a matrix
as.matrix(wide, rownames = "country")
# 
# Modify the call to dcast() so that the "continent" column is also kept aside as row identifiers.

# Modify your previous code
dcast(gdp_oceania, formula = country + continent ~ year, value.var = c("gdp", "population"))