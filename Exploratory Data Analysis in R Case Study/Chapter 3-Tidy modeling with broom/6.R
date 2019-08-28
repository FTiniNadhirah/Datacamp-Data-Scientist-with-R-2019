# Unnesting
# The opposite of the nest() operation is the unnest() operation. This takes each of the data frames in the list column and brings those rows back to the main data frame.
# 
# In this exercise, you are just undoing the nest() operation. In the next section, you'll learn how to fit a model in between these nesting and unnesting steps that makes this process useful.
# 
# Instructions
# 100 XP
# Unnest the data list column, so that the table again has one row for each country-year pair, much like by_year_country.
# 

# All countries are nested besides country
nested <- by_year_country %>%
  nest(-country)

# Unnest the data column to return it to its original form
nested %>%
  unnest()