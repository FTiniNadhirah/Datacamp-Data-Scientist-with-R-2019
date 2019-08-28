# col_types with collectors
# Another way of setting the types of the imported columns is using collectors. Collector functions can be passed in a list() to the col_types argument of read_ functions to tell them how to interpret values in a column.
# 
# For a complete list of collector functions, you can take a look at the collector documentation. For this exercise you will need two collector functions:
#   
#   col_integer(): the column should be interpreted as an integer.
# col_factor(levels, ordered = FALSE): the column should be interpreted as a factor with levels.
# In this exercise, you will work with hotdogs.txt, which is a tab-delimited file without column names in the first row.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# hotdogs is created for you without setting the column types. Inspect its summary using the summary() function.
# Two collector functions are defined for you: fac and int. Have a look at them, do you understand what they're collecting?
# In the second read_tsv() call, edit the col_types argument: Pass a list() with the elements fac, int and int, so the first column is imported as a factor, and the second and third column as integers.
# Create a summary() of hotdogs_factor. Compare this to the summary of hotdogs.

# Import without col_types
hotdogs <- read_tsv("hotdogs.txt", col_names = c("type", "calories", "sodium"))
# Display the summary of hotdogs
summary(hotdogs)
# The collectors you will need to import the data
fac <- col_factor(levels = c("Beef", "Meat", "Poultry"))
int <- col_integer()
# Edit the col_types argument to import the data correctly: hotdogs_factor
hotdogs_factor <- read_tsv("hotdogs.txt",
                           col_names = c("type", "calories", "sodium"),
                           col_types = list(fac,int,int))
# Display the summary of hotdogs_factor
summary(hotdogs_factor)