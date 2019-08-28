# read.csv
# The utils package, which is automatically loaded in your R session on startup, can import CSV files with the read.csv() function.
# 
# In this exercise, you'll be working with swimming_pools.csv; it contains data on swimming pools in Brisbane, Australia (Source: data.gov.au). The file contains the column names in the first row. It uses a comma to separate values within rows.
# 
# Type dir() in the console to list the files in your working directory. You'll see that it contains swimming_pools.csv, so you can start straight away.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use read.csv() to import "swimming_pools.csv" as a data frame with the name pools.
# Print the structure of pools using str().

# Import swimming_pools.csv: pools
pools <- read.csv("swimming_pools.csv")

# Print the structure of pools
str(pools)