# Identifying observations shared by multiple tables
# The list of data tables, gdp, is available in your workspace. Your goal is to find the countries that are located in more than one continent, i.e., rows that are present in more than one data.table in gdp.
# 
# Instructions
# 100 XP
# Use the fintersect() function to build a new data.table containing countries located in both Europe and Asia.
# Concatenate all data.tables in gdp and assign it to gdp_all.
# Use the duplicated() function to filter gdp_all to rows that are duplicates to find all countries located in more than one continent.
# Obtain countries in both Asia and Europe
fintersect(gdp$asia, gdp$europe)

# Concatenate all data tables
gdp_all <- rbindlist(gdp)

# Find all countries that span multiple continents
gdp_all[duplicated(gdp_all)]