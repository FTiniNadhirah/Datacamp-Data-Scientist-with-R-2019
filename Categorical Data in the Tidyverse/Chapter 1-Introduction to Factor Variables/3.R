# Exercise
# Exercise
# Examining number of levels
# dplyr has two other functions that can come in handy when exploring a dataset. The first is top_n(x, var), which gets us the first x rows of a dataset based on the value of var. The other is pull(), which allows us to extract a column and take out the name, leaving only the value(s) from the column.
# 
# For example, if we wanted to get, as a set of values, the top two mpg values from the classic mtcars dataset, we would write:
#   
#   mtcars %>%
#   top_n(2, mpg) %>%
#   pull(mpg)
# This gets us:
#   
#   [1] 32.4 33.9
# Instructions
# 100 XP
# Use top_n() to print out the 3 rows with the highest number of factor levels.
# Filtering for the variable CurrentJobTitleSelect, pull the number of levels it has.

# Select the 3 rows with the highest number of levels 
number_of_levels %>%
  top_n(3, num_levels)

number_of_levels %>%
  # filter for where variable equals CurrentJobTitleSelect
  filter(variable == "CurrentJobTitleSelect") %>%
  # pull num_levels
  pull(num_levels)