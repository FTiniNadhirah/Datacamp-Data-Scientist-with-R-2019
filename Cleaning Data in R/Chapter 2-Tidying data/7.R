# Multiple values are stored in one column
# It's also fairly common that you will find two variables stored in a single column of data. These variables may be joined by a separator like a dash, underscore, space, or forward slash.
# 
# The separate() function comes in handy in these situations. To practice using it, we have created a slight modification of last exercise's result. Keep in mind that the into argument, which specifies the names of the 2 new columns being formed, must be given as a character vector (e.g. c("column1", "column2")).
# 
# tidyr and dplyr are already loaded for you.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# View the head of census_long3.
# Use tidyr's separate() to split the yr_month column into two separate variables: year and month, saving the result to census_long4.
# View the first 6 rows of the result.

# View the head of census_long3
head(census_long3)

# Separate the yr_month column into two
census_long4 <- separate(census_long3, yr_month, c("year","month"))


# View the first 6 rows of the result
head(census_long4, 6)