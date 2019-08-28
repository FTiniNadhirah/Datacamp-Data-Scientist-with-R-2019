# Concatenating a list of data.tables
# A list of data.tables has been loaded into your R session: gdp. Its elements contain a data.table for each continent, each data.table containing the gross domestic product (gdp) in the year 2000 for the countries in each continent (data sourced from the Gapminder foundation). Your goal is to build a new data.table containing the observations from all data.tables in the gdp list
# 
# Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Concatenate all data.tables in the gdp list, saving the result to gdp_all_1.
# 
# 
# Concatenate its data.tables
gdp_all_1 <- rbindlist(gdp)
# Modify the code so that a new column, "continent" is created in the result stored in gdp_all_2, which contains the continent(s) each country is located in.
# Inspect the result in your console.
# Concatenate its data.tables
gdp_all_2 <- rbindlist(gdp, idcol = "continent") 
# In your console run the code to check the result of your previous call to rbindlist(). Can you see any problems?
#   Modify your call to rbindlist() to fix any problems you have found, saving the result in gdp_all_3

# Run this code to inspect gdp_all_2
gdp_all_2 <- rbindlist(gdp, idcol = "continent")
str(gdp_all_2)
gdp_all_2[95:105]

# Fix the problem
gdp_all_3 <- rbindlist(gdp, idcol = "continent", use.names = TRUE)
gdp_all_3