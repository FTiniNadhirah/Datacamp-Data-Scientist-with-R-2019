# Nesting a data frame
# Right now, the by_year_country data frame has one row per country-vote pair. So that you can model each country individually, you're going to "nest" all columns besides country, which will result in a data frame with one row per country. The data for each individual country will then be stored in a list column called data.
# 
# Instructions
# 100 XP
# Load the tidyr package.
# Use the nest() function to nest all the columns in by_year_country except country.

# Load the tidyr package
library(tidyr)
# Nest all columns besides country
by_year_country %>%
  nest(-country)