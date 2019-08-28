# Filtering for one year
# The filter verb extracts particular observations based on a condition. In this exercise you'll filter for observations from a particular year.
# 
# Instructions
# 100 XP
# Add a filter() line after the pipe (%>%) to extract only the observations from the year 1957. Remember that you use == to compare two values.

library(gapminder)
library(dplyr)

# Filter the gapminder dataset for the year 1957
gapminder %>%
  filter(year == 1957)
