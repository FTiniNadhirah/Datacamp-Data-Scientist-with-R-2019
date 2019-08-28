# Column headers are values, not variable names
# You saw earlier in the chapter how we sometimes come across datasets where column names are actually values of a variable (e.g. months of the year). This is often the case when working with repeated measures data, where measurements are taken on subjects of interest on multiple occasions over time. The gather() function is helpful in these situations.
# 
# tidyr and dplyr are already loaded for you.
# 
# Instructions
# 100 XP
# View the head of census.
# Gather the month columns, creating two new columns (month and amount), saving the result to census2.
# Run the code given to arrange() the rows of census2 by the YEAR column.
# View the first 20 rows of the result.

# View the head of census
head(census)

# Gather the month columns
census2 <- gather(census, month, amount, -YEAR)

# Arrange rows by YEAR using dplyr's arrange
census2_arr <- arrange(census2, YEAR)

# View first 20 rows of census2
head(census2_arr, 20)