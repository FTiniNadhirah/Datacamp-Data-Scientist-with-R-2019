# Performing linear regression on each nested dataset
# Now that you've divided the data for each country into a separate dataset in the data column, you need to fit a linear model to each of these datasets.
# 
# The map() function from purrr works by applying a formula to each item in a list, where . represents the individual item. For example, you could add one to each of a list of numbers:
# 
# map(numbers, ~ 1 + .)
# This means that to fit a model to each dataset, you can do:
# 
# map(data, ~ lm(percent_yes ~ year, data = .))
# where . represents each individual item from the data column in by_year_country. Recall that each item in the data column is a dataset that pertains to a specific country.
# 
# Instructions
# 100 XP
# Load the tidyr and purrr packages.
# After nesting, use the map() function within a mutate() to perform a linear regression on each dataset (i.e. each item in the data column in by_year_country) modeling percent_yes as a function of year. Save the results to the model column.


# Load tidyr and purrr
library(tidyr)
library(purrr)

# Perform a linear regression on each item in the data column
by_year_country %>%
  group_by(country) %>%
  nest() %>%
  mutate(
    model = map(data, ~ lm(percent_yes ~ year, data = .))
  )
